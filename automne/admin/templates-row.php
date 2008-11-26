<?php
/* vim: set expandtab tabstop=4 shiftwidth=4: */
// +----------------------------------------------------------------------+
// | Automne (TM)														  |
// +----------------------------------------------------------------------+
// | Copyright (c) 2000-2009 WS Interactive								  |
// +----------------------------------------------------------------------+
// | Automne is subject to version 2.0 or above of the GPL license.		  |
// | The license text is bundled with this package in the file			  |
// | LICENSE-GPL, and is available through the world-wide-web at		  |
// | http://www.gnu.org/copyleft/gpl.html.								  |
// +----------------------------------------------------------------------+
// | Author: S�bastien Pauchet <sebastien.pauchet@ws-interactive.fr>	  |
// +----------------------------------------------------------------------+
//
// $Id: templates-row.php,v 1.1.1.1 2008/11/26 17:12:05 sebastien Exp $

/**
  * PHP page : Load page rows search window.
  * Used accross an Ajax request.
  *
  * @package CMS
  * @subpackage admin
  * @author S�bastien Pauchet <sebastien.pauchet@ws-interactive.fr>
  */

require_once($_SERVER["DOCUMENT_ROOT"]."/cms_rc_admin.php");

//Standard messages
define("MESSAGE_TOOLBAR_HELP",1073);
define("MESSAGE_PAGE_MODIFY", 938);
define("MESSAGE_PAGE_DELETE", 252);
define("MESSAGE_PAGE_NEW", 262);
define("MESSAGE_PAGE_RESULTS_COUNT", 586);
define("MESSAGE_PAGE_NORESULTS", 579);
define("MESSAGE_PAGE_RESULTS", 575);
define("MESSAGE_PAGE_X_OBJECTS_OF_Y", 584);
define("MESSAGE_ACTION_DELETE_SELECTED", 585);
define("MESSAGE_ACTION_ACTIVATE_SELECTED", 587);
define("MESSAGE_ACTION_DESACTIVATE_SELECTED", 588);
define("MESSAGE_ACTION_EDIT_SELECTED", 589);
define("MESSAGE_ACTION_CREATE_SELECTED", 590);

//load interface instance
$view = CMS_view::getInstance();
//set default display mode for this page
$view->setDisplayMode(CMS_view::SHOW_RAW);

$winId = sensitiveIO::request('winId');
$fatherId = sensitiveIO::request('fatherId');

if (!$winId) {
	CMS_grandFather::raiseError('Unknown window Id ...');
	$view->show();
}

//CHECKS user has row edition clearance
if (!$cms_user->hasAdminClearance(CLEARANCE_ADMINISTRATION_TEMPLATES)) { //rows
	CMS_grandFather::raiseError('User has no rights on rows editions');
	$view->setActionMessage('Vous n\'avez pas le droit de g�rer les mod�les de rang�es ...');
	$view->show();
}

//usefull vars
$recordsPerPage = $_SESSION["cms_context"]->getRecordsPerPage();

//
// Search Panel
//
$searchPanel = '';
// Keywords
$searchPanel .= "{
	fieldLabel:		'Par nom, description',
	xtype:			'textfield',
	name: 			'keyword',
	value:			'',
	minLength:		3,
	anchor:			'100%',
	validateOnBlur:	false,
	listeners:		{'valid':{
		fn: 			rowWindow.search,
		options:		{buffer:300}
	}}
},";
$allGroups = CMS_rowsCatalog::getAllGroups();
if ($allGroups) {
	$columns = sizeof($allGroups) < 3 ? sizeof($allGroups) : 3;
	$searchPanel .= "{
		xtype: 		'checkboxgroup',
		fieldLabel: 'Groupes',
		columns: 	{$columns},
		items: [";
		foreach ($allGroups as $aGroup) {
			$searchPanel .= "{boxLabel: '{$aGroup}', inputValue:'{$aGroup}', name: 'groups[]', listeners: {'check':rowWindow.search}},";
		}
		//remove last comma from groups
		$searchPanel = substr($searchPanel, 0, -1);
		$searchPanel .= "
		]
	},";
}
$searchPanel .= "{
	xtype:			'atmPageField',
	fieldLabel:		'Page',
	name:			'page',
	value:			'',
	allowBlank:		true,
	validateOnBlur:	false,
	listeners:		{'valid':{
		fn: 			rowWindow.search,
		options:		{buffer:300}
	}}
},{
	hideLabel:		true,
	labelSeparator:	'',
	labelAlign:		'left',
	xtype:			'checkbox',
	boxLabel: 		'Voir les rang�es inactives',
	name: 			'viewinactive',
	inputValue:		'1',
	listeners: 		{'check':rowWindow.search}
}";
//$searchPanel = substr($searchPanel, 0, -1);
$jscontent = <<<END
	var rowWindow = Ext.getCmp('{$winId}');
	var fatherWindow = Ext.getCmp('{$fatherId}');

	//define update function into window (to be accessible by parent window)
	rowWindow.update = function() {
		//reload search
		rowWindow.search();
	}
	//define search function into window (to be accessible by parent window)
	rowWindow.search = function() {
		if (!rowWindow.ok) {
			return;
		}
		var form = Ext.getCmp('{$winId}Search').getForm();
		var values = Ext.applyIf(form.getValues(), {
			start:			0,
			limit:			{$recordsPerPage}
		});
		resultsPanel.currPage = 0;
		resultsPanel.body.scrollTo('top', 0, false);
		store.baseParams = values;
		resultsPanel.body.mask('Chargement ...');
		store.load({
			params:			values,
			add:			false,
			callback:		function() {
				resultsPanel.body.unmask();
			},
			scope:			this
		});
	}
	//update some objects into store. Eventually, do some actions on then (unlock, delete, undelete)
	var refresh = function(ids, actions) {
		actions = actions || {};
		var form = Ext.getCmp('{$winId}Search').getForm();
		var viewinactive = form.getValues().viewinactive;
		
		//call server for queried node lineage
		Automne.server.call({
			url:			'page-rows-datas.php',
			scope:			this,
			fcnCallback:	function(response, options, jsonResponse){
				var updatedItems = (options.params.items) ? options.params.items.split(/,/) : [];
				//unselect all
				resultsPanel.dv.clearSelections();
				//update store
				for(var i = 0; i < jsonResponse.total; i++) {
					var data = jsonResponse.results[i];
					var record = store.getById(data.id);
					if (record) {
						//update record values
						record.beginEdit();
						for(var name in data) {
							record.set(name, data[name]);
						}
						record.endEdit();
						//remove object from items to update
						updatedItems.remove(data.id);
					}
				}
				var updatedLen = updatedItems.length;
				for(var i = 0; i < updatedLen; i++) {
					store.remove(store.getById(updatedItems[i]));
				}
				store.commitChanges();
			},
			params:			Ext.apply ({
				items:			ids.join(','),
				viewinactive:	viewinactive
			}, actions)
		});
	}

	var searchPanel = new Ext.form.FormPanel({
		id: 			'{$winId}Search',
		region:			'west',
		title:			'Filtrer',
		xtype:			'form',
		width:			300,
		minSize:		200,
		maxSize:		400,
		collapsible:	true,
		split:			true,
		border:			false,
		labelAlign: 	'top',
		bodyStyle: {
			padding: 		'5px'
		},
		keys: {
			key: 			Ext.EventObject.ENTER,
			scope:			this,
			handler:		rowWindow.search
		},
		items:[{$searchPanel}]
	});

	var objectsWindows = [];
	var selectedObjects = [];

	// Results store
	var store = new Automne.JsonStore({
		root:			'results',
		totalProperty:	'total',
		url:			'page-rows-datas.php',
		id:				'id',
		remoteSort:		true,
		fields:			['id', 'name', 'description', 'groups', 'templates', 'activated', 'image', 'used'],
		listeners:		{
			'load': 		{fn:function(store, records, options){
				//Update results title
				if (store.getTotalCount()) {
					var start = (options.params && options.params.start) ? options.params.start : 0;
					if (store.getTotalCount() < (start + {$recordsPerPage})) {
						var resultCount = store.getTotalCount();
					} else {
						var resultCount = start + {$recordsPerPage};
					}
					resultsPanel.setTitle(String.format('{$cms_language->getJSMessage(MESSAGE_PAGE_RESULTS_COUNT)}', resultCount, store.getTotalCount()));
				} else {
					resultsPanel.setTitle('{$cms_language->getJSMessage(MESSAGE_PAGE_NORESULTS)}');
				}
			}},
			scope : this
		}
	});

	var resultTpl = new Ext.XTemplate(
	'<tpl for=".">',
	'	<div class="atm-result x-unselectable" id="object-{id}">',
	'		<div class="atm-title">{name}</div>',
	'		<div class="atm-description">{description}</div>',
	'	</div>',
	'</tpl>');
	resultTpl.compile();

	var resultsPanel = new Ext.ux.LiveDataPanel({
		title: 				'{$cms_language->getJSMessage(MESSAGE_PAGE_RESULTS)}',
		cls:				'atm-results',
		collapsible:		false,
		region:				'center',
		border:				false,
		loadingIndicatorTxt:'{$cms_language->getJSMessage(MESSAGE_PAGE_X_OBJECTS_OF_Y)}',
		limit:				{$recordsPerPage},
		itemSelector:		'div.atm-result',
		tpl: 				resultTpl,
		store:				store,
		dataView:			{
			overClass:			'x-view-over',
			multiSelect:		true
		},
		tbar:[{
			id:			'{$winId}editItem',
			xtype:		'button',
			text:		'{$cms_language->getJSMessage(MESSAGE_PAGE_MODIFY)}',
			handler:	function(button) {
				var selectLen = selectedObjects.length;
				for (var i = 0; i < selectLen; i++) {
					var rowId = selectedObjects[i];
					var windowId = 'rowEditWindow'+rowId;
					if (objectsWindows[windowId]) {
						Ext.WindowMgr.bringToFront(objectsWindows[windowId]);
					} else {
						//create window element
						objectsWindows[windowId] = new Automne.Window({
							id:				windowId,
							modal:			false,
							father:			fatherWindow,
							autoLoad:		{
								url:			'row.php',
								params:			{
									winId:			windowId,
									row:			rowId
								},
								nocache:		true,
								scope:			this
							},
							listeners:{'close':function(window){
								//unlock and refresh object panel in list
								refresh([window.objectId]);
								//delete window from list
								delete objectsWindows[window.id];
							}}
						});

						//display window
						objectsWindows[windowId].show(button.getEl());
					}
				}
			},
			scope:		this,
			disabled:	true
		},{
			id:			'{$winId}activateItem',
			xtype:		'button',
			text:		'Activer',
			handler:	function(button) {
				refresh(selectedObjects, {activate:true});
			},
			scope:		resultsPanel,
			disabled:	true
		},{
			id:			'{$winId}desactivateItem',
			xtype:		'button',
			text:		'D�sactiver',
			handler:	function(button) {
				refresh(selectedObjects, {desactivate:true});
			},
			scope:		resultsPanel,
			disabled:	true
		},{
			id:			'{$winId}deleteItem',
			xtype:		'button',
			text:		'{$cms_language->getJSMessage(MESSAGE_PAGE_DELETE)}',
			handler:	function(button) {
				refresh(selectedObjects, {del:true});
			},
			scope:		resultsPanel,
			disabled:	true
		}, '->', {
			id:			'{$winId}createItem',
			xtype:		'button',
			text:		'{$cms_language->getJSMessage(MESSAGE_PAGE_NEW)}',
			handler:	function(button) {
				var windowId = 'rowCreateWindow';
				if (objectsWindows[windowId]) {
					Ext.WindowMgr.bringToFront(objectsWindows[windowId]);
				} else {
					//create window element
					objectsWindows[windowId] = new Automne.Window({
						id:				windowId,
						modal:			false,
						father:			fatherWindow,
						autoLoad:		{
							url:			'row.php',
							params:			{
								winId:			windowId
							},
							nocache:		true,
							scope:			this
						},
						listeners:{'close':function(window){
							//delete window from list
							delete objectsWindows[window.id];
							//refresh search list
							rowWindow.search();
						}}
					});

					//display window
					objectsWindows[windowId].show(button.getEl());
				}
			},
			scope:		resultsPanel
		}]
	});
	rowWindow.add(resultsPanel);
	rowWindow.add(searchPanel);
	
	//redo windows layout
	rowWindow.doLayout();
	
	//set resize event to resize inner panels (needed for IE)
	rowWindow.on('resize', function() {
		resultsPanel.syncSize();
		searchPanel.syncSize();
	});
	
	//this flag is needed, because form construction, launch multiple search queries before complete page construct so we check in rowWindow.search if construction is ok
	rowWindow.ok = true;
	//launch search
	rowWindow.search();

	//add selection events to selection model
	var qtips = [];
	qtips['delete'] = new Ext.ToolTip({
		target: 		Ext.getCmp('{$winId}deleteItem').getEl(),
		html: 			'{$cms_language->getJSMessage(MESSAGE_ACTION_DELETE_SELECTED)}'
	});
	qtips['activate'] = new Ext.ToolTip({
		target: 		Ext.getCmp('{$winId}activateItem').getEl(),
		html: 			'{$cms_language->getJSMessage(MESSAGE_ACTION_ACTIVATE_SELECTED)}'
	});
	qtips['desactivate'] = new Ext.ToolTip({
		target: 		Ext.getCmp('{$winId}desactivateItem').getEl(),
		html: 			'{$cms_language->getJSMessage(MESSAGE_ACTION_DESACTIVATE_SELECTED)}'
	});
	qtips['edit'] = new Ext.ToolTip({
		target: 		Ext.getCmp('{$winId}editItem').getEl(),
		html: 			'{$cms_language->getJSMessage(MESSAGE_ACTION_EDIT_SELECTED)}'
	});
	qtips['create'] = new Ext.ToolTip({
		target: 		Ext.getCmp('{$winId}createItem').getEl(),
		html: 			'{$cms_language->getJSMessage(MESSAGE_ACTION_CREATE_SELECTED)}'
	});

	resultsPanel.dv.on('selectionchange', function(dv, selections){
		selectedObjects = [];
		var selectLen = selections.length;
		for (var i = 0; i < selectLen; i++) {
			selectedObjects[selectedObjects.length] = selections[i].id.substr(7);
		}
		//check for options in common for all objects
		var hasDelete = true, hasActivate = true, hasDesactivate = true;
		for (var i = 0; i < selectLen; i++) {
			var datas = store.getById(selectedObjects[i]).data;
			//delete
			if (datas.used) {
				hasDelete = false;
			}
			//desactivate / activate
			if (datas.activated) {
				hasActivate = false;
			} else {
				hasDesactivate = false;
			}
		}
		if (!selectLen) { //if no row selected, disable all buttons
			Ext.getCmp('{$winId}editItem').disable();
			Ext.getCmp('{$winId}deleteItem').disable();
			Ext.getCmp('{$winId}activateItem').disable();
			Ext.getCmp('{$winId}desactivateItem').disable();
		} else { //enable / disable buttons allowed by selection
			Ext.getCmp('{$winId}editItem').enable();
			Ext.getCmp('{$winId}deleteItem').setDisabled(!hasDelete);
			Ext.getCmp('{$winId}activateItem').setDisabled(!hasActivate);
			Ext.getCmp('{$winId}desactivateItem').setDisabled(!hasDesactivate);
		}
	}, this);
	//highlight node update after dv update
	store.on('update', function(store, record, operation, node){
		if (operation == 'update-data-view') {
			Ext.fly(node).select('*').highlight("C3CD31", {duration: 1});
		}
	});
END;
$view->addJavascript($jscontent);
$view->show();
?>