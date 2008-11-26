/**
  * Automne.blockText Extension Class for Automne.block
  * Add specific controls for text block
  * @class Automne.blockText
  * @extends Automne.block
  */
Automne.blockText = Ext.extend(Automne.block, {
	blockClass:	'CMS_block_text',
	stylesheet:	false,
	FCKTimer:	false,
	FCKEditor:	false,
	edit: function() {
		//create contener with all block edition elements
		var bd = Ext.get(this.document.body);
		var box = this.getBox();
		//set min size
		if (box.width < 170) {
			box.width = 170;
		}
		if (box.height < 100) {
			box.height = 100;
		}
		//check x-y position to avoid editor to exit frame
		var docbox = bd.getBox();
		if(box.x + box.width > docbox.width) {
			box.x = docbox.width - box.width - 5;
		}
		var cont = bd.createChild({cls: 'atm-edit-content atm-edit-text-content'});
		var tb = bd.createChild({id:'fcktoolbar'});
		cont.setVisibilityMode(Ext.Element.DISPLAY);
		cont.setStyle('position', 'absolute');
		cont.setDisplayed('block');
		cont.setBounds(box.x-1, box.y-1, box.width + 5, box.height + 26);
		var dh = Ext.DomHelper;
		var textCont = dh.append(cont, {tag:'div'}, true);
		textCont.setBounds(box.x, box.y, box.width, box.height);
		var ctrlCont = dh.append(cont, {tag:'div'}, true);
		var validateCtrl = dh.append(ctrlCont, {tag:'span', cls:'atm-block-control atm-block-control-validate'}, true);
		validateCtrl.setX(box.x + box.width - 42);
		validateCtrl.addClassOnOver('atm-block-control-validate-on');
		validateCtrl.dom.title = validateCtrl.dom.alt = Automne.locales.blockValidate;
		var cancelCtrl = dh.append(ctrlCont, {tag:'span', cls:'atm-block-control atm-block-control-cancel'}, true);
		cancelCtrl.setX(box.x + box.width - 22);
		cancelCtrl.addClassOnOver('atm-block-control-cancel-on');
		cancelCtrl.dom.title = cancelCtrl.dom.alt = Automne.locales.cancel;
		cont.show();
		//add resize handler
		var resizer = new Ext.Resizable(cont, {
			width:		box.width + 5,
			height:		box.height + 26,
			minWidth:	175,
			minHeight:	126,
			pinned:		true
		});
		resizer.on("resize", function(el, width, height, e){
			textCont.setWidth(width - 5);
			textCont.setHeight(height - 26);
			ctrlCont.setWidth(width - 5);
			validateCtrl.setX(ctrlCont.getX() + ctrlCont.getWidth() - 42);
			cancelCtrl.setX(ctrlCont.getX() + ctrlCont.getWidth() - 22);
		}, this);
		//if we do not have stylesheet for this block, create it
		if(!this.stylesheet) {
			var styleEl = dh.append(this.elements.first(), {tag:'div'}, true);
			styleEl.setVisibilityMode(Ext.Element.DISPLAY);
			styleEl.hide();
			var tagList = ['b', 'strong', 'i', 'em', {tag:'a', href:'/', html:'text'}, 'p', {tag:'ul', children:[{tag:'li'}]}, {tag:'ol', children:[{tag:'li'}]}, 'span', 'div', 'h1', 'h2', 'h3', 'h4', 'h5', 'h6', 'hr', 'img', 'small', 'abbr', 'acronym', 'blockquotes'];
			var elements = new Ext.CompositeElement([this.elements.first()]);
			for(var i = 0, tagLen = tagList.length; i < tagLen; i++) {
				if (typeof tagList[i] == 'string') {
					elements.add(dh.append(styleEl, {tag:tagList[i]}, true));
				} else {
					var el = dh.append(styleEl, tagList[i], true);
					elements.add(el);
					var els = el.select('*', true);
					els.each(function(el) {
						elements.add(el);
					});
				}
			}
			var stylesheet = '';
			elements.each(function(el, els, index) {
				var styles = el.getStyles(
					'font-size', 'color', 'font-family', 'font-weight', 'font-style',
					'padding-top', 'padding-left', 'padding-right', 'padding-bottom', 
					'margin-top', 'margin-left', 'margin-right', 'margin-bottom', 
					'background-color', 'background-image', 'background-position', 'background-repeat',
					'border-bottom-style', 'border-bottom-width', 'border-bottom-color', 
					'border-top-style', 'border-top-width', 'border-top-color', 
					'border-left-style', 'border-left-width', 'border-left-color', 
					'border-right-style', 'border-right-width', 'border-right-color', 
					'float', 'display',
					'text-align', 'text-decoration', 'vertical-align',
					'list-style', 'list-style-image', 'list-style-position', 'list-style-type'
				);
				if (!index) {
					stylesheet += 'body';
				} else {
					var tagLineage = '', parent = el;
					while (parent && parent.id != styleEl.id) {
						tagLineage = parent.dom.tagName.toLowerCase() +' '+ tagLineage;
						parent = parent.parent();
					}
					stylesheet += tagLineage;
				}
				stylesheet += '{\n';
				for (var styleName in styles) {
					if (styles[styleName]) {
						if (el.dom.tagName.toLowerCase() == 'a') {
							stylesheet += styleName+':'+styles[styleName]+' !important;\n'
						} else {
							stylesheet += styleName+':'+styles[styleName]+';\n'
						}
					}
				}
				stylesheet += '}\n';
			});
			//pr(stylesheet);
			//append some style for fckeditor
			stylesheet += '\n.ForceBaseFont {\n'+
			'	background-color:#FFFFFF;\n'+
			'}\n';
			this.stylesheet = stylesheet;
			styleEl.remove();
		}
		textCont.update(this.value.replace(/\{0\}/g, encodeURIComponent(this.stylesheet)));
		//set a timer on this function to wait until editor is fully loaded
		this.FCKTimer = new Ext.util.DelayedTask(function() {
			if (window.FCKeditorAPI && window.FCKeditorAPI.GetInstance) {
				this.FCKEditor = window.FCKeditorAPI.GetInstance('fck-' + this.row.rowTagID + '-' + this.id);
				if (!this.FCKEditor) {
					this.FCKTimer.delay(5);
					return;
				}
			} else {
				this.FCKTimer.delay(10);
				return;
			}
		}, this);
		this.FCKTimer.delay(10);
		//put click events on controls
		cancelCtrl.on('mousedown', this.stopEdition.createDelegate(this, [cancelCtrl, validateCtrl, ctrlCont, textCont, cont, tb]), this);
		validateCtrl.on('mousedown', this.validateEdition.createDelegate(this, [cancelCtrl, validateCtrl, ctrlCont, textCont, cont, tb]), this);
	},
	validateEdition: function(cancelCtrl, validateCtrl, ctrlCont, textCont, cont, tb) {
		//get new value from textarea
		if (this.FCKEditor) {
			this.value = this.FCKEditor.GetData();
			//send all datas to server to update block content and get new row HTML code
			Automne.server.call('page-content-controler.php', this.row.replaceContent, {
				action:			'update-block-text',
				cs:				this.row.clientspace.getId(),
				page:			this.row.clientspace.page,
				template:		this.row.template,
				rowType:		this.row.rowType,
				rowTag:			this.row.rowTagID,
				block:			this.getId(),
				blockClass:		this.blockClass,
				value:			this.value
			}, this.row);
		}
		//stop block edition
		this.stopEdition(cancelCtrl, validateCtrl, ctrlCont, textCont, cont, tb);
	},
	stopEdition: function(cancelCtrl, validateCtrl, ctrlCont, textCont, cont, tb) {
		this.endModify();
		var elements = new Ext.CompositeElement([cancelCtrl, validateCtrl, ctrlCont, textCont, cont, tb]);
		elements.removeAllListeners();
		elements.remove();
		delete elements;
	}
});