<?php //Generated on Tue, 17 Nov 2009 17:11:52 +0100 by Automne (TM) 4.0.0rc3
if (!isset($cms_page_included) && !$_POST && !$_GET) {
	header('HTTP/1.x 301 Moved Permanently', true, 301);
	header('Location: http://127.0.0.1/web/demo/print-2-accueil.php');
	exit;
}
require_once($_SERVER["DOCUMENT_ROOT"]."/cms_rc_frontend.php");
 ?>
<?php require_once($_SERVER["DOCUMENT_ROOT"].'/automne/classes/polymodFrontEnd.php');  ?><?php if (defined('APPLICATION_XHTML_DTD')) echo APPLICATION_XHTML_DTD."\n";   ?>
<html xmlns="http://www.w3.org/1999/xhtml" lang="fr">
<head>
	<?php echo '<meta http-equiv="Content-Type" content="text/html; charset='.strtoupper(APPLICATION_DEFAULT_ENCODING).'" />';    ?>
	<title>Automne 4 : Automne version 4, goûter à la simplicité</title>
	<link rel="stylesheet" type="text/css" href="/css/print.css" />
</head>
<body>
<h1>Automne version 4, goûter à la simplicité</h1>
<h3>

</h3>

	<?php //Generated by : $Id: print-2.php,v 1.10 2009/11/17 16:04:28 sebastien Exp $
if(!APPLICATION_ENFORCES_ACCESS_CONTROL || (isset($cms_user) && is_a($cms_user, 'CMS_profile_user') && $cms_user->hasModuleClearance('pnews', CLEARANCE_MODULE_VIEW))){
	$content = "";
	$replace = "";
	if (!isset($objectDefinitions) || !is_array($objectDefinitions)) $objectDefinitions = array();
	$blockAttributes = array (
		'module' => 'pnews',
		'language' => 'fr',
	);
	$parameters['pageID'] = '2';
	if (!isset($cms_language) || (isset($cms_language) && $cms_language->getCode() != 'fr')) $cms_language = new CMS_language('fr');
	$parameters['public'] = true;
	if (isset($parameters['item'])) {$parameters['objectID'] = $parameters['item']->getObjectID();} elseif (isset($parameters['itemID']) && sensitiveIO::isPositiveInteger($parameters['itemID']) && !isset($parameters['objectID'])) $parameters['objectID'] = CMS_poly_object_catalog::getObjectDefinitionByID($parameters['itemID']);
	if (!isset($object) || !is_array($object)) $object = array();
	if (!isset($object[1])) $object[1] = new CMS_poly_object(1, 0, array(), $parameters['public']);
	$parameters['module'] = 'pnews';
	//SEARCH lastNews TAG START 7_4dff9c
	$objectDefinition_lastNews = '1';
	if (!isset($objectDefinitions[$objectDefinition_lastNews])) {
		$objectDefinitions[$objectDefinition_lastNews] = new CMS_poly_object_definition($objectDefinition_lastNews);
	}
	//public search ?
	$public_7_4dff9c = isset($public_search) ? $public_search : false;
	//get search params
	$search_lastNews = new CMS_object_search($objectDefinitions[$objectDefinition_lastNews], $public_7_4dff9c);
	$launchSearch_lastNews = true;
	//add search conditions if any
	$search_lastNews->setAttribute('itemsPerPage', (int) CMS_polymod_definition_parsing::replaceVars("1", $replace));
	$search_lastNews->addOrderCondition("publication date after", "desc");
	//RESULT lastNews TAG START 8_0908c7
	//launch search lastNews if not already done
	if($launchSearch_lastNews && !isset($results_lastNews)) {
		if (isset($search_lastNews)) {
			$results_lastNews = $search_lastNews->search();
		} else {
			CMS_grandFather::raiseError("Malformed atm-result tag : can't use this tag outside of atm-search \"lastNews\" tag ...");
			$results_lastNews = array();
		}
	} elseif (!$launchSearch_lastNews) {
		$results_lastNews = array();
	}
	if ($results_lastNews) {
		$object_8_0908c7 = (isset($object[$objectDefinition_lastNews])) ? $object[$objectDefinition_lastNews] : ""; //save previous object search if any
		$replace_8_0908c7 = $replace; //save previous replace vars if any
		$count_8_0908c7 = 0;
		$content_8_0908c7 = $content; //save previous content var if any
		$maxPages_8_0908c7 = $search_lastNews->getMaxPages();
		$maxResults_8_0908c7 = $search_lastNews->getNumRows();
		foreach ($results_lastNews as $object[$objectDefinition_lastNews]) {
			$content = "";
			$replace["atm-search"] = array (
				"{resultid}" 	=> (isset($resultID_lastNews)) ? $resultID_lastNews : $object[$objectDefinition_lastNews]->getID(),
				"{firstresult}" => (!$count_8_0908c7) ? 1 : 0,
				"{lastresult}" 	=> ($count_8_0908c7 == sizeof($results_lastNews)-1) ? 1 : 0,
				"{resultcount}" => ($count_8_0908c7+1),
				"{maxpages}"    => $maxPages_8_0908c7,
				"{currentpage}" => ($search_lastNews->getAttribute('page')+1),
				"{maxresults}"  => $maxResults_8_0908c7,
			);
			$content .="
			<div class=\"lastNews\">
			<div class=\"newsTop\">
			<h3><a href=\"".CMS_tree::getPageValue("5","url")."?item=".$object[1]->getValue('id','')."\">".$object[1]->objectValues(1)->getValue('value','')."</a></h3>
			<span>".$object[1]->getValue('formatedDateStart','d/m/Y')."</span>
			<div class=\"spacer\"></div>
			</div>
			<div class=\"newsContent\">
			";
			//IF TAG START 9_237339
			$ifcondition = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar($object[1]->objectValues(4)->getValue('imageWidth','')), $replace);
			if ($ifcondition) {
				$func = create_function("","return (".$ifcondition.");");
				if ($func()) {
					$content .="
					<div class=\"imgRight shadow\">
					<img src=\"".$object[1]->objectValues(4)->getValue('imagePath','')."/".$object[1]->objectValues(4)->getValue('imageName','')."\" alt=\"".$object[1]->objectValues(4)->getValue('imageLabel','')."\" title=\"".$object[1]->objectValues(4)->getValue('imageLabel','')."\" />
					</div>
					";
				}
			}//IF TAG END 9_237339
			$content .="
			".$object[1]->objectValues(2)->getValue('htmlvalue','')."
			";
			//IF TAG START 10_a9b5fe
			$ifcondition = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar($object[1]->objectValues(3)->getValue('value','')), $replace);
			if ($ifcondition) {
				$func = create_function("","return (".$ifcondition.");");
				if ($func()) {
					$content .="
					<a href=\"".CMS_tree::getPageValue("5","url")."?item=".$object[1]->getValue('id','')."\" class=\"blocLien\" title=\"En savoir plus concernant '".$object[1]->getValue('label','')."'\">
					<span class=\"blocLienBottom\">En savoir plus</span>
					</a>
					";
				}
			}//IF TAG END 10_a9b5fe
			$content .="
			<div class=\"spacer\"></div>
			<div class=\"newsBottom\">
			<a class=\"newsAll\" href=\"".CMS_tree::getPageValue("5","url")."\">Toute l'actualite</a>
			";
			//FUNCTION TAG START 11_6702eb
			$parameters_11_6702eb = array ('selected' => CMS_polymod_definition_parsing::replaceVars("3", $replace),);
			$object_11_6702eb = &$object[1];
			if (method_exists($object_11_6702eb, "rss")) {
				$content .= CMS_polymod_definition_parsing::replaceVars($object_11_6702eb->rss($parameters_11_6702eb, array (
					0 =>
					array (
						'textnode' => '
						',
					),
					1 =>
					array (
						'nodename' => 'a',
						'attributes' =>
						array (
							'class' => 'newsRSS',
							'title' => '{description}',
							'href' => '{url}',
						),
						'childrens' =>
						array (
							0 =>
							array (
								'nodename' => 'img',
								'attributes' =>
								array (
									'src' => '/img/demo/common/rss.gif',
									'alt' => '{label}',
								),
							),
						),
					),
					2 =>
					array (
						'textnode' => '
						',
					),
				)), $replace);
			} else {
				CMS_grandFather::raiseError("Malformed atm-function tag : can't found method rss on object : ".get_class($object_11_6702eb));
			}
			//FUNCTION TAG END 11_6702eb
			$content .="
			</div>
			</div>
			</div>
			";
			$count_8_0908c7++;
			//do all result vars replacement
			$content_8_0908c7.= CMS_polymod_definition_parsing::replaceVars($content, $replace);
		}
		$content = $content_8_0908c7; //retrieve previous content var if any
		$replace = $replace_8_0908c7; //retrieve previous replace vars if any
		$object[$objectDefinition_lastNews] = $object_8_0908c7; //retrieve previous object search if any
	}
	//RESULT lastNews TAG END 8_0908c7
	//destroy search and results lastNews objects
	unset($search_lastNews);
	unset($results_lastNews);
	//SEARCH lastNews TAG END 7_4dff9c
	echo CMS_polymod_definition_parsing::replaceVars($content, $replace);
}
   ?>
<br />

<h2>Faciliter la communication et les échanges !</h2>



<div class="text"><p><strong>Automne est votre solution</strong> si vous recherchez un outil de gestion de contenu performant et &eacute;volutif. </p><p>Un outil permettant autonomie et contr&ocirc;le &eacute;ditorial.</p><p>Que votre contenu soit statique ou dynamique avec une gestion en bases de donn&eacute;es, Automne facilite la communication et les &eacute;changes <strong>sans contraintes techniques.<br /></strong></p></div>

<br />
<hr />
<div align="center">
	<small>
		
		
				Page  "Accueil" (http://127.0.0.1/web/demo/2-accueil.php)
				<br />
		Tir&eacute; du site http://<?php echo $_SERVER["HTTP_HOST"];    ?>
	</small>
</div>
<script language="JavaScript">window.print();</script>
<?php if (SYSTEM_DEBUG && STATS_DEBUG) {view_stat();}   ?>
</body>
</html>