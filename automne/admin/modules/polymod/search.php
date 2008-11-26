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
// | Author: S�bastien Pauchet <sebastien.pauchet@ws-interactive.fr>      |
// +----------------------------------------------------------------------+
//
// $Id: search.php,v 1.1.1.1 2008/11/26 17:12:05 sebastien Exp $

/**
  * PHP page : Load polyobjects items datas
  * Used accross an Ajax request.
  * Return formated items infos in JSON format
  *
  * @package CMS
  * @subpackage admin
  * @author S�bastien Pauchet <sebastien.pauchet@ws-interactive.fr>
  */

require_once($_SERVER["DOCUMENT_ROOT"]."/cms_rc_admin.php");

//load interface instance
$view = CMS_view::getInstance();
//set default display mode for this page
$view->setDisplayMode(CMS_view::SHOW_JSON);

//get search vars
$objectId = sensitiveIO::request('objectId', 'sensitiveIO::isPositiveInteger');
$codename = sensitiveIO::request('module', CMS_modulesCatalog::getAllCodenames());
$search = sensitiveIO::request('search');
$sort = sensitiveIO::request('sort');
$dir = sensitiveIO::request('dir');
$start = sensitiveIO::request('start', 'sensitiveIO::isPositiveInteger', 0);
$limit = sensitiveIO::request('limit', 'sensitiveIO::isPositiveInteger', $_SESSION["cms_context"]->getRecordsPerPage());
$limitToItems = sensitiveIO::request('items');
if ($limitToItems) {
	$limitToItems = explode(',',$limitToItems);
}
//Some actions to do on items founded
$unlock = sensitiveIO::request('unlock') ? true : false;
$delete = sensitiveIO::request('del') ? true : false;
$undelete = sensitiveIO::request('undelete') ? true : false;

$itemsDatas = array();
$itemsDatas['results'] = array();

if (!$codename) {
	CMS_grandFather::raiseError('Unknown module ...');
	$view->show();
}
//load module
$module = CMS_modulesCatalog::getByCodename($codename);
if (!$module || !$module->isPolymod()) {
	CMS_grandFather::raiseError('Unknown module or module is not polymod for codename : '.$codename);
	$view->setContent($itemsDatas);
	$view->show();
}
//CHECKS user has module clearance
if (!$cms_user->hasModuleClearance($codename, CLEARANCE_MODULE_EDIT)) {
	CMS_grandFather::raiseError('User has no rights on module : '.$codename);
	$view->setActionMessage($cms_message->getmessage(MESSAGE_ERROR_MODULE_RIGHTS, array($module->getLabel($cms_language))));
	$view->setContent($itemsDatas);
	$view->show();
}
//CHECKS objectId
if (!$objectId) {
	CMS_grandFather::raiseError('Missing objectId to search in module '.$codename);
	$view->setContent($itemsDatas);
	$view->show();
}

//load current object definition
$object = new CMS_poly_object_definition($objectId);
// Check if need to use a specific display for search results
$resultsDefinition = $object->getValue('resultsDefinition');

//load fields objects for object
$objectFields = CMS_poly_object_catalog::getFieldsDefinition($object->getID());

//get all search datas from requests
$keywords = sensitiveIO::request('items_'.$object->getID().'_kwrds', '', $_SESSION["cms_context"]->getSessionVar('items_'.$object->getID().'_kwrds'));
$dateFrom = sensitiveIO::request('items_dtfrm', '', $_SESSION["cms_context"]->getSessionVar('items_dtfrm'));
$dateEnd = sensitiveIO::request('items_dtnd', '', $_SESSION["cms_context"]->getSessionVar('items_dtnd'));
$sort = sensitiveIO::request('sort_'.$object->getID(), '', $_SESSION["cms_context"]->getSessionVar('sort_'.$object->getID()));
$direction = sensitiveIO::request('direction_'.$object->getID(), '', $_SESSION["cms_context"]->getSessionVar('direction_'.$object->getID()));
//Add all subobjects to search if any
$fields = array();
foreach ($objectFields as $fieldID => $field) {
	if (isset($_REQUEST['items_'.$object->getID().'_'.$fieldID])) {
		$fields[$fieldID] = sensitiveIO::request('items_'.$object->getID().'_'.$fieldID, '', $_SESSION["cms_context"]->getSessionVar('items_'.$object->getID().'_'.$fieldID));
	}
}

// Set default session search options

//reset page number
//$_SESSION["cms_context"]->setBookmark(1);
//add search options
$_SESSION["cms_context"]->setSessionVar('items_'.$object->getID().'_kwrds', $keywords);
$_SESSION["cms_context"]->setSessionVar("items_dtfrm", $dateFrom);
$_SESSION["cms_context"]->setSessionVar("items_dtnd", $dateEnd);
$_SESSION["cms_context"]->setSessionVar('sort_'.$object->getID(), $sort);
$_SESSION["cms_context"]->setSessionVar('direction_'.$object->getID(), $direction);
//Add all subobjects to search if any
foreach ($objectFields as $fieldID => $field) {
	if (isset($fields[$fieldID])) {
		$_SESSION["cms_context"]->setSessionVar('items_'.$object->getID().'_'.$fieldID, $fields[$fieldID]);
	}
}

// Date format
$dateFormat = $cms_language->getDateFormat(); 		// d/m/Y

// +----------------------------------------------------------------------+
// | Build search                                                         |
// +----------------------------------------------------------------------+

//create search object for current object
$search = new CMS_object_search($object);

//if object is a primary resource
if ($object->isPrimaryResource()) {
	//Order
	$search->setAttribute('orderBy', 'publicationDateStart_rs desc,publicationDateEnd_rs desc, id_moo desc');
	
	// Param : Around publication date
	$dt_today = new CMS_date();
	$dt_today->setDebug(false);
	$dt_today->setNow();
	$dt_today->setFormat($dateFormat);
	
	$dt_from = new CMS_date();
	$dt_from->setDebug(false);
	$dt_from->setFormat($dateFormat);
	if ($dt_from->setLocalizedDate($_SESSION["cms_context"]->getSessionVar("items_dtfrm"),true)) {
		$search->addWhereCondition("publication date after", $dt_from);
	}
	
	$dt_end = new CMS_date();
	$dt_end->setDebug(false);
	$dt_end->setFormat($dateFormat);
	if ($dt_end->setLocalizedDate($_SESSION["cms_context"]->getSessionVar("items_dtnd"),true)) {
		// Check this date isn't greater than start date given
		if (!CMS_date::compare($dt_from, $dt_end, ">=")) {
			$search->addWhereCondition("publication date before", $dt_end);
		}
	}
}
//Add all subobjects to search if any
foreach ($objectFields as $fieldID => $field) {
	//if field is a poly object
	if ($_SESSION["cms_context"]->getSessionVar('items_'.$object->getID().'_'.$fieldID) != '') {
		$search->addWhereCondition($fieldID, $_SESSION["cms_context"]->getSessionVar('items_'.$object->getID().'_'.$fieldID));
	}
}
// Param : With keywords (this is best if it is done at last)
if ($_SESSION["cms_context"]->getSessionVar('items_'.$object->getID().'_kwrds') != '') {
	$search->addWhereCondition("keywords", $_SESSION["cms_context"]->getSessionVar('items_'.$object->getID().'_kwrds'));
}

//If we must limit to some specific items (usually used during refresh of some listing elements
if ($limitToItems) {
	$search->addWhereCondition("items", $limitToItems);
}

// Params : paginate limit
$search->setAttribute('itemsPerPage', $limit);
$search->setAttribute('page', ($start / $limit));

// Params : set default direction direction
if(!$_SESSION["cms_context"]->getSessionVar('direction_'.$object->getID())){
	$_SESSION["cms_context"]->setSessionVar('direction_'.$object->getID(), 'desc');
}

// Params : order
if($_SESSION["cms_context"]->getSessionVar('sort_'.$object->getID())){
	$search->addOrderCondition($_SESSION["cms_context"]->getSessionVar('sort_'.$object->getID()),$_SESSION["cms_context"]->getSessionVar('direction_'.$object->getID()));
} else {
	$search->addOrderCondition('objectID', $_SESSION["cms_context"]->getSessionVar('direction_'.$object->getID()));
}
$items = $search->search();

// Vars for lists output purpose and pages display, see further
$itemsDatas['total'] = $search->getNumRows();

//Get parsed result definition
if ($resultsDefinition) {
	$definitionParsing = new CMS_polymod_definition_parsing($resultsDefinition, true, CMS_polymod_definition_parsing::PARSE_MODE);
	// Add specific css if we use the resultsDefinition
	if (file_exists(PATH_CSS_FS.'/modules/'.$codename.'.css')) {
		$itemsDatas['css'] = PATH_CSS_WR.'/modules/'.$codename.'.css';
	}
	// Add specific js if we use the resultsDefinition
	if (file_exists(PATH_JS_FS.'/modules/'.$codename.'.css')) {
		$itemsDatas['js'] = PATH_JS_WR.'/modules/'.$codename.'.js';
	}
}
//loop on results items
foreach ($items as $item) {
	//Process actions on item if any
	
	//Unlock item
	if ($unlock && $object->isPrimaryResource()) {
		$item->unlock();
	}
	//Delete item
	if ($delete) {
		$item->delete();
		if (!$object->isPrimaryResource()) {
			unset($item);
			$itemsDatas['total']--;
			continue;
		}
	}
	//Undelete item
	if ($undelete && $object->isPrimaryResource()) {
		$item->undelete();
	}
	
	//Resource related informations
	$htmlStatus = $pubRange = '';
	$lock = $deleted = false;
	if ($object->isPrimaryResource()) {
		$status = $item->getStatus();
		if (is_object($status)) {
			$htmlStatus = $status->getHTML(false, $cms_user, $codename, $item->getID());
			$pubRange = $status->getPublicationRange($cms_language);
			$lock = $item->getLock();
			$deleted = ($item->getProposedLocation() == RESOURCE_LOCATION_DELETED);
		}
	}
	//Previz
	$previz = ($object->getValue("previewURL")) ? $item->getPrevizPageURL() : '';
	//Edit
	$edit = false;
	if (!$deleted && (!$lock || $lock == $cms_user->getUserId())) {
		$edit = array(
			'module'		=> $codename,
			'objectId'		=> $objectId,
			'item'			=> $item->getID()
		);
	}
	
	//HTML description
	$description = POLYMOD_DEBUG ? '<span class="atm-text-alert"> (ID : '.$item->getID().')</span>' : '';
	if($resultsDefinition){
		//set execution parameters
		$parameters = array();
		$parameters['module'] 	= $codename;
		$parameters['objectID'] = $object->getID();
		$parameters['public'] 	= false;
		$parameters['item']		= $item;
		$description .= $definitionParsing->getContent(CMS_polymod_definition_parsing::OUTPUT_RESULT, $parameters);
	} else {
		$itemFieldsObjects = $item->getFieldsObjects();
		//Add all needed fields to description
		foreach ($itemFieldsObjects as $fieldID => $itemField) {
			//if field is a poly object
			if ($objectFields[$fieldID]->getValue('searchlist')) {
				$description .= $objectFields[$fieldID]->getLabel($cms_language).' : <strong>'.$itemField->getHTMLDescription().'</strong><br />';
			}
		}
	}
	
	$itemsDatas['results'][] = array(
		'id'			=> $item->getID(),
		'status'		=> $htmlStatus,
		'pubrange'		=> $pubRange,
		'label'			=> $item->getLabel(),
		'description'	=> $description,
		'locked'		=> $lock,
		'deleted'		=> $deleted,
		'previz'		=> $previz,
		'edit'			=> $edit,
	);
}

$view->setContent($itemsDatas);
$view->show();
?>