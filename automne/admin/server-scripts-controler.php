<?php
// +----------------------------------------------------------------------+
// | Automne (TM)														  |
// +----------------------------------------------------------------------+
// | Copyright (c) 2000-2010 WS Interactive								  |
// +----------------------------------------------------------------------+
// | Automne is subject to version 2.0 or above of the GPL license.		  |
// | The license text is bundled with this package in the file			  |
// | LICENSE-GPL, and is available through the world-wide-web at		  |
// | http://www.gnu.org/copyleft/gpl.html.								  |
// +----------------------------------------------------------------------+
// | Author: S�bastien Pauchet <sebastien.pauchet@ws-interactive.fr>	  |
// +----------------------------------------------------------------------+
//
// $Id: server-scripts-controler.php,v 1.6 2010/03/08 16:41:21 sebastien Exp $

/**
  * PHP controler : Receive actions on server
  * Used accross an Ajax request to process one server action
  * 
  * @package CMS
  * @subpackage admin
  * @author S�bastien Pauchet <sebastien.pauchet@ws-interactive.fr>
  */

require_once($_SERVER["DOCUMENT_ROOT"]."/cms_rc_admin.php");

//Controler vars
$action = sensitiveIO::request('action', array('regenerate-all', 'regenerate-tree', 'regenerate-pages', 'restart-scripts', 'stop-scripts', 'clear-scripts'));
$page = sensitiveIO::request('page', 'sensitiveIO::isPositiveInteger');
$pages = sensitiveIO::request('pages');

define("MESSAGE_PAGE_NO_SCRIPTS_RIGHTS", 794);
define("MESSAGE_ACTION_ALL_PAGES_SUBMITED", 795);
define("MESSAGE_ACTION_N_PAGES_SUBMITED", 796);
define("MESSAGE_ACTION_N_PAGES_REGENERATED", 797);
define("MESSAGE_ERROR_NO_PAGES_FOUNDED", 798);

//load interface instance
$view = CMS_view::getInstance();
//set default display mode for this page
$view->setDisplayMode(CMS_view::SHOW_RAW);
//This file is an admin file. Interface must be secure
$view->setSecure();

//CHECKS user has scripts admin clearance
if (!$cms_user->hasAdminClearance(CLEARANCE_ADMINISTRATION_REGENERATEPAGES)) {
	CMS_grandFather::raiseError('User has no regeneration rights');
	$view->setActionMessage($cms_language->getMessage(MESSAGE_PAGE_NO_SCRIPTS_RIGHTS));
	$view->show();
}

$cms_message = '';
$content = '';

switch ($action) {
	case 'regenerate-all':
		//give it more time
		@set_time_limit(1000);
		CMS_tree::regenerateAllPages(true);
		$cms_message = $cms_language->getMessage(MESSAGE_ACTION_OPERATION_DONE).' : '.$cms_language->getMessage(MESSAGE_ACTION_ALL_PAGES_SUBMITED);
	break;
	case 'regenerate-tree':
		if ($page) {
			$pages = CMS_tree::getAllSiblings($page, true);
			if (sizeof($pages) > 3) {
				//submit pages to regenerator
				$validPages = CMS_tree::pagesExistsInUserSpace($pages);
				CMS_tree::submitToRegenerator($validPages, true);
				$cms_message = $cms_language->getMessage(MESSAGE_ACTION_OPERATION_DONE).' : '.$cms_language->getMessage(MESSAGE_ACTION_N_PAGES_SUBMITED, array(sizeof($validPages)));
			} else {
				//regenerate pages
				@set_time_limit(1000);
				$validPages = CMS_tree::pagesExistsInUserSpace($pages);
				foreach ($validPages as $pageID) {
					$pg = CMS_tree::getPageByID($pageID);
					if (is_a($pg, 'CMS_page') && !$pg->hasError()) {
					    $pg->regenerate(true);
					}
				}
				$cms_message = $cms_language->getMessage(MESSAGE_ACTION_OPERATION_DONE).' : '.$cms_language->getMessage(MESSAGE_ACTION_N_PAGES_REGENERATED, array(sizeof($validPages)));
			}
		}
	break;
	case 'regenerate-pages':
		if ($pages) {
			$tmpPages = preg_split('#[ ;,]#', $pages);
			$pages = array();
			foreach ($tmpPages as $p) {
				$p=trim($p);
				if (SensitiveIO::isPositiveInteger($p)) {
					$pages[] = $p;		
				} elseif (preg_match("#[0-9]+\-[0-9]+#", $p)) {
					$subPages = split('-', $p);
					sort($subPages);
					for ($idp = $subPages[0]; $idp <= $subPages[1]; $idp++) {
						$pages[] = $idp;
					}
				}
			}
			$pages = array_unique($pages);
			sort($pages);
			if (sizeof($pages)) {
				$validPages = CMS_tree::pagesExistsInUserSpace($pages);
				if (sizeof($validPages)) {
					if (sizeof($validPages) > 3) {
						//submit pages to regenerator
						CMS_tree::submitToRegenerator($validPages, true);
						$cms_message = $cms_language->getMessage(MESSAGE_ACTION_OPERATION_DONE).' : '.$cms_language->getMessage(MESSAGE_ACTION_N_PAGES_SUBMITED, array(sizeof($validPages)));
					} else {
						//regenerate pages
						@set_time_limit(1000);
						foreach ($validPages as $pageID) {
							$pg = CMS_tree::getPageByID($pageID);
							if (is_a($pg, 'CMS_page') && !$pg->hasError()) {
							    $pg->regenerate(true);
							}
						}
						$cms_message = $cms_language->getMessage(MESSAGE_ACTION_OPERATION_DONE).' : '.$cms_language->getMessage(MESSAGE_ACTION_N_PAGES_REGENERATED, array(sizeof($validPages)));
					}
				} else {
					$cms_message = $cms_language->getMessage(MESSAGE_ERROR_NO_PAGES_FOUNDED);
				}
			}
		}
	break;
	case 'restart-scripts':
		CMS_scriptsManager::startScript(true);
		$cms_message = $cms_language->getMessage(MESSAGE_ACTION_OPERATION_DONE);
	break;
	case 'stop-scripts':
		CMS_scriptsManager::clearScripts();
		CMS_scriptsManager::startScript(true);
		$cms_message = $cms_language->getMessage(MESSAGE_ACTION_OPERATION_DONE);
	break;
	case 'clear-scripts':
		CMS_scriptsManager::clearScripts();
		$cms_message = $cms_language->getMessage(MESSAGE_ACTION_OPERATION_DONE);
	break;
	default:
		CMS_grandFather::raiseError('Unknown action to do ...');
		$view->show();
	break;
}

//set user message if any
if ($cms_message) {
	$view->setActionMessage($cms_message);
}
if ($content) {
	$view->setContent($content);
}
$view->show();
?>