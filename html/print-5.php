<?php //Generated on Mon, 09 Feb 2009 12:09:18 +0100 by Automne (TM) 4.0.0a3
if (!isset($cms_page_included) && !$_POST && !$_GET) {
	header('HTTP/1.x 301 Moved Permanently', true, 301);
	header('Location: http://127.0.0.1/web/fr/print-5-actualite.php');
	exit;
}
require_once($_SERVER["DOCUMENT_ROOT"]."/cms_rc_frontend.php");
 ?>
<?php require_once($_SERVER["DOCUMENT_ROOT"].'/automne/classes/polymodFrontEnd.php');  ?><?php if(isset($_REQUEST['out']) && $_REQUEST['out'] == 'xml') {

$content = "";
$replace = "";
if (!isset($objectDefinitions) || !is_array($objectDefinitions)) $objectDefinitions = array();
$blockAttributes = array (
  'module' => 'pnews',
  'language' => 'fr',
);
$parameters['pageID'] = '5';
if (!isset($cms_language) || (isset($cms_language) && $cms_language->getCode() != 'fr')) $cms_language = new CMS_language('fr');
$parameters['public'] = true;
if (isset($parameters['item'])) {$parameters['objectID'] = $parameters['item']->getObjectID();} elseif (isset($parameters['itemID']) && sensitiveIO::isPositiveInteger($parameters['itemID']) && !isset($parameters['objectID'])) $parameters['objectID'] = CMS_poly_object_catalog::getObjectDefinitionByID($parameters['itemID']);
if (!isset($object) || !is_array($object)) $object = array();
if (!isset($object[1])) $object[1] = new CMS_poly_object(1, 0, array(), $parameters['public']);
$parameters['module'] = 'pnews';

$xmlCondition = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar(CMS_poly_definition_functions::getVarContent("request", "out", "string", @$out))." == 'xml'", $replace);
if ($xmlCondition) {
	$func = create_function("","return (".$xmlCondition.");");
	if ($func()) {
		//AJAX TAG START 3_c3da05
		//SEARCH newsresult TAG START 4_1ac0e5
		$objectDefinition_newsresult = '1';
		if (!isset($objectDefinitions[$objectDefinition_newsresult])) {
			$objectDefinitions[$objectDefinition_newsresult] = new CMS_poly_object_definition($objectDefinition_newsresult);
		}
		//public search ?
		$public_4_1ac0e5 = isset($public_search) ? $public_search : false;
		//get search params
		$search_newsresult = new CMS_object_search($objectDefinitions[$objectDefinition_newsresult], $public_4_1ac0e5);
		$launchSearch_newsresult = true;
		//add search conditions if any
		$launchSearch_newsresult = (CMS_polymod_definition_parsing::addSearchCondition($search_newsresult, array (
			'search' => 'newsresult',
			'type' => 5,
			'value' => CMS_poly_definition_functions::getVarContent("request", "cat", "int", @$cat),
			'mandatory' => 'false',
		))) ? $launchSearch_newsresult : false;
		$launchSearch_newsresult = (CMS_polymod_definition_parsing::addSearchCondition($search_newsresult, array (
			'search' => 'newsresult',
			'type' => 'keywords',
			'value' => CMS_poly_definition_functions::getVarContent("request", "keyword", "string", @$keyword),
			'mandatory' => 'false',
		))) ? $launchSearch_newsresult : false;
		$launchSearch_newsresult = (CMS_polymod_definition_parsing::addSearchCondition($search_newsresult, array (
			'search' => 'newsresult',
			'type' => 'item',
			'value' => CMS_poly_definition_functions::getVarContent("request", "item", "int", @$item),
			'mandatory' => 'false',
		))) ? $launchSearch_newsresult : false;
		$search_newsresult->setAttribute('itemsPerPage', (int) CMS_polymod_definition_parsing::replaceVars("10", $replace));
		$search_newsresult->setAttribute('page', (int) (CMS_polymod_definition_parsing::replaceVars(CMS_poly_definition_functions::getVarContent("request", "page", "int", @$page), $replace) -1 ));
		$search_newsresult->addOrderCondition("objectID", "desc");
		//RESULT newsresult TAG START 5_cf94ff
		//launch search newsresult if not already done
		if($launchSearch_newsresult && !isset($results_newsresult)) {
			if (isset($search_newsresult)) {
				$results_newsresult = $search_newsresult->search();
			} else {
				CMS_grandFather::raiseError("Malformed atm-result tag : can't use this tag outside of atm-search \"newsresult\" tag ...");
				$results_newsresult = array();
			}
		} elseif (!$launchSearch_newsresult) {
			$results_newsresult = array();
		}
		if ($results_newsresult) {
			$object_5_cf94ff = $object[$objectDefinition_newsresult]; //save previous object search if any
			$replace_5_cf94ff = $replace; //save previous replace vars if any
			$count_5_cf94ff = 0;
			$content_5_cf94ff = $content; //save previous content var if any
			$maxPages_5_cf94ff = $search_newsresult->getMaxPages();
			$maxResults_5_cf94ff = $search_newsresult->getNumRows();
			foreach ($results_newsresult as $object[$objectDefinition_newsresult]) {
				$content = "";
				$replace["atm-search"] = array (
					"{resultid}" 	=> (isset($resultID_newsresult)) ? $resultID_newsresult : $object[$objectDefinition_newsresult]->getID(),
					"{firstresult}" => (!$count_5_cf94ff) ? 1 : 0,
					"{lastresult}" 	=> ($count_5_cf94ff == sizeof($results_newsresult)-1) ? 1 : 0,
					"{resultcount}" => ($count_5_cf94ff+1),
					"{maxpages}"    => $maxPages_5_cf94ff,
					"{currentpage}" => ($search_newsresult->getAttribute('page')+1),
					"{maxresults}"  => $maxResults_5_cf94ff,
				);
				//IF TAG START 6_bce741
				$ifcondition = CMS_polymod_definition_parsing::replaceVars("{firstresult} && !".CMS_polymod_definition_parsing::prepareVar(CMS_poly_definition_functions::getVarContent("request", "item", "int", @$item)), $replace);
				if ($ifcondition) {
					$func = create_function("","return (".$ifcondition.");");
					if ($func()) {
						$content .="
						<div id=\"maxResults\">{maxresults} r�sultat(s) pour votre recherche.</div>
						";
					}
				}//IF TAG END 6_bce741
				$content .="
				<div class=\"newsTitle\">
				<h2><a href=\"".CMS_tree::getPageValue($parameters['pageID'],"url")."?item=".$object[1]->getValue('id','')."\" title=\"".$object[1]->getValue('label','')."\">".$object[1]->getValue('label','')."</a></h2><span>".$object[1]->getValue('formatedDateStart','d/m/Y')."</span><div class=\"spacer\"></div>
				</div>
				<div class=\"newsContent\">
				";
				//IF TAG START 7_224642
				$ifcondition = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar($object[1]->objectValues(4)->getValue('imageName','')), $replace);
				if ($ifcondition) {
					$func = create_function("","return (".$ifcondition.");");
					if ($func()) {
						$content .="
						<div class=\"imgRight shadowR\">
						<div class=\"shadowB\">
						<div class=\"shadowTR\">
						<div class=\"shadowBL\">
						<div class=\"shadowBR\">
						".$object[1]->objectValues(4)->getValue('imageHTML','')."
						</div>
						</div>
						</div>
						</div>
						</div>
						";
					}
				}//IF TAG END 7_224642
				//IF TAG START 8_ffce26
				$ifcondition = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar(CMS_poly_definition_functions::getVarContent("request", "item", "int", @$item))." == ".CMS_polymod_definition_parsing::prepareVar($object[1]->getValue('id','')), $replace);
				if ($ifcondition) {
					$func = create_function("","return (".$ifcondition.");");
					if ($func()) {
						$content .="
						<strong>".$object[1]->objectValues(2)->getValue('value','')."</strong>
						<br />".$object[1]->objectValues(3)->getValue('value','')."
						";
					}
				}//IF TAG END 8_ffce26
				//IF TAG START 9_7042d7
				$ifcondition = CMS_polymod_definition_parsing::replaceVars("!".CMS_polymod_definition_parsing::prepareVar(CMS_poly_definition_functions::getVarContent("request", "item", "int", @$item)), $replace);
				if ($ifcondition) {
					$func = create_function("","return (".$ifcondition.");");
					if ($func()) {
						$content .="
						".$object[1]->objectValues(2)->getValue('value','')."
						";
					}
				}//IF TAG END 9_7042d7
				$content .="
				<a href=\"".CMS_tree::getPageValue($parameters['pageID'],"url")."?item=".$object[1]->getValue('id','')."\" class=\"blocLien\" title=\"En savoir plus concernant '".$object[1]->getValue('label','')."'\">
				<span class=\"blocLienTop\">".$object[1]->getValue('label','')."</span>
				<span class=\"blocLienBottom\">En savoir plus</span>
				</a>
				<div class=\"spacer\"></div>
				</div>
				";
				//IF TAG START 10_60726d
				$ifcondition = CMS_polymod_definition_parsing::replaceVars("{lastresult} && !".CMS_polymod_definition_parsing::prepareVar(CMS_poly_definition_functions::getVarContent("request", "item", "int", @$item)), $replace);
				if ($ifcondition) {
					$func = create_function("","return (".$ifcondition.");");
					if ($func()) {
						$content .="
						<div class=\"pages\" id=\"pages\">
						";
						//FUNCTION TAG START 11_513b7e
						$parameters_11_513b7e = array ('maxpages' => CMS_polymod_definition_parsing::replaceVars("{maxpages}", $replace),'currentpage' => CMS_polymod_definition_parsing::replaceVars("{currentpage}", $replace),'displayedpage' => CMS_polymod_definition_parsing::replaceVars("5", $replace),);
						if (method_exists(new CMS_poly_definition_functions(), "pages")) {
							$content .= CMS_polymod_definition_parsing::replaceVars(CMS_poly_definition_functions::pages($parameters_11_513b7e, array (
								0 =>
								array (
									'textnode' => '
									',
								),
								1 =>
								array (
									'nodename' => 'pages',
									'attributes' =>
									array (
									),
									'childrens' =>
									array (
										0 =>
										array (
											'nodename' => 'a',
											'attributes' =>
											array (
												'href' => CMS_tree::getPageValue($parameters['pageID'],"url").'?cat='.CMS_poly_definition_functions::getVarContent("request", "cat", "int", @$cat).'&keyword='.CMS_poly_definition_functions::getVarContent("request", "keyword", "string", @$keyword).'&page={n}',
											),
											'childrens' =>
											array (
												0 =>
												array (
													'textnode' => '{n}',
												),
											),
										),
										1 =>
										array (
											'textnode' => ' ',
										),
									),
								),
								2 =>
								array (
									'textnode' => '
									',
								),
								3 =>
								array (
									'nodename' => 'currentpage',
									'attributes' =>
									array (
									),
									'childrens' =>
									array (
										0 =>
										array (
											'nodename' => 'strong',
											'attributes' =>
											array (
											),
											'childrens' =>
											array (
												0 =>
												array (
													'textnode' => '{n}',
												),
											),
										),
										1 =>
										array (
											'textnode' => ' ',
										),
									),
								),
								4 =>
								array (
									'textnode' => '
									',
								),
								5 =>
								array (
									'nodename' => 'previous',
									'attributes' =>
									array (
									),
									'childrens' =>
									array (
										0 =>
										array (
											'nodename' => 'a',
											'attributes' =>
											array (
												'href' => CMS_tree::getPageValue($parameters['pageID'],"url").'?cat='.CMS_poly_definition_functions::getVarContent("request", "cat", "int", @$cat).'&keyword='.CMS_poly_definition_functions::getVarContent("request", "keyword", "string", @$keyword).'&page={n}',
											),
											'childrens' =>
											array (
												0 =>
												array (
													'nodename' => 'img',
													'attributes' =>
													array (
														'src' => '/img/interieur/newsPrevious.gif',
														'alt' => 'page pr�c�dente',
														'title' => 'page pr�c�dente',
													),
												),
											),
										),
										1 =>
										array (
											'textnode' => ' ',
										),
									),
								),
								6 =>
								array (
									'textnode' => '
									',
								),
								7 =>
								array (
									'nodename' => 'next',
									'attributes' =>
									array (
									),
									'childrens' =>
									array (
										0 =>
										array (
											'nodename' => 'a',
											'attributes' =>
											array (
												'href' => CMS_tree::getPageValue($parameters['pageID'],"url").'?cat='.CMS_poly_definition_functions::getVarContent("request", "cat", "int", @$cat).'&keyword='.CMS_poly_definition_functions::getVarContent("request", "keyword", "string", @$keyword).'&page={n}',
											),
											'childrens' =>
											array (
												0 =>
												array (
													'nodename' => 'img',
													'attributes' =>
													array (
														'src' => '/img/interieur/newsNext.gif',
														'alt' => 'page suivante',
														'title' => 'page suivante',
													),
												),
											),
										),
										1 =>
										array (
											'textnode' => ' ',
										),
									),
								),
								8 =>
								array (
									'textnode' => '
									',
								),
							)), $replace);
						} else {
							CMS_grandFather::raiseError("Malformed atm-function tag : can't found method pagesin CMS_poly_definition_functions");
						}
						//FUNCTION TAG END 11_513b7e
						$content .="
						</div>
						";
					}
				}//IF TAG END 10_60726d
				$count_5_cf94ff++;
				//do all result vars replacement
				$content_5_cf94ff.= CMS_polymod_definition_parsing::replaceVars($content, $replace);
			}
			$content = $content_5_cf94ff; //retrieve previous content var if any
			$replace = $replace_5_cf94ff; //retrieve previous replace vars if any
			$object[$objectDefinition_newsresult] = $object_5_cf94ff; //retrieve previous object search if any
		}
		//RESULT newsresult TAG END 5_cf94ff
		//NO-RESULT newsresult TAG START 12_0c6036
		//launch search newsresult if not already done
		if($launchSearch_newsresult && !isset($results_newsresult)) {
			if (isset($search_newsresult)) {
				$results_newsresult = $search_newsresult->search();
			} else {
				CMS_grandFather::raiseError("Malformed atm-noresult tag : can't use this tag outside of atm-search \"newsresult\" tag ...");
				$results_newsresult = array();
			}
		} elseif (!$launchSearch_newsresult) {
			$results_newsresult = array();
		}
		if (!$results_newsresult) {
			$content .="Aucun r�sultat trouv� pour votre recherche ...";
		}
		//NO-RESULT newsresult TAG END 12_0c6036
		//destroy search and results newsresult objects
		unset($search_newsresult);
		unset($results_newsresult);
		//SEARCH newsresult TAG END 4_1ac0e5
		//AJAX TAG END 3_c3da05
		//output XML response
		header("Content-Type: text/xml");
		echo "<"."?xml version=\"1.0\" encoding=\"iso-8859-1\"?".">
		<response xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\">
		<error>0</error>
		<errormessage/>
		<data><![CDATA[".CMS_polymod_definition_parsing::replaceVars($content, $replace)."]]></data>
		</response>";
		exit;
	}
}

$content = "";
$replace = "";
if (!isset($objectDefinitions) || !is_array($objectDefinitions)) $objectDefinitions = array();
$blockAttributes = array (
  'module' => 'pnews',
  'language' => 'fr',
);
$parameters['pageID'] = '5';
if (!isset($cms_language) || (isset($cms_language) && $cms_language->getCode() != 'fr')) $cms_language = new CMS_language('fr');
$parameters['public'] = true;
if (isset($parameters['item'])) {$parameters['objectID'] = $parameters['item']->getObjectID();} elseif (isset($parameters['itemID']) && sensitiveIO::isPositiveInteger($parameters['itemID']) && !isset($parameters['objectID'])) $parameters['objectID'] = CMS_poly_object_catalog::getObjectDefinitionByID($parameters['itemID']);
if (!isset($object) || !is_array($object)) $object = array();
if (!isset($object[1])) $object[1] = new CMS_poly_object(1, 0, array(), $parameters['public']);
$parameters['module'] = 'pnews';

$xmlCondition = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar(CMS_poly_definition_functions::getVarContent("request", "out", "string", @$out))." == 'xml'", $replace);
if ($xmlCondition) {
	$func = create_function("","return (".$xmlCondition.");");
	if ($func()) {
		//AJAX TAG START 14_33d7dd
		//SEARCH newsresult TAG START 15_326c03
		$objectDefinition_newsresult = '1';
		if (!isset($objectDefinitions[$objectDefinition_newsresult])) {
			$objectDefinitions[$objectDefinition_newsresult] = new CMS_poly_object_definition($objectDefinition_newsresult);
		}
		//public search ?
		$public_15_326c03 = isset($public_search) ? $public_search : false;
		//get search params
		$search_newsresult = new CMS_object_search($objectDefinitions[$objectDefinition_newsresult], $public_15_326c03);
		$launchSearch_newsresult = true;
		//add search conditions if any
		$launchSearch_newsresult = (CMS_polymod_definition_parsing::addSearchCondition($search_newsresult, array (
			'search' => 'newsresult',
			'type' => 5,
			'value' => CMS_poly_definition_functions::getVarContent("request", "cat", "int", @$cat),
			'mandatory' => 'false',
		))) ? $launchSearch_newsresult : false;
		$launchSearch_newsresult = (CMS_polymod_definition_parsing::addSearchCondition($search_newsresult, array (
			'search' => 'newsresult',
			'type' => 'keywords',
			'value' => CMS_poly_definition_functions::getVarContent("request", "keyword", "string", @$keyword),
			'mandatory' => 'false',
		))) ? $launchSearch_newsresult : false;
		$launchSearch_newsresult = (CMS_polymod_definition_parsing::addSearchCondition($search_newsresult, array (
			'search' => 'newsresult',
			'type' => 'item',
			'value' => CMS_poly_definition_functions::getVarContent("request", "item", "int", @$item),
			'mandatory' => 'false',
		))) ? $launchSearch_newsresult : false;
		$search_newsresult->setAttribute('itemsPerPage', (int) CMS_polymod_definition_parsing::replaceVars("10", $replace));
		$search_newsresult->setAttribute('page', (int) (CMS_polymod_definition_parsing::replaceVars(CMS_poly_definition_functions::getVarContent("request", "page", "int", @$page), $replace) -1 ));
		$search_newsresult->addOrderCondition("objectID", "desc");
		//RESULT newsresult TAG START 16_a05e35
		//launch search newsresult if not already done
		if($launchSearch_newsresult && !isset($results_newsresult)) {
			if (isset($search_newsresult)) {
				$results_newsresult = $search_newsresult->search();
			} else {
				CMS_grandFather::raiseError("Malformed atm-result tag : can't use this tag outside of atm-search \"newsresult\" tag ...");
				$results_newsresult = array();
			}
		} elseif (!$launchSearch_newsresult) {
			$results_newsresult = array();
		}
		if ($results_newsresult) {
			$object_16_a05e35 = $object[$objectDefinition_newsresult]; //save previous object search if any
			$replace_16_a05e35 = $replace; //save previous replace vars if any
			$count_16_a05e35 = 0;
			$content_16_a05e35 = $content; //save previous content var if any
			$maxPages_16_a05e35 = $search_newsresult->getMaxPages();
			$maxResults_16_a05e35 = $search_newsresult->getNumRows();
			foreach ($results_newsresult as $object[$objectDefinition_newsresult]) {
				$content = "";
				$replace["atm-search"] = array (
					"{resultid}" 	=> (isset($resultID_newsresult)) ? $resultID_newsresult : $object[$objectDefinition_newsresult]->getID(),
					"{firstresult}" => (!$count_16_a05e35) ? 1 : 0,
					"{lastresult}" 	=> ($count_16_a05e35 == sizeof($results_newsresult)-1) ? 1 : 0,
					"{resultcount}" => ($count_16_a05e35+1),
					"{maxpages}"    => $maxPages_16_a05e35,
					"{currentpage}" => ($search_newsresult->getAttribute('page')+1),
					"{maxresults}"  => $maxResults_16_a05e35,
				);
				//IF TAG START 17_c9e71c
				$ifcondition = CMS_polymod_definition_parsing::replaceVars("{firstresult} && !".CMS_polymod_definition_parsing::prepareVar(CMS_poly_definition_functions::getVarContent("request", "item", "int", @$item)), $replace);
				if ($ifcondition) {
					$func = create_function("","return (".$ifcondition.");");
					if ($func()) {
						$content .="
						<div id=\"maxResults\">{maxresults} r�sultat(s) pour votre recherche.</div>
						";
					}
				}//IF TAG END 17_c9e71c
				$content .="
				<div class=\"newsTitle\">
				<h2><a href=\"".CMS_tree::getPageValue($parameters['pageID'],"url")."?item=".$object[1]->getValue('id','')."\" title=\"".$object[1]->getValue('label','')."\">".$object[1]->getValue('label','')."</a></h2><span>".$object[1]->getValue('formatedDateStart','d/m/Y')."</span><div class=\"spacer\"></div>
				</div>
				<div class=\"newsContent\">
				";
				//IF TAG START 18_a82895
				$ifcondition = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar($object[1]->objectValues(4)->getValue('imageName','')), $replace);
				if ($ifcondition) {
					$func = create_function("","return (".$ifcondition.");");
					if ($func()) {
						$content .="
						<div class=\"imgRight shadowR\">
						<div class=\"shadowB\">
						<div class=\"shadowTR\">
						<div class=\"shadowBL\">
						<div class=\"shadowBR\">
						".$object[1]->objectValues(4)->getValue('imageHTML','')."
						</div>
						</div>
						</div>
						</div>
						</div>
						";
					}
				}//IF TAG END 18_a82895
				//IF TAG START 19_242b19
				$ifcondition = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar(CMS_poly_definition_functions::getVarContent("request", "item", "int", @$item))." == ".CMS_polymod_definition_parsing::prepareVar($object[1]->getValue('id','')), $replace);
				if ($ifcondition) {
					$func = create_function("","return (".$ifcondition.");");
					if ($func()) {
						$content .="
						<strong>".$object[1]->objectValues(2)->getValue('value','')."</strong>
						<br />".$object[1]->objectValues(3)->getValue('value','')."
						";
					}
				}//IF TAG END 19_242b19
				//IF TAG START 20_71edeb
				$ifcondition = CMS_polymod_definition_parsing::replaceVars("!".CMS_polymod_definition_parsing::prepareVar(CMS_poly_definition_functions::getVarContent("request", "item", "int", @$item)), $replace);
				if ($ifcondition) {
					$func = create_function("","return (".$ifcondition.");");
					if ($func()) {
						$content .="
						".$object[1]->objectValues(2)->getValue('value','')."
						";
					}
				}//IF TAG END 20_71edeb
				$content .="
				<a href=\"".CMS_tree::getPageValue($parameters['pageID'],"url")."?item=".$object[1]->getValue('id','')."\" class=\"blocLien\" title=\"En savoir plus concernant '".$object[1]->getValue('label','')."'\">
				<span class=\"blocLienTop\">".$object[1]->getValue('label','')."</span>
				<span class=\"blocLienBottom\">En savoir plus</span>
				</a>
				<div class=\"spacer\"></div>
				</div>
				";
				//IF TAG START 21_20567b
				$ifcondition = CMS_polymod_definition_parsing::replaceVars("{lastresult} && !".CMS_polymod_definition_parsing::prepareVar(CMS_poly_definition_functions::getVarContent("request", "item", "int", @$item)), $replace);
				if ($ifcondition) {
					$func = create_function("","return (".$ifcondition.");");
					if ($func()) {
						$content .="
						<div class=\"pages\" id=\"pages\">
						";
						//FUNCTION TAG START 22_006c6d
						$parameters_22_006c6d = array ('maxpages' => CMS_polymod_definition_parsing::replaceVars("{maxpages}", $replace),'currentpage' => CMS_polymod_definition_parsing::replaceVars("{currentpage}", $replace),'displayedpage' => CMS_polymod_definition_parsing::replaceVars("5", $replace),);
						if (method_exists(new CMS_poly_definition_functions(), "pages")) {
							$content .= CMS_polymod_definition_parsing::replaceVars(CMS_poly_definition_functions::pages($parameters_22_006c6d, array (
								0 =>
								array (
									'textnode' => '
									',
								),
								1 =>
								array (
									'nodename' => 'pages',
									'attributes' =>
									array (
									),
									'childrens' =>
									array (
										0 =>
										array (
											'nodename' => 'a',
											'attributes' =>
											array (
												'href' => CMS_tree::getPageValue($parameters['pageID'],"url").'?cat='.CMS_poly_definition_functions::getVarContent("request", "cat", "int", @$cat).'&keyword='.CMS_poly_definition_functions::getVarContent("request", "keyword", "string", @$keyword).'&page={n}',
											),
											'childrens' =>
											array (
												0 =>
												array (
													'textnode' => '{n}',
												),
											),
										),
										1 =>
										array (
											'textnode' => ' ',
										),
									),
								),
								2 =>
								array (
									'textnode' => '
									',
								),
								3 =>
								array (
									'nodename' => 'currentpage',
									'attributes' =>
									array (
									),
									'childrens' =>
									array (
										0 =>
										array (
											'nodename' => 'strong',
											'attributes' =>
											array (
											),
											'childrens' =>
											array (
												0 =>
												array (
													'textnode' => '{n}',
												),
											),
										),
										1 =>
										array (
											'textnode' => ' ',
										),
									),
								),
								4 =>
								array (
									'textnode' => '
									',
								),
								5 =>
								array (
									'nodename' => 'previous',
									'attributes' =>
									array (
									),
									'childrens' =>
									array (
										0 =>
										array (
											'nodename' => 'a',
											'attributes' =>
											array (
												'href' => CMS_tree::getPageValue($parameters['pageID'],"url").'?cat='.CMS_poly_definition_functions::getVarContent("request", "cat", "int", @$cat).'&keyword='.CMS_poly_definition_functions::getVarContent("request", "keyword", "string", @$keyword).'&page={n}',
											),
											'childrens' =>
											array (
												0 =>
												array (
													'nodename' => 'img',
													'attributes' =>
													array (
														'src' => '/img/interieur/newsPrevious.gif',
														'alt' => 'page pr�c�dente',
														'title' => 'page pr�c�dente',
													),
												),
											),
										),
										1 =>
										array (
											'textnode' => ' ',
										),
									),
								),
								6 =>
								array (
									'textnode' => '
									',
								),
								7 =>
								array (
									'nodename' => 'next',
									'attributes' =>
									array (
									),
									'childrens' =>
									array (
										0 =>
										array (
											'nodename' => 'a',
											'attributes' =>
											array (
												'href' => CMS_tree::getPageValue($parameters['pageID'],"url").'?cat='.CMS_poly_definition_functions::getVarContent("request", "cat", "int", @$cat).'&keyword='.CMS_poly_definition_functions::getVarContent("request", "keyword", "string", @$keyword).'&page={n}',
											),
											'childrens' =>
											array (
												0 =>
												array (
													'nodename' => 'img',
													'attributes' =>
													array (
														'src' => '/img/interieur/newsNext.gif',
														'alt' => 'page suivante',
														'title' => 'page suivante',
													),
												),
											),
										),
										1 =>
										array (
											'textnode' => ' ',
										),
									),
								),
								8 =>
								array (
									'textnode' => '
									',
								),
							)), $replace);
						} else {
							CMS_grandFather::raiseError("Malformed atm-function tag : can't found method pagesin CMS_poly_definition_functions");
						}
						//FUNCTION TAG END 22_006c6d
						$content .="
						</div>
						";
					}
				}//IF TAG END 21_20567b
				$count_16_a05e35++;
				//do all result vars replacement
				$content_16_a05e35.= CMS_polymod_definition_parsing::replaceVars($content, $replace);
			}
			$content = $content_16_a05e35; //retrieve previous content var if any
			$replace = $replace_16_a05e35; //retrieve previous replace vars if any
			$object[$objectDefinition_newsresult] = $object_16_a05e35; //retrieve previous object search if any
		}
		//RESULT newsresult TAG END 16_a05e35
		//NO-RESULT newsresult TAG START 23_4ec16d
		//launch search newsresult if not already done
		if($launchSearch_newsresult && !isset($results_newsresult)) {
			if (isset($search_newsresult)) {
				$results_newsresult = $search_newsresult->search();
			} else {
				CMS_grandFather::raiseError("Malformed atm-noresult tag : can't use this tag outside of atm-search \"newsresult\" tag ...");
				$results_newsresult = array();
			}
		} elseif (!$launchSearch_newsresult) {
			$results_newsresult = array();
		}
		if (!$results_newsresult) {
			$content .="Aucun r�sultat trouv� pour votre recherche ...";
		}
		//NO-RESULT newsresult TAG END 23_4ec16d
		//destroy search and results newsresult objects
		unset($search_newsresult);
		unset($results_newsresult);
		//SEARCH newsresult TAG END 15_326c03
		//AJAX TAG END 14_33d7dd
		//output XML response
		header("Content-Type: text/xml");
		echo "<"."?xml version=\"1.0\" encoding=\"iso-8859-1\"?".">
		<response xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\">
		<error>0</error>
		<errormessage/>
		<data><![CDATA[".CMS_polymod_definition_parsing::replaceVars($content, $replace)."]]></data>
		</response>";
		exit;
	}
}

						//output empty XML response
						header("Content-Type: text/xml");
						echo "<"."?xml version=\"1.0\" encoding=\"iso-8859-1\"?".">
						<response xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\">
						<error>0</error>
						<errormessage/>
						</response>";
						exit;
}  ?><?php if (defined('APPLICATION_XHTML_DTD')) echo APPLICATION_XHTML_DTD."\n";  ?>
<html xmlns="http://www.w3.org/1999/xhtml" lang="fr">
<head>
	<title>Automne 4 : Actualit�s</title>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
	<link rel="stylesheet" type="text/css" href="/css/print.css" />
</head>
<body>
<h1>Actualit�s</h1>
<h3>

		

&raquo;


&nbsp;

Actualit�s
		


</h3>

	<?php //Generated by : $Id: print-5.php,v 1.3 2009/02/09 11:07:34 sebastien Exp $
$content = "";
$replace = "";
if (!isset($objectDefinitions) || !is_array($objectDefinitions)) $objectDefinitions = array();
$blockAttributes = array (
	'module' => 'pnews',
	'language' => 'fr',
);
$parameters['pageID'] = '5';
if (!isset($cms_language) || (isset($cms_language) && $cms_language->getCode() != 'fr')) $cms_language = new CMS_language('fr');
$parameters['public'] = true;
if (isset($parameters['item'])) {$parameters['objectID'] = $parameters['item']->getObjectID();} elseif (isset($parameters['itemID']) && sensitiveIO::isPositiveInteger($parameters['itemID']) && !isset($parameters['objectID'])) $parameters['objectID'] = CMS_poly_object_catalog::getObjectDefinitionByID($parameters['itemID']);
if (!isset($object) || !is_array($object)) $object = array();
if (!isset($object[1])) $object[1] = new CMS_poly_object(1, 0, array(), $parameters['public']);
$parameters['module'] = 'pnews';
$content .="
<div id=\"newssearch\">
<script type=\"text/javascript\">
var pageURL = '".CMS_tree::getPageValue($parameters['pageID'],"url")."';
</script>
<form action=\"".CMS_tree::getPageValue($parameters['pageID'],"url")."\" method=\"get\">
<h2>Rechercher des actualit�s : </h2>
<div class=\"newsForm\">
<div class=\"formKeywords\">
<label for=\"keyword\">Mots Cl�s : </label><br /><input type=\"text\" id=\"keyword\" name=\"keyword\" value=\"".CMS_poly_definition_functions::getVarContent("request", "keyword", "string", @$keyword)."\" /><br />
</div>
<div class=\"formCat\">
<label for=\"cat\">Cat�gorie : </label><br />
<select id=\"cat\" name=\"cat\">
<option value=\"\"> </option>
";
//FUNCTION TAG START 13_c1d185
$parameters_13_c1d185 = array ('selected' => CMS_polymod_definition_parsing::replaceVars(CMS_poly_definition_functions::getVarContent("request", "cat", "int", @$cat), $replace),);
$object_13_c1d185 = &$object[1]->objectValues(5);
if (method_exists($object_13_c1d185, "selectOptions")) {
	$content .= CMS_polymod_definition_parsing::replaceVars($object_13_c1d185->selectOptions($parameters_13_c1d185, NULL), $replace);
} else {
	CMS_grandFather::raiseError("Malformed atm-function tag : can't found method selectOptions on object : ".get_class($object_13_c1d185));
}
//FUNCTION TAG END 13_c1d185
$content .="
</select>
</div>
<div id=\"loadingSearch\"><img src=\"/img/loading-news.gif\" alt=\"Chargement ...\" title=\"Chargement ...\" /></div>
<input type=\"submit\" class=\"button\" name=\"search\" id=\"submitSearch\" value=\"ok\" />
<div class=\"spacer\"></div>
</div>
</form>
</div>
<div id=\"searchresult\">
";
//AJAX TAG START 14_33d7dd
//SEARCH newsresult TAG START 15_326c03
$objectDefinition_newsresult = '1';
if (!isset($objectDefinitions[$objectDefinition_newsresult])) {
	$objectDefinitions[$objectDefinition_newsresult] = new CMS_poly_object_definition($objectDefinition_newsresult);
}
//public search ?
$public_15_326c03 = isset($public_search) ? $public_search : false;
//get search params
$search_newsresult = new CMS_object_search($objectDefinitions[$objectDefinition_newsresult], $public_15_326c03);
$launchSearch_newsresult = true;
//add search conditions if any
$launchSearch_newsresult = (CMS_polymod_definition_parsing::addSearchCondition($search_newsresult, array (
	'search' => 'newsresult',
	'type' => 5,
	'value' => CMS_poly_definition_functions::getVarContent("request", "cat", "int", @$cat),
	'mandatory' => 'false',
))) ? $launchSearch_newsresult : false;
$launchSearch_newsresult = (CMS_polymod_definition_parsing::addSearchCondition($search_newsresult, array (
	'search' => 'newsresult',
	'type' => 'keywords',
	'value' => CMS_poly_definition_functions::getVarContent("request", "keyword", "string", @$keyword),
	'mandatory' => 'false',
))) ? $launchSearch_newsresult : false;
$launchSearch_newsresult = (CMS_polymod_definition_parsing::addSearchCondition($search_newsresult, array (
	'search' => 'newsresult',
	'type' => 'item',
	'value' => CMS_poly_definition_functions::getVarContent("request", "item", "int", @$item),
	'mandatory' => 'false',
))) ? $launchSearch_newsresult : false;
$search_newsresult->setAttribute('itemsPerPage', (int) CMS_polymod_definition_parsing::replaceVars("10", $replace));
$search_newsresult->setAttribute('page', (int) (CMS_polymod_definition_parsing::replaceVars(CMS_poly_definition_functions::getVarContent("request", "page", "int", @$page), $replace) -1 ));
$search_newsresult->addOrderCondition("objectID", "desc");
//RESULT newsresult TAG START 16_a05e35
//launch search newsresult if not already done
if($launchSearch_newsresult && !isset($results_newsresult)) {
	if (isset($search_newsresult)) {
		$results_newsresult = $search_newsresult->search();
	} else {
		CMS_grandFather::raiseError("Malformed atm-result tag : can't use this tag outside of atm-search \"newsresult\" tag ...");
		$results_newsresult = array();
	}
} elseif (!$launchSearch_newsresult) {
	$results_newsresult = array();
}
if ($results_newsresult) {
	$object_16_a05e35 = $object[$objectDefinition_newsresult]; //save previous object search if any
	$replace_16_a05e35 = $replace; //save previous replace vars if any
	$count_16_a05e35 = 0;
	$content_16_a05e35 = $content; //save previous content var if any
	$maxPages_16_a05e35 = $search_newsresult->getMaxPages();
	$maxResults_16_a05e35 = $search_newsresult->getNumRows();
	foreach ($results_newsresult as $object[$objectDefinition_newsresult]) {
		$content = "";
		$replace["atm-search"] = array (
			"{resultid}" 	=> (isset($resultID_newsresult)) ? $resultID_newsresult : $object[$objectDefinition_newsresult]->getID(),
			"{firstresult}" => (!$count_16_a05e35) ? 1 : 0,
			"{lastresult}" 	=> ($count_16_a05e35 == sizeof($results_newsresult)-1) ? 1 : 0,
			"{resultcount}" => ($count_16_a05e35+1),
			"{maxpages}"    => $maxPages_16_a05e35,
			"{currentpage}" => ($search_newsresult->getAttribute('page')+1),
			"{maxresults}"  => $maxResults_16_a05e35,
		);
		//IF TAG START 17_c9e71c
		$ifcondition = CMS_polymod_definition_parsing::replaceVars("{firstresult} && !".CMS_polymod_definition_parsing::prepareVar(CMS_poly_definition_functions::getVarContent("request", "item", "int", @$item)), $replace);
		if ($ifcondition) {
			$func = create_function("","return (".$ifcondition.");");
			if ($func()) {
				$content .="
				<div id=\"maxResults\">{maxresults} r�sultat(s) pour votre recherche.</div>
				";
			}
		}//IF TAG END 17_c9e71c
		$content .="
		<div class=\"newsTitle\">
		<h2><a href=\"".CMS_tree::getPageValue($parameters['pageID'],"url")."?item=".$object[1]->getValue('id','')."\" title=\"".$object[1]->getValue('label','')."\">".$object[1]->getValue('label','')."</a></h2><span>".$object[1]->getValue('formatedDateStart','d/m/Y')."</span><div class=\"spacer\"></div>
		</div>
		<div class=\"newsContent\">
		";
		//IF TAG START 18_a82895
		$ifcondition = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar($object[1]->objectValues(4)->getValue('imageName','')), $replace);
		if ($ifcondition) {
			$func = create_function("","return (".$ifcondition.");");
			if ($func()) {
				$content .="
				<div class=\"imgRight shadowR\">
				<div class=\"shadowB\">
				<div class=\"shadowTR\">
				<div class=\"shadowBL\">
				<div class=\"shadowBR\">
				".$object[1]->objectValues(4)->getValue('imageHTML','')."
				</div>
				</div>
				</div>
				</div>
				</div>
				";
			}
		}//IF TAG END 18_a82895
		//IF TAG START 19_242b19
		$ifcondition = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar(CMS_poly_definition_functions::getVarContent("request", "item", "int", @$item))." == ".CMS_polymod_definition_parsing::prepareVar($object[1]->getValue('id','')), $replace);
		if ($ifcondition) {
			$func = create_function("","return (".$ifcondition.");");
			if ($func()) {
				$content .="
				<strong>".$object[1]->objectValues(2)->getValue('value','')."</strong>
				<br />".$object[1]->objectValues(3)->getValue('value','')."
				";
			}
		}//IF TAG END 19_242b19
		//IF TAG START 20_71edeb
		$ifcondition = CMS_polymod_definition_parsing::replaceVars("!".CMS_polymod_definition_parsing::prepareVar(CMS_poly_definition_functions::getVarContent("request", "item", "int", @$item)), $replace);
		if ($ifcondition) {
			$func = create_function("","return (".$ifcondition.");");
			if ($func()) {
				$content .="
				".$object[1]->objectValues(2)->getValue('value','')."
				";
			}
		}//IF TAG END 20_71edeb
		$content .="
		<a href=\"".CMS_tree::getPageValue($parameters['pageID'],"url")."?item=".$object[1]->getValue('id','')."\" class=\"blocLien\" title=\"En savoir plus concernant '".$object[1]->getValue('label','')."'\">
		<span class=\"blocLienTop\">".$object[1]->getValue('label','')."</span>
		<span class=\"blocLienBottom\">En savoir plus</span>
		</a>
		<div class=\"spacer\"></div>
		</div>
		";
		//IF TAG START 21_20567b
		$ifcondition = CMS_polymod_definition_parsing::replaceVars("{lastresult} && !".CMS_polymod_definition_parsing::prepareVar(CMS_poly_definition_functions::getVarContent("request", "item", "int", @$item)), $replace);
		if ($ifcondition) {
			$func = create_function("","return (".$ifcondition.");");
			if ($func()) {
				$content .="
				<div class=\"pages\" id=\"pages\">
				";
				//FUNCTION TAG START 22_006c6d
				$parameters_22_006c6d = array ('maxpages' => CMS_polymod_definition_parsing::replaceVars("{maxpages}", $replace),'currentpage' => CMS_polymod_definition_parsing::replaceVars("{currentpage}", $replace),'displayedpage' => CMS_polymod_definition_parsing::replaceVars("5", $replace),);
				if (method_exists(new CMS_poly_definition_functions(), "pages")) {
					$content .= CMS_polymod_definition_parsing::replaceVars(CMS_poly_definition_functions::pages($parameters_22_006c6d, array (
						0 =>
						array (
							'textnode' => '
							',
						),
						1 =>
						array (
							'nodename' => 'pages',
							'attributes' =>
							array (
							),
							'childrens' =>
							array (
								0 =>
								array (
									'nodename' => 'a',
									'attributes' =>
									array (
										'href' => CMS_tree::getPageValue($parameters['pageID'],"url").'?cat='.CMS_poly_definition_functions::getVarContent("request", "cat", "int", @$cat).'&keyword='.CMS_poly_definition_functions::getVarContent("request", "keyword", "string", @$keyword).'&page={n}',
									),
									'childrens' =>
									array (
										0 =>
										array (
											'textnode' => '{n}',
										),
									),
								),
								1 =>
								array (
									'textnode' => ' ',
								),
							),
						),
						2 =>
						array (
							'textnode' => '
							',
						),
						3 =>
						array (
							'nodename' => 'currentpage',
							'attributes' =>
							array (
							),
							'childrens' =>
							array (
								0 =>
								array (
									'nodename' => 'strong',
									'attributes' =>
									array (
									),
									'childrens' =>
									array (
										0 =>
										array (
											'textnode' => '{n}',
										),
									),
								),
								1 =>
								array (
									'textnode' => ' ',
								),
							),
						),
						4 =>
						array (
							'textnode' => '
							',
						),
						5 =>
						array (
							'nodename' => 'previous',
							'attributes' =>
							array (
							),
							'childrens' =>
							array (
								0 =>
								array (
									'nodename' => 'a',
									'attributes' =>
									array (
										'href' => CMS_tree::getPageValue($parameters['pageID'],"url").'?cat='.CMS_poly_definition_functions::getVarContent("request", "cat", "int", @$cat).'&keyword='.CMS_poly_definition_functions::getVarContent("request", "keyword", "string", @$keyword).'&page={n}',
									),
									'childrens' =>
									array (
										0 =>
										array (
											'nodename' => 'img',
											'attributes' =>
											array (
												'src' => '/img/interieur/newsPrevious.gif',
												'alt' => 'page pr�c�dente',
												'title' => 'page pr�c�dente',
											),
										),
									),
								),
								1 =>
								array (
									'textnode' => ' ',
								),
							),
						),
						6 =>
						array (
							'textnode' => '
							',
						),
						7 =>
						array (
							'nodename' => 'next',
							'attributes' =>
							array (
							),
							'childrens' =>
							array (
								0 =>
								array (
									'nodename' => 'a',
									'attributes' =>
									array (
										'href' => CMS_tree::getPageValue($parameters['pageID'],"url").'?cat='.CMS_poly_definition_functions::getVarContent("request", "cat", "int", @$cat).'&keyword='.CMS_poly_definition_functions::getVarContent("request", "keyword", "string", @$keyword).'&page={n}',
									),
									'childrens' =>
									array (
										0 =>
										array (
											'nodename' => 'img',
											'attributes' =>
											array (
												'src' => '/img/interieur/newsNext.gif',
												'alt' => 'page suivante',
												'title' => 'page suivante',
											),
										),
									),
								),
								1 =>
								array (
									'textnode' => ' ',
								),
							),
						),
						8 =>
						array (
							'textnode' => '
							',
						),
					)), $replace);
				} else {
					CMS_grandFather::raiseError("Malformed atm-function tag : can't found method pagesin CMS_poly_definition_functions");
				}
				//FUNCTION TAG END 22_006c6d
				$content .="
				</div>
				";
			}
		}//IF TAG END 21_20567b
		$count_16_a05e35++;
		//do all result vars replacement
		$content_16_a05e35.= CMS_polymod_definition_parsing::replaceVars($content, $replace);
	}
	$content = $content_16_a05e35; //retrieve previous content var if any
	$replace = $replace_16_a05e35; //retrieve previous replace vars if any
	$object[$objectDefinition_newsresult] = $object_16_a05e35; //retrieve previous object search if any
}
//RESULT newsresult TAG END 16_a05e35
//NO-RESULT newsresult TAG START 23_4ec16d
//launch search newsresult if not already done
if($launchSearch_newsresult && !isset($results_newsresult)) {
	if (isset($search_newsresult)) {
		$results_newsresult = $search_newsresult->search();
	} else {
		CMS_grandFather::raiseError("Malformed atm-noresult tag : can't use this tag outside of atm-search \"newsresult\" tag ...");
		$results_newsresult = array();
	}
} elseif (!$launchSearch_newsresult) {
	$results_newsresult = array();
}
if (!$results_newsresult) {
	$content .="Aucun r�sultat trouv� pour votre recherche ...";
}
//NO-RESULT newsresult TAG END 23_4ec16d
//destroy search and results newsresult objects
unset($search_newsresult);
unset($results_newsresult);
//SEARCH newsresult TAG END 15_326c03
//AJAX TAG END 14_33d7dd
$content .="
</div>
";
echo CMS_polymod_definition_parsing::replaceVars($content, $replace);
  ?>	
			<br />
<hr />
<div align="center">
	<small>
		
		
				Page  "Actualit�s" (http://127.0.0.1/web/fr/5-actualite.php)
				

<br />
		Tir� du site http://<?php echo $_SERVER["HTTP_HOST"];   ?>
	</small>
</div>
<script language="JavaScript">window.print();</script>
<?php if (SYSTEM_DEBUG && STATS_DEBUG) {view_stat();}  ?>
</body>
</html>