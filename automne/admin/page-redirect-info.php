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
// | Author: S�bastien Pauchet <sebastien.pauchet@ws-interactive.fr>      |
// +----------------------------------------------------------------------+
//
// $Id: page-redirect-info.php,v 1.10 2010/03/08 16:41:20 sebastien Exp $

/**
  * PHP page : Redirection page info
  * Return info on page redirection
  *
  * @package CMS
  * @subpackage admin
  * @author S�bastien Pauchet <sebastien.pauchet@ws-interactive.fr>
  */

require_once($_SERVER["DOCUMENT_ROOT"]."/cms_rc_admin.php");

define("MESSAGE_PAGE_REDIRECT", 320);
define("MESSAGE_PAGE_PAGE", 1303);
define("MESSAGE_PAGE_PAGE_REDIRECT_ERROR", 703);

//load interface instance
$view = CMS_view::getInstance();
$view->addCSSFile('main');
$view->addCSSFile('info');

if (isset($_GET['pageId']) && sensitiveIO::isPositiveInteger($_GET['pageId'])) {
	$page = CMS_tree::getPageById($_GET['pageId']);
}
if (isset($page) && !$page->hasError()) {
	$redirect = '';
	$redirectlink = $page->getRedirectLink(true);
	if ($redirectlink->hasValidHREF()) {
		if ($redirectlink->getLinkType() == RESOURCE_LINK_TYPE_INTERNAL) {
			$redirectPage = new CMS_page($redirectlink->getInternalLink());
			if (!$redirectPage->hasError()) {
				$label = $cms_language->getMessage(MESSAGE_PAGE_PAGE).' "'.$redirectPage->getTitle().'" ('.$redirectPage->getID().')';
			}
			$redirect = '<a href="'.$redirectPage->getURL(false, false, PATH_RELATIVETO_WEBROOT, true).'">'.io::htmlspecialchars($label).'</a>';
		} else {
			$label = $redirectlink->getExternalLink();
			$redirectlink->setTarget('_blank');
			$redirect = $redirectlink->getHTML($label, MOD_STANDARD_CODENAME, RESOURCE_DATA_LOCATION_EDITED);
		}
	} else {
		$label = $cms_language->getMessage(MESSAGE_PAGE_PAGE).' "'.$page->getTitle().'" ('.$page->getID().')';
		$redirect = '<a href="'.$page->getURL(false, false, PATH_RELATIVETO_WEBROOT, true).'">'.io::htmlspecialchars($label).'</a>';
	}
	$content = '
	<div id="atm-center">
		<div class="atm-alert">'.$cms_language->getMessage(MESSAGE_PAGE_REDIRECT, array($redirect)).'</div>
	</div>';
} else if (isset($_GET['url'])) {
	$url = urldecode($_GET['url']);
	if ($page = CMS_tree::analyseURL($url)) {
		$label = $cms_language->getMessage(MESSAGE_PAGE_PAGE).' "'.$page->getTitle().'" ('.$page->getID().')';
		$redirect = '<a href="'.$page->getURL(false, false, PATH_RELATIVETO_WEBROOT, true).'">'.io::htmlspecialchars($label).'</a>';
	} else {
		$redirect = '<a href="'.$url.'" target="_blank">'.io::htmlspecialchars($url).'</a>';
	}
	$content = '
	<div id="atm-center">
		<div class="atm-alert">'.$cms_language->getMessage(MESSAGE_PAGE_REDIRECT, array($redirect)).'</div>
	</div>';
} else {
	$content = '
	<div id="atm-center">
		<div class="atm-alert">'.$cms_language->getMessage(MESSAGE_PAGE_PAGE_REDIRECT_ERROR).'</div>
	</div>';
}
$view->setContent($content);
$view->show(CMS_view::SHOW_HTML);
?>