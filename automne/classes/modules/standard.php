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
// | Author: Antoine Pouch <antoine.pouch@ws-interactive.fr> &            |
// | Author: S�bastien Pauchet <sebastien.pauchet@ws-interactive.fr>      |
// +----------------------------------------------------------------------+
//
// $Id: standard.php,v 1.1.1.1 2008/11/26 17:12:06 sebastien Exp $

/**
  * Class CMS_module_standard
  *
  * represent the standard module.
  *
  * @package CMS
  * @subpackage module
  * @author Antoine Pouch <antoine.pouch@ws-interactive.fr> &
  * @author S�bastien Pauchet <sebastien.pauchet@ws-interactive.fr>
  */

/**
  * Codename of the standard module
  */
define("MOD_STANDARD_CODENAME", "standard");

class CMS_module_standard extends CMS_module
{
	/**
	  * Messages
	  */
	const MESSAGE_MOD_STANDARD_VALIDATION_LOCATIONCHANGE = 42;
	const MESSAGE_MOD_STANDARD_VALIDATION_LOCATIONCHANGE_OFPAGE = 43;
	const MESSAGE_MOD_STANDARD_VALIDATION_EDITION = 44;
	const MESSAGE_MOD_STANDARD_VALIDATION_EDITION_OFPAGE = 45;
	const MESSAGE_MOD_STANDARD_VALIDATION_SIBLINGSORDER = 46;
	const MESSAGE_MOD_STANDARD_VALIDATION_SIBLINGSORDER_OFPAGE = 47;
	const MESSAGE_MOD_STANDARD_URL_PREVIZ = 48;
	const MESSAGE_MOD_STANDARD_URL_ONLINE = 49;
	const MESSAGE_MOD_STANDARD_URL_EDIT = 261;
	const MESSAGE_MOD_STANDARD_EMAIL_REMINDER_SUBJECT = 923;
	const MESSAGE_MOD_STANDARD_EMAIL_REMINDER_BODY = 924;
	const MESSAGE_MOD_STANDARD_EMAIL_REMINDER_BODY_MESSAGE = 925;
	const MESSAGE_MOD_STANDARD_ROWS_EXPLANATION = 1219;
	const MESSAGE_MOD_STANDARD_TEMPLATE_EXPLANATION = 1222;
	const MESSAGE_MOD_STANDARD_PLUGIN = 1403;
	
	/**
	  * Gets the administration frontend path. No centralized admin for the standard module.
	  *
	  * @param integer $relativeTo Can be to webroot or filesystem. See constants.
	  * @return string The administration frontend path
	  * @access public
	  */
	function getAdminFrontendPath($relativeTo)
	{
		return false;
	}
	
	/**
	  * Gets resource by its internal ID (not the resource table DB ID)
	  *
	  * @param integer $resourceID The DB ID of the resource in the module table(s)
	  * @return CMS_resource The CMS_resource subclassed object
	  * @access public
	  */
	function getResourceByID($resourceID)
	{
		parent::getResourceByID($resourceID);
		return CMS_tree::getPageByID($resourceID);
	}
	
	/**
	  * Gets a tag representation instance
	  *
	  * @param CMS_XMLTag $tag The xml tag from which to build the representation
	  * @param array(mixed) $args The arguments needed to build
	  * @return object The module tag representation instance
	  * @access public
	  */
	function getTagRepresentation($tag, $args)
	{
		switch ($tag->getName()) {
		case "atm-clientspace":
			if ($args["template"] && $tag->getAttribute("id")) {
				$args["editedMode"] = (isset($args["editedMode"])) ? $args["editedMode"] : null;
				$instance = new CMS_moduleClientspace_standard($args["template"], $tag->getAttribute("id"), $args["editedMode"]);
				return $instance;
			} else {
				return false;
			}
			break;
		case "block":
			if ($tag->getAttribute("type")) {
				//try to guess the class to instanciate
				$class_name = "CMS_block_".$tag->getAttribute("type");
				if (class_exists($class_name)) {
					$instance = new $class_name();
				} else {
					//not found. Place here block types requiring special attention
					switch ($tag->getAttribute("type")) {
					default:
						$this->raiseError("Unknown block type : ".$tag->getAttribute("type"));
						return false;
						break;
					}
				}
				$instance->initializeFromTag($tag->getAttributes(), $tag->getInnerContent());
				return $instance;
			} else {
				return false;
			}
			break;
		}
	}
	
	/**
	  * Gets the module validations
	  *
	  * @param CMS_user $user The user we want the validations for
	  * @return array(CMS_resourceValidation) The resourceValidations objects, false if none found
	  * @access public
	  */
	function getValidations($user)
	{
		if (!is_a($user, "CMS_profile_user")) {
			$this->raiseError("User is not a valid CMS_profile_user object");
			return false;
		}
		if (!$user->hasValidationClearance($this->_codename)) {
			return false;
		}
		
		$all_validations = array();
		$validations = $this->getValidationsByEditions($user, RESOURCE_EDITION_LOCATION);
		if ($validations) {
			$all_validations = array_merge($all_validations, $validations);
		}
		
		$validations = $this->getValidationsByEditions($user, RESOURCE_EDITION_CONTENT);
		if ($validations) {
			$all_validations = array_merge($all_validations, $validations);
		}
		
		$validations = $this->getValidationsByEditions($user, RESOURCE_EDITION_SIBLINGSORDER);
		if ($validations) {
			$all_validations = array_merge($all_validations, $validations);
		}
		
		if (!$all_validations) {
			return false;
		} else {
			return $all_validations;
		}
	}
	
	/**
	  * Gets the module validations info
	  *
	  * @param CMS_user $user The user we want the validations for
	  * @return array(CMS_resourceValidation) The resourceValidations objects, false if none found
	  * @access public
	  */
	function getValidationsInfo($user)
	{
		if (!is_a($user, "CMS_profile_user")) {
			$this->raiseError("User is not a valid CMS_profile_user object");
			return false;
		}
		if (!$user->hasValidationClearance($this->_codename)) {
			return false;
		}
		$all_validations = array();
		$validations = $this->getValidationsInfoByEditions($user, RESOURCE_EDITION_LOCATION);
		if ($validations) {
			$all_validations = array_merge($all_validations, $validations);
		}
		
		$validations = $this->getValidationsInfoByEditions($user, RESOURCE_EDITION_CONTENT);
		if ($validations) {
			$all_validations = array_merge($all_validations, $validations);
		}
		
		$validations = $this->getValidationsInfoByEditions($user, RESOURCE_EDITION_SIBLINGSORDER);
		if ($validations) {
			$all_validations = array_merge($all_validations, $validations);
		}
		
		if (!$all_validations) {
			return false;
		} else {
			return $all_validations;
		}
	}
	
	/**
	  * Gets a validation for a given page
	  *
	  * @param integer $pageID The page we want the validations for
	  * @param CMS_user $user The user we want the validations for
	  * @param integer $getEditionType The validation type we want.
	  *  by default function return RESOURCE_EDITION_LOCATION then RESOURCE_EDITION_CONTENT then RESOURCE_EDITION_SIBLINGSORDER
	  * @return array(CMS_resourceValidation) The resourceValidations objects, false if none found for the given user.
	  * @access public
	  */
	function getValidationByID($pageID, &$user, $getEditionType=false)
	{
		if (!is_a($user, "CMS_profile_user")) {
			$this->raiseError("User is not a valid CMS_profile_user object");
			return false;
		}
		if (!$user->hasValidationClearance($this->_codename)) {
			return false;
		}
		if (!$getEditionType) {
			$getEditionType = RESOURCE_EDITION_LOCATION + RESOURCE_EDITION_CONTENT + RESOURCE_EDITION_SIBLINGSORDER;
		}
		
		$sql = "
				select
					id_pag as id,
					location_rs as location,
					proposedFor_rs as proposedFor,
					validationsRefused_rs as validationsRefused,
					editions_rs as editions
				from
					pages,
					resources,
					resourceStatuses
				where
					id_pag = '".$pageID."'
					and resource_pag = id_res
					and status_res = id_rs
			";
		$q = new CMS_query($sql);
		if ($q->getNumRows() == 1) {
			$r = $q->getArray();
			$id = $r["id"];
			
			//search the type of edition
			
			//RESOURCE_EDITION_LOCATION
			if (($r["location"] == RESOURCE_LOCATION_USERSPACE
				&&	$r["proposedFor"] != 0
				&&	!($r["validationsRefused"] & RESOURCE_EDITION_LOCATION)) && ($getEditionType & RESOURCE_EDITION_LOCATION)) {
				
				//check if the page is editable by the user. If not, can't validate it
				if (!$user->hasPageClearance($id, CLEARANCE_PAGE_EDIT)) {
					return false;
				}
				
				$language = $user->getLanguage();
				
				$page = $this->getResourceByID($id);
				$validation = new CMS_resourceValidation($this->_codename, RESOURCE_EDITION_LOCATION, $page);
				if (!$validation->hasError()) {
					$validation->setValidationTypeLabel($language->getMessage(self::MESSAGE_MOD_STANDARD_VALIDATION_LOCATIONCHANGE));
					$validation->setValidationLabel($language->getMessage(self::MESSAGE_MOD_STANDARD_VALIDATION_LOCATIONCHANGE_OFPAGE)." ".$page->getTitle());
					$validation->setValidationShortLabel($page->getTitle());
					$validation->addHelpUrl($language->getMessage(self::MESSAGE_MOD_STANDARD_URL_PREVIZ),
						PATH_ADMIN_WR.'/page-previsualization.php?currentPage='.$id);
					if ($page->getPublication() == RESOURCE_PUBLICATION_PUBLIC) {
						$validation->addHelpUrl($language->getMessage(self::MESSAGE_MOD_STANDARD_URL_ONLINE),
							$page->getURL());
					}
					//Back to edition location
					$validation->addHelpUrl($language->getMessage(self::MESSAGE_MOD_STANDARD_URL_EDIT), 
							PATH_ADMIN_WR.'/page-content.php?page='.$id, "_self", 'Automne.tabPanels.setActiveTab(\'edit\');Automne.utils.getPageById('. $id .');');
					$validation->setEditorsStack($page->getEditorsStack());
					return $validation;
				} else {
					return false;
				}
			
			//RESOURCE_EDITION_CONTENT || RESOURCE_EDITION_BASEDATA
			} elseif(($r["location"] == RESOURCE_LOCATION_USERSPACE
					&&	$r["proposedFor"] == 0
					&&	(
						   ($r["editions"] & RESOURCE_EDITION_CONTENT && !($r["validationsRefused"] & RESOURCE_EDITION_CONTENT))
						|| ($r["editions"] & RESOURCE_EDITION_BASEDATA && !($r["validationsRefused"] & RESOURCE_EDITION_BASEDATA))
						)
					) && ($getEditionType & RESOURCE_EDITION_CONTENT || $getEditionType & RESOURCE_EDITION_BASEDATA)) {
				
				//check if the page is editable by the user. If not, can't validate it
				if (!$user->hasPageClearance($id, CLEARANCE_PAGE_EDIT)) {
					return false;
				}
				
				$language = $user->getLanguage();
				
				$editions = $r["editions"];//RESOURCE_EDITION_CONTENT + RESOURCE_EDITION_BASEDATA;
				
				$page = $this->getResourceByID($id);
				$validation = new CMS_resourceValidation($this->_codename, $editions, $page);
				if (!$validation->hasError()) {
					$validation->setValidationTypeLabel($language->getMessage(self::MESSAGE_MOD_STANDARD_VALIDATION_EDITION));
					$validation->setValidationLabel($language->getMessage(self::MESSAGE_MOD_STANDARD_VALIDATION_EDITION_OFPAGE)." ".$page->getTitle());
					$validation->setValidationShortLabel($page->getTitle());
					$validation->addHelpUrl($language->getMessage(self::MESSAGE_MOD_STANDARD_URL_PREVIZ),
						PATH_ADMIN_WR.'/page-previsualization.php?currentPage='.$id);
					if ($page->getPublication() == RESOURCE_PUBLICATION_PUBLIC) {
						$validation->addHelpUrl($language->getMessage(self::MESSAGE_MOD_STANDARD_URL_ONLINE),
							$page->getURL());
					}
                    //Back to edition location
                    $validation->addHelpUrl($language->getMessage(self::MESSAGE_MOD_STANDARD_URL_EDIT), 
                        PATH_ADMIN_WR.'/page-content.php?page='.$id, "_self", 'Automne.tabPanels.setActiveTab(\'edit\');Automne.utils.getPageById('. $id .');');
                    $validation->setEditorsStack($page->getEditorsStack());
					return $validation;
				} else {
					return false;
				}
			
			//RESOURCE_EDITION_SIBLINGSORDER
			} elseif (($r["location"] == RESOURCE_LOCATION_USERSPACE
					&&	$r["proposedFor"] == 0
					&&	$r["editions"] & RESOURCE_EDITION_SIBLINGSORDER
					&&	!($r["validationsRefused"] & RESOURCE_EDITION_SIBLINGSORDER)) && ($getEditionType & RESOURCE_EDITION_SIBLINGSORDER)) {
				
				//check if the page is editable by the user. If not, can't validate it
				if (!$user->hasPageClearance($id, CLEARANCE_PAGE_EDIT)) {
					return false;
				}
				
				$language = $user->getLanguage();
				
				$editions = RESOURCE_EDITION_SIBLINGSORDER;
				
				$page = $this->getResourceByID($id);
				$validation = new CMS_resourceValidation($this->_codename, $editions, $page);
				if (!$validation->hasError()) {
					$validation->setValidationTypeLabel($language->getMessage(self::MESSAGE_MOD_STANDARD_VALIDATION_SIBLINGSORDER));
					$validation->setValidationLabel($language->getMessage(self::MESSAGE_MOD_STANDARD_VALIDATION_SIBLINGSORDER_OFPAGE)." ".$page->getTitle());
					$validation->setValidationShortLabel($page->getTitle());
					$validation->addHelpUrl($language->getMessage(self::MESSAGE_MOD_STANDARD_URL_PREVIZ),
						PATH_ADMIN_WR.'/page-previsualization.php?currentPage='.$id);
					if ($page->getPublication() == RESOURCE_PUBLICATION_PUBLIC) {
						$validation->addHelpUrl($language->getMessage(self::MESSAGE_MOD_STANDARD_URL_ONLINE),
							$page->getURL());
					}
					//Back to edition location
					$validation->addHelpUrl($language->getMessage(self::MESSAGE_MOD_STANDARD_URL_EDIT), 
							PATH_ADMIN_WR.'/page-content.php?page='.$id, "_self", 'Automne.tabPanels.setActiveTab(\'edit\');Automne.utils.getPageById('. $id .');');
					$validation->setEditorsStack($page->getEditorsStack());
					return $validation;
				} else {
					return false;
				}
			}
		} elseif ($q->getNumRows() ==0) {
			return false;
		} else {
			$this->raiseError("Can't have more than one page for a given ID");
			return false;
		}
	}
	
	/**
	  * Gets the module validations Info for the given editions and user
	  *
	  * @param CMS_user $user The user we want the validations for
	  * @param integer $editions The editions we want the validations of
	  * @return array(CMS_resourceValidation) The resourceValidations objects, false if noen found
	  * @access public
	  */
	function getValidationsInfoByEditions(&$user, $editions)
	{
		$language = $user->getLanguage();
		$validations = array();
		if ($editions & RESOURCE_EDITION_LOCATION) {
			//Location change
			$sql = "
				select
					id_pag
				from
					pages,
					resources,
					resourceStatuses
				where
					resource_pag = id_res
					and status_res = id_rs
					and location_rs = '".RESOURCE_LOCATION_USERSPACE."'
					and proposedFor_rs != 0
					and not (validationsRefused_rs & ".RESOURCE_EDITION_LOCATION.")
			";
			$q = new CMS_query($sql);
			while ($id = $q->getValue("id_pag")) {
				//check if the page is editable by the user. If not, can't validate it
				if (!$user->hasPageClearance($id, CLEARANCE_PAGE_EDIT)) {
					continue;
				}
				
				//$page = $this->getResourceByID($id);
				$validation = new CMS_resourceValidationInfo($this->_codename, RESOURCE_EDITION_LOCATION, $id);
				if (!$validation->hasError()) {
					$validation->setValidationTypeLabel($language->getMessage(self::MESSAGE_MOD_STANDARD_VALIDATION_LOCATIONCHANGE));
					$validations[] = $validation;
				}
			}
		}
		
		if ($editions & RESOURCE_EDITION_CONTENT || $editions & RESOURCE_EDITION_BASEDATA) {
			//content and/or base data change
			$sql = "
				select
					id_pag,
					editions_rs,
					publication_rs
				from
					pages,
					resources,
					resourceStatuses
				where
					resource_pag = id_res
					and status_res = id_rs
					and location_rs = '".RESOURCE_LOCATION_USERSPACE."'
					and proposedFor_rs = 0
					and ((editions_rs & ".RESOURCE_EDITION_CONTENT."
							and not (validationsRefused_rs & ".RESOURCE_EDITION_CONTENT."))
						or (editions_rs & ".RESOURCE_EDITION_BASEDATA."
							and not (validationsRefused_rs & ".RESOURCE_EDITION_BASEDATA.")))
			";
			$q = new CMS_query($sql);
			while ($data = $q->getArray()) {
				$id = $data["id_pag"];
				//check if the page is editable by the user. If not, can't validate it
				if (!$user->hasPageClearance($id, CLEARANCE_PAGE_EDIT)) {
					continue;
				}
				//check if the page is not in draft only state. If it is, can't validate it
				if ($data['publication_rs'] == RESOURCE_PUBLICATION_NEVERVALIDATED) {
					$page = $this->getResourceByID($id);
					if ($page->isDraft()) {
						continue;
					}
				}
				
				$editions = RESOURCE_EDITION_CONTENT + RESOURCE_EDITION_BASEDATA;
				$validation = new CMS_resourceValidationInfo($this->_codename, $editions, $id);
				
				if (!$validation->hasError()) {
					$validation->setValidationTypeLabel($language->getMessage(self::MESSAGE_MOD_STANDARD_VALIDATION_EDITION));
					$validations[] = $validation;
				}
			}
		}
		if ($editions & RESOURCE_EDITION_SIBLINGSORDER) {
			//siblings order change
			$sql = "
				select
					id_pag
				from
					pages,
					resources,
					resourceStatuses
				where
					resource_pag = id_res
					and status_res = id_rs
					and location_rs = '".RESOURCE_LOCATION_USERSPACE."'
					and proposedFor_rs = 0
					and editions_rs & ".RESOURCE_EDITION_SIBLINGSORDER."
					and not (validationsRefused_rs & ".RESOURCE_EDITION_SIBLINGSORDER.")
			";
			$q = new CMS_query($sql);
			while ($data = $q->getArray()) {
				$id = $data["id_pag"];
				//check if the page is editable by the user. If not, can't validate it
				if (!$user->hasPageClearance($id, CLEARANCE_PAGE_EDIT)) {
					continue;
				}
				
				$editions = RESOURCE_EDITION_SIBLINGSORDER;
				
				//$page = $this->getResourceByID($id);
				$validation = new CMS_resourceValidationInfo($this->_codename, $editions, $id);
				if (!$validation->hasError()) {
					$validation->setValidationTypeLabel($language->getMessage(self::MESSAGE_MOD_STANDARD_VALIDATION_SIBLINGSORDER));
					$validations[] = $validation;
				}
			}
		}
		
		return $validations;
	}
	
	/**
	  * Gets the module validations for the given editions and user
	  *
	  * @param CMS_user $user The user we want the validations for
	  * @param integer $editions The editions we want the validations of
	  * @return array(CMS_resourceValidation) The resourceValidations objects, false if noen found
	  * @access public
	  */
	function getValidationsByEditions(&$user, $editions)
	{
		$language = $user->getLanguage();
		$validations = array();
		$nb_loc = $nb_cont = $nb_ord = '0';
		
		if ($editions & RESOURCE_EDITION_LOCATION) {
			//Location change
			$sql_loc = "
				select
					id_pag
				from
					pages,
					resources,
					resourceStatuses
				where
					resource_pag = id_res
					and status_res = id_rs
					and location_rs = '".RESOURCE_LOCATION_USERSPACE."'
					and proposedFor_rs != 0
					and not (validationsRefused_rs & ".RESOURCE_EDITION_LOCATION.")
			";
			$q_loc = new CMS_query($sql_loc);
			$nb_loc = $q_loc->getNumRows();
		}
		
		if ($editions & RESOURCE_EDITION_CONTENT || $editions & RESOURCE_EDITION_BASEDATA) {
			//content and/or base data change
			$sql_cont = "
				select
					id_pag,
					editions_rs
				from
					pages,
					resources,
					resourceStatuses
				where
					resource_pag = id_res
					and status_res = id_rs
					and location_rs = '".RESOURCE_LOCATION_USERSPACE."'
					and proposedFor_rs = 0
					and ((editions_rs & ".RESOURCE_EDITION_CONTENT."
							and not (validationsRefused_rs & ".RESOURCE_EDITION_CONTENT."))
						or (editions_rs & ".RESOURCE_EDITION_BASEDATA."
							and not (validationsRefused_rs & ".RESOURCE_EDITION_BASEDATA.")))
			";
			$q_cont = new CMS_query($sql_cont);
			$nb_cont = $q_cont->getNumRows();
		}
		
		if ($editions & RESOURCE_EDITION_SIBLINGSORDER) {
			//siblings order change
			$sql_ord = "
				select
					id_pag
				from
					pages,
					resources,
					resourceStatuses
				where
					resource_pag = id_res
					and status_res = id_rs
					and location_rs = '".RESOURCE_LOCATION_USERSPACE."'
					and proposedFor_rs = 0
					and editions_rs & ".RESOURCE_EDITION_SIBLINGSORDER."
					and not (validationsRefused_rs & ".RESOURCE_EDITION_SIBLINGSORDER.")
			";
			$q_ord = new CMS_query($sql_ord);
			$nb_ord = $q_ord->getNumRows();
		}
		
		//Location change
		if ($nb_loc) {
			while ($id = $q_loc->getValue("id_pag")) {
				//check if the page is editable by the user. If not, can't validate it
				if (!$user->hasPageClearance($id, CLEARANCE_PAGE_EDIT)) {
					continue;
				}
				
				$page = $this->getResourceByID($id);
				$validation = new CMS_resourceValidation($this->_codename, RESOURCE_EDITION_LOCATION, $page);
				if (!$validation->hasError()) {
					$validation->setValidationTypeLabel($language->getMessage(self::MESSAGE_MOD_STANDARD_VALIDATION_LOCATIONCHANGE));
					$validation->setValidationLabel($language->getMessage(self::MESSAGE_MOD_STANDARD_VALIDATION_LOCATIONCHANGE_OFPAGE)." ".$page->getTitle());
					$validation->setValidationShortLabel($page->getTitle());
					$validation->addHelpUrl($language->getMessage(self::MESSAGE_MOD_STANDARD_URL_PREVIZ),
						PATH_ADMIN_WR.'/page-previsualization.php?currentPage='.$id);
					if ($page->getPublication() == RESOURCE_PUBLICATION_PUBLIC) {
						$validation->addHelpUrl($language->getMessage(self::MESSAGE_MOD_STANDARD_URL_ONLINE),
							$page->getURL());
					}
					//Back to edition location
					$validation->addHelpUrl($language->getMessage(self::MESSAGE_MOD_STANDARD_URL_EDIT), 
							PATH_ADMIN_WR.'/page-content.php?page='.$id, "_self", 'Automne.tabPanels.setActiveTab(\'edit\');Automne.utils.getPageById('. $id .');');
					$validation->setEditorsStack($page->getEditorsStack());
					$validations[] = $validation;
				}
			}
		}
		
		//content and/or base data change
		if ($nb_cont) {
			while ($data = $q_cont->getArray()) {
				$id = $data["id_pag"];
				//check if the page is editable by the user. If not, can't validate it
				if (!$user->hasPageClearance($id, CLEARANCE_PAGE_EDIT)) {
					continue;
				}
				
				$editions = RESOURCE_EDITION_CONTENT + RESOURCE_EDITION_BASEDATA;
				
				$page = $this->getResourceByID($id);
				$validation = new CMS_resourceValidation($this->_codename, $editions, $page);
				if (!$validation->hasError()) {
					$validation->setValidationTypeLabel($language->getMessage(self::MESSAGE_MOD_STANDARD_VALIDATION_EDITION));
					$validation->setValidationLabel($language->getMessage(self::MESSAGE_MOD_STANDARD_VALIDATION_EDITION_OFPAGE)." ".$page->getTitle());
					$validation->setValidationShortLabel($page->getTitle());
					$validation->addHelpUrl($language->getMessage(self::MESSAGE_MOD_STANDARD_URL_PREVIZ),
						PATH_ADMIN_WR.'/page-previsualization.php?currentPage='.$id);
					if ($page->getPublication() == RESOURCE_PUBLICATION_PUBLIC) {
						$validation->addHelpUrl($language->getMessage(self::MESSAGE_MOD_STANDARD_URL_ONLINE),
							$page->getURL());
					}
					//Back to edition location
					$validation->addHelpUrl($language->getMessage(self::MESSAGE_MOD_STANDARD_URL_EDIT), 
							PATH_ADMIN_WR.'/page-content.php?page='.$id, "_self", 'Automne.tabPanels.setActiveTab(\'edit\');Automne.utils.getPageById('. $id .');');
					$validation->setEditorsStack($page->getEditorsStack());
					$validations[] = $validation;
				}
			}
		}
		
		//siblings order change
		if ($nb_ord) {
			while ($data = $q_ord->getArray()) {
				$id = $data["id_pag"];
				//check if the page is editable by the user. If not, can't validate it
				if (!$user->hasPageClearance($id, CLEARANCE_PAGE_EDIT)) {
					continue;
				}
				
				$editions = RESOURCE_EDITION_SIBLINGSORDER;
				
				$page = $this->getResourceByID($id);
				$validation = new CMS_resourceValidation($this->_codename, $editions, $page);
				if (!$validation->hasError()) {
					$validation->setValidationTypeLabel($language->getMessage(self::MESSAGE_MOD_STANDARD_VALIDATION_SIBLINGSORDER));
					$validation->setValidationLabel($language->getMessage(self::MESSAGE_MOD_STANDARD_VALIDATION_SIBLINGSORDER_OFPAGE)." ".$page->getTitle());
					$validation->setValidationShortLabel($page->getTitle());
					$validation->addHelpUrl($language->getMessage(self::MESSAGE_MOD_STANDARD_URL_PREVIZ),
						PATH_ADMIN_WR.'/page-previsualization.php?currentPage='.$id);
					if ($page->getPublication() == RESOURCE_PUBLICATION_PUBLIC) {
						$validation->addHelpUrl($language->getMessage(self::MESSAGE_MOD_STANDARD_URL_ONLINE),
							$page->getURL());
					}
					//Back to edition location
					$validation->addHelpUrl($language->getMessage(self::MESSAGE_MOD_STANDARD_URL_EDIT), 
							PATH_ADMIN_WR.'/page-content.php?page='.$id, "_self", 'Automne.tabPanels.setActiveTab(\'edit\');Automne.utils.getPageById('. $id .');');
					$validation->setEditorsStack($page->getEditorsStack());
					$validations[] = $validation;
				}
			}
		}
		
		return $validations;
	}
	
	/**
	  * Process the module validations : here, calls the parent function but before :
	  * - Pass all the editors to remindedEditors
	  * - computes all the pages that got to be regenerated.
	  *
	  * @param CMS_resourceValidation $resourceValidation The resource validation to process
	  * @param integer $result The result of the validation process. See VALIDATION_OPTION constants
	  * @param boolean $lastValidation Is this the last validation done in a load of multiple validations (or the only one) ?
	  *        if true, launch the regeneration script.
	  * @return boolean true on success, false on failure to process
	  * @access public
	  */
	function processValidation($resourceValidation, $result, $lastValidation = true)
	{
		if (!is_a($resourceValidation, "CMS_resourceValidation")) {
			$this->raiseError("ResourceValidation is not a valid CMS_resourceValidation object");
			return false;
		}
		
		$editions = $resourceValidation->getEditions();
		$page = $resourceValidation->getResource();
		$publication_before = $page->getPublication();
		$location_before = $page->getLocation();
		
		//Get the linked pages (it will be too late after parent processing if pages move outside USERSPACE
		
		//first add the page to regen
		$regen_pages = array();
		if ($result == VALIDATION_OPTION_ACCEPT) {
			//2.1. If editions contains SIBLINGSORDER, all pages monitoring this one for father changes should regen
			if ($editions & RESOURCE_EDITION_SIBLINGSORDER) {
				$temp_regen = CMS_linxesCatalog::getWatchers($page);
				if ($temp_regen) {
					$regen_pages = array_merge($regen_pages, $temp_regen);
				}
			}
			
			//2.2. If editions contains BASEDATA, all pages linked with this one should regen, and all monitoring its father
			if (($editions & RESOURCE_EDITION_BASEDATA) || ($editions & RESOURCE_EDITION_LOCATION)) {
				$temp_regen = CMS_linxesCatalog::getLinkers($page);
				if ($temp_regen) {
					$regen_pages = array_merge($regen_pages, $temp_regen);
				}
				
				$father = CMS_tree::getAncestor($page, 1);
				if ($father) {
					$temp_regen = CMS_linxesCatalog::getWatchers($father);
					if ($temp_regen) {
						$regen_pages = array_merge($regen_pages, $temp_regen);
					}
				}
			}
			
			//2.3. If editions contains CONTENT, only the page should be regen
			if ($editions & RESOURCE_EDITION_CONTENT) {
				//do nothing, the page is already in the array
			}
			
			$regen_pages = array_unique($regen_pages);
		}

		//call the parent function, but empty the reminded editors stack before
		if ($result == VALIDATION_OPTION_ACCEPT) {
			$stack = $page->getRemindedEditorsStack();
			$stack->emptyStack();
			$page->setRemindedEditorsStack($stack);
			$page->writeToPersistence();
		}
		if (!parent::processValidation($resourceValidation, $result)) {
			return false;
		}

		//re-instanciate the page object that have changed
		$page = CMS_tree::getPageByID($resourceValidation->getResourceID());
		
		//if validation was not accepted, nothing more to do
		if ($result != VALIDATION_OPTION_ACCEPT) {
			return true;
		}

		//page was moved out of userspace
		if ($editions & RESOURCE_EDITION_LOCATION) {
			if ($page->getLocation() != RESOURCE_LOCATION_USERSPACE && $location_before == RESOURCE_LOCATION_USERSPACE) {
				$page->deleteFiles();
				CMS_linxesCatalog::deleteLinxes($page, true);
				if ($publication_before != RESOURCE_PUBLICATION_NEVERVALIDATED) {
					CMS_tree::detachPageFromTree($page, true);
				}
				CMS_tree::detachPageFromTree($page, false);
				
				//can't regenerate the page now
				if (in_array($page->getID(), $regen_pages)) {
					$regen = array();
					foreach ($regen_pages as $rp) {
						if ($rp != $page->getID()) {
							$regen[] = $rp;
						}
					}
					$regen_pages = $regen;
				}
			}
		} elseif (($editions & RESOURCE_EDITION_BASEDATA && $publication_before != RESOURCE_PUBLICATION_NEVERVALIDATED && $page->getPublication() != RESOURCE_PUBLICATION_PUBLIC && CMS_tree::isInPublicTree($page))) {
			//detach page if publication dates changed and page no longer published
			$page->deleteFiles();
			CMS_linxesCatalog::deleteLinxes($page, true);
			CMS_tree::detachPageFromTree($page, true);
			
			//can't regenerate the page now
			if (in_array($page->getID(), $regen_pages)) {
				$regen = array();
				foreach ($regen_pages as $rp) {
					if ($rp != $page->getID()) {
						$regen[] = $rp;
					}
				}
				$regen_pages = $regen;
			}
		} else {
			//LINX_TREE RECORDS GENERATION
			//1. If the page has never been validated
			
			if ($publication_before == RESOURCE_PUBLICATION_NEVERVALIDATED) {
				//test the father's editions. If SIBLINGSORDER, only attach the page, else validate all of siblings orders
				$father = CMS_tree::getAncestor($page, 1);
				$father_status = $father->getStatus();
				if ($father_status->getEditions() & RESOURCE_EDITION_SIBLINGSORDER) {
					CMS_tree::attachPageToTree($page, $father, true);
				} else {
					CMS_tree::publishSiblingsOrder($father);
				}
			}
			//2. If the page has been validated, attach it to the public tree
			
			$grand_root = CMS_tree::getRoot();
			if ($page->getPublication() == RESOURCE_PUBLICATION_PUBLIC && $page->getID() != $grand_root->getID()) {
				$father = CMS_tree::getAncestor($page, 1);
				CMS_tree::attachPageToTree($page, $father, true);
			}
			
			//PAGE REGENERATION
			//3. the page itself (fromscratch needed).
			$launchRegnerator = ($lastValidation && !$regen_pages) ? true:false;
			CMS_tree::submitToRegenerator($page->getID(), true, $launchRegnerator);
		}
		
		//2. the linked pages
		CMS_tree::submitToRegenerator($regen_pages, false,!$lastValidation);
		
		return true;
	}
	
	/**
	  * Process the daily routine, which typically put out of userspace resources which have a past publication date
	  *
	  * @return void
	  * @access public
	  */
	function processDailyRoutine()
	{
		//see if the action was done today
		$sql = "
			select
				1
			from
				actionsTimestamps
			where
				to_days(date_at) = to_days(now())
				and type_at='DAILY_ROUTINE'
		";
		$q = new CMS_query($sql);
		if ($q->getNumRows()) {
			return;
		}
		
		CMS_module_standard::_dailyRoutineUnpublish();
		CMS_module_standard::_dailyRoutinePublish();
		CMS_module_standard::_dailyRoutineReminders();
		CMS_module_standard::_dailyRoutineOptimize();
		CMS_module_standard::_dailyRoutineClean();
		//update the timestamp
		$sql = "
			delete from
				actionsTimestamps
			where
				type_at='DAILY_ROUTINE'
		";
		$q = new CMS_query($sql);
		
		$sql = "
			insert into
				actionsTimestamps
			set
				type_at='DAILY_ROUTINE',
				date_at=now()
		";
		$q = new CMS_query($sql);
	}
	
	/**
	  * Process the daily routine publication part : publish page that needs to be
	  *
	  * @return void
	  * @access private
	  */
	protected function _dailyRoutinePublish()
	{
		$today = new CMS_date();
		$today->setNow();
		
		//process all pages that have to be published
		$sql = "
			select
				id_pag
			from
				pages,
				resources,
				resourceStatuses
			where
				resource_pag=id_res
				and status_res=id_rs
				and location_rs='".RESOURCE_LOCATION_USERSPACE."'
				and publication_rs='".RESOURCE_PUBLICATION_VALIDATED."'
				and	publicationDateStart_rs <= '".$today->getDBValue(true)."'
				and (publicationDateEnd_rs >= '".$today->getDBValue(true)."' or publicationDateEnd_rs = '0000-00-00')
		";
		
		$q = new CMS_query($sql);
		$published = array();
		while ($id = $q->getValue("id_pag")) {
			$published[] = $id;
		}
		
		$regen_pages = array();
		foreach ($published as $page_id) {
			$page = CMS_tree::getPageByID($page_id);
			
			//apply changes on the page
			$father = CMS_tree::getAncestor($page, 1);
			CMS_tree::attachPageToTree($page, $father, true);
			CMS_tree::submitToRegenerator($page->getID(), true);
			
			//calculate the pages to regenerate
			$temp_regen = CMS_linxesCatalog::getLinkers($page);
			if ($temp_regen) {
				$regen_pages = array_merge($regen_pages, $temp_regen);
			}
			$father = CMS_tree::getAncestor($page, 1);
			if ($father) {
				$temp_regen = CMS_linxesCatalog::getWatchers($father);
				if ($temp_regen) {
					$regen_pages = array_merge($regen_pages, $temp_regen);
				}
			}
		}
		
		//regenerate the pages that needs to be, but first pull off the array the ids of the unpublished pages
		$regen_pages = array_unique(array_diff($regen_pages, $published));
		
		CMS_tree::submitToRegenerator($regen_pages, true);
	}
	
	/**
	  * Process the daily routine unpublication part : unpublish page that needs to be
	  *
	  * @return void
	  * @access private
	  */
	protected function _dailyRoutineUnpublish()
	{
		$today = new CMS_date();
		$today->setNow();
		
		//process all pages that are to be unpublished
		$sql = "
			select
				id_pag
			from
				pages,
				resources,
				resourceStatuses
			where
				resource_pag=id_res
				and status_res=id_rs
				and location_rs='".RESOURCE_LOCATION_USERSPACE."'
				and publication_rs='".RESOURCE_PUBLICATION_PUBLIC."'
				and	(publicationDateStart_rs > '".$today->getDBValue(true)."'
					or (publicationDateEnd_rs < '".$today->getDBValue(true)."' and publicationDateEnd_rs!='0000-00-00'))
		";
		
		$q = new CMS_query($sql);
		$unpublished = array();
		while ($id = $q->getValue("id_pag")) {
			$unpublished[] = $id;
		}
		
		$regen_pages = array();
		foreach ($unpublished as $page_id) {
			$page = CMS_tree::getPageByID($page_id);
			
			//calculate the pages to regenerate
			$temp_regen = CMS_linxesCatalog::getLinkers($page);
			if ($temp_regen) {
				$regen_pages = array_merge($regen_pages, $temp_regen);
			}
		
			$father = CMS_tree::getAncestor($page, 1);
			if ($father) {
				$temp_regen = CMS_linxesCatalog::getWatchers($father);
				if ($temp_regen) {
					$regen_pages = array_merge($regen_pages, $temp_regen);
				}
			}
			
			//apply changes on the page
			$page->deleteFiles();
			CMS_linxesCatalog::deleteLinxes($page, true);
			CMS_tree::detachPageFromTree($page, true);
		}
		
		//regenerate the pages that needs to be, but first pull off the array the ids of the unpublished pages
		$regen_pages = array_unique(array_diff($regen_pages, $unpublished));
		
		CMS_tree::submitToRegenerator($regen_pages, false);
	}
	
	/**
	  * Process the daily routine reminders part : send reminders to users
	  *
	  * @return void
	  * @access private
	  */
	protected function _dailyRoutineReminders()
	{
		$today = new CMS_date();
		$today->setNow();
		
		$sql = "
			SELECT  
				id_pag,
				remindedEditorsStack_pag,
				reminderOnMessage_pbd 
			FROM 
				pages, pagesBaseData_public
			WHERE 
				page_pbd = id_pag 
				AND (
					(lastReminder_pag < reminderOn_pbd
					AND
					'".$today->getDBValue()."' > reminderOn_pbd)
					OR (
						(to_days('".$today->getDBValue()."') - to_days(lastReminder_pag))  > reminderPeriodicity_pbd
						AND
						reminderPeriodicity_pbd != '0'
					)
				)
		";
		
		$q = new CMS_query($sql);
		$reminders = array();
		while ($data = $q->getArray()) {
			$reminders[] = $data;
		}
		
		//send the emails
		foreach ($reminders as $reminder) {
			//instanciate page and update its lastReminder vars
			$page = CMS_tree::getPageByID($reminder["id_pag"]);
			$page->touchLastReminder();
			$page->writeToPersistence();
			
			//build users array
			$users_stack = new CMS_stack();
			$users_stack->setTextDefinition($reminder["remindedEditorsStack_pag"]);
			$users_stack_elements = $users_stack->getElements();
			$users = array();
			foreach ($users_stack_elements as $element) {
				$usr = CMS_profile_usersCatalog::getByID($element[0]);
				if (is_a($usr, "CMS_profile_user")) {
					$users[] = $usr;
				}
			}
			if (!$users) {
				continue;
			}
			$users = array_unique($users);
			//prepare emails and send them
			$group_email = new CMS_emailsCatalog();
			$languages = CMS_languagesCatalog::getAllLanguages();
			$subjects = array();
			$bodies = array();
			foreach ($languages as $language) {
				$subjects[$language->getCode()] = $language->getMessage(self::MESSAGE_MOD_STANDARD_EMAIL_REMINDER_SUBJECT);
				$bodies[$language->getCode()] = $language->getMessage(self::MESSAGE_MOD_STANDARD_EMAIL_REMINDER_BODY, array($page->getTitle()." (ID : ".$page->getID().")"))
						."\n".$language->getMessage(self::MESSAGE_MOD_STANDARD_EMAIL_REMINDER_BODY_MESSAGE, array($reminder["reminderOnMessage_pbd"]));
			}
			$group_email->setUserMessages($users, $bodies, $subjects);
			$group_email->sendMessages();
		}
	}
	
	/**
	  * Process the daily routine optimisation part : optimize SQL tables
	  *
	  * @return void
	  * @access private
	  */
	protected function _dailyRoutineOptimize() {
		$sql = "show tables";
		$q = new CMS_query($sql);
		$tables = array();
		while ($table = $q->getValue(0)) {
			$tables[] = $table;
		}
		if (is_array($tables) && $tables) {
			$sql = "optimize table
				".implode(', ',$tables)."
			";
			$q = new CMS_query($sql);
		}
	}
	
	/**
	  * Process the daily routine clean part : remove useless files
	  *
	  * @return void
	  * @access private
	  */
	protected function _dailyRoutineClean() {
		//clean all files older than 24h in upload directory
		$yesterday = time() - 86400; //24h
		try{
			foreach ( new DirectoryIterator(PATH_MAIN_FS.'/upload') as $file) {
				if ($file->isFile() && $file->getFilename() != ".htaccess" && $file->getMTime() < $yesterday) {
					@unlink($file->getPathname());
				}
			}
		} catch(Exception $e) {}
		
		//clean tmp dir
		try{
			foreach ( new DirectoryIterator(PATH_TMP_FS) as $file) {
				if ($file->isFile()) @unlink($file->getPathname());
			}
		} catch(Exception $e) {}
	}
	
	/**
	  * Changes The page data (in the DB) from one location to another.
	  *
	  * @param CMS_page $resource The resource concerned by the data location change
	  * @param string $locationFrom The starting location among "edited", "edition", "public", "archived", "deleted"
	  * @param string $locationTo The ending location among "edited", "edition", "public", "archived", "deleted"
	  * @param boolean $copyOnly If true, data is not deleted from the original location
	  * @return void
	  * @access private
	  */
	protected function _changeDataLocation($resource, $locationFrom, $locationTo, $copyOnly = false)
	{
		if (!parent::_changeDataLocation($resource, $locationFrom, $locationTo, $copyOnly)) {
			return false;
		}
		
		// Move the client spaces
		$tpl = $resource->getTemplate();
		if (is_a($tpl, 'CMS_pageTemplate') && $tpl->getID() > 0) {
			CMS_moduleClientspace_standard_catalog::moveClientSpaces($tpl->getID(), $locationFrom, $locationTo, $copyOnly);
		} else {
			CMS_grandFather::raiseError("Bad template founded for page ".$resourceID);
			return false;
		}
		// Move the blocks
		CMS_blocksCatalog::moveBlocks($resource, $locationFrom, $locationTo, $copyOnly);
		
		// Move data to the new location (delete data there before)
		if ($locationTo != RESOURCE_DATA_LOCATION_DEVNULL) {
			$sql = "
				delete from
					pagesBaseData_".$locationTo."
				where
					page_pbd='".$resource->getID()."';
			";
			$q = new CMS_query($sql);
			
			//here we have a bug with insert into... so try with a replace
			$sql = "
				replace into
					pagesBaseData_".$locationTo."
					select
						*
					from
						pagesBaseData_".$locationFrom."
					where
						page_pbd='".$resource->getID()."'
			";
			$q = new CMS_query($sql);
		}

		if (!$copyOnly) {
			$sql = "
				delete from
					pagesBaseData_".$locationFrom."
				where
					page_pbd='".$resource->getID()."'
			";
			$q = new CMS_query($sql);
		}
	}

	/**
	  * Supposed to destroy the module. Not possible.
	  *
	  * @return boolean false
	  * @access public
	  */
	function destroy()
	{
		return false;
	}
	
	/**
	  * This module can't be edited.
	  *
	  * @return boolean false
	  * @access public
	  */
	function writeToPersistence()
	{
		return false;
	}
	
	/** 
	  * Get the tags to be treated by this module for the specified treatment mode, visualization mode and object.
	  * @param integer $treatmentMode The current treatment mode (see constants on top of CMS_modulesTags class for accepted values).
	  * @param integer $visualizationMode The current visualization mode (see constants on top of cms_page class for accepted values).
	  * @return array of tags to be treated.
	  * @access public
	  */
	function getWantedTags($treatmentMode, $visualizationMode) 
	{
		$return = array();
		switch ($treatmentMode) {
			case MODULE_TREATMENT_CLIENTSPACE_TAGS :
				if ($visualizationMode == PAGE_VISUALMODE_CLIENTSPACES_FORM) {
					$return = array (
						"atm-clientspace" 	=> array("selfClosed" => true, "parameters" => array()),
						"title" 			=> array("selfClosed" => false, "parameters" => array()),
						"atm-meta-tags" 	=> array("selfClosed" => true, "parameters" => array()),
						"atm-css-tags" 		=> array("selfClosed" => true, "parameters" => array()),
						"atm-js-tags" 		=> array("selfClosed" => true, "parameters" => array()),
						"atm-linx" 			=> array("selfClosed" => false, "parameters" => array()),
						
					);
				} else {
					$return = array (
						"atm-clientspace" => array("selfClosed" => true, "parameters" => array()),
					);
				}
			break;
			case MODULE_TREATMENT_BLOCK_TAGS :
				$return = array (
					"block" => array("selfClosed" => false, "parameters" => array("module"	=> MOD_STANDARD_CODENAME,
																				  "type"	=> "file|text|varchar|image|flash")),
					"row" => array("selfClosed" => false, "parameters" => array()),
				);
			break;
			case MODULE_TREATMENT_PAGECONTENT_TAGS :
				switch ($visualizationMode) {
					case PAGE_VISUALMODE_PRINT :
						$return = array (
							"atm-title" 		=> array("selfClosed" => true, "parameters" => array()),
							"atm-main-url" 		=> array("selfClosed" => true, "parameters" => array()),
							"atm-constant" 		=> array("selfClosed" => true, "parameters" => array()),
							"atm-last-update" 	=> array("selfClosed" => false, "parameters" => array()),
							"body" 				=> array("selfClosed" => false, "parameters" => array()),
							"html" 				=> array("selfClosed" => false, "parameters" => array()),
						);
					break;
					default:
						$return = array (
							"atm-title" 		=> array("selfClosed" => true, "parameters" => array()),
							"atm-main-url" 		=> array("selfClosed" => true, "parameters" => array()),
							"atm-keywords" 		=> array("selfClosed" => true, "parameters" => array()),
							"atm-description" 	=> array("selfClosed" => true, "parameters" => array()),
							"atm-meta-tags" 	=> array("selfClosed" => true, "parameters" => array()),
							"atm-css-tags" 		=> array("selfClosed" => true, "parameters" => array()),
							"atm-js-tags" 		=> array("selfClosed" => true, "parameters" => array()),
							"atm-print-link" 	=> array("selfClosed" => false, "parameters" => array()),
							"atm-constant" 		=> array("selfClosed" => true, "parameters" => array()),
							"atm-last-update" 	=> array("selfClosed" => false, "parameters" => array()),
							"body" 				=> array("selfClosed" => false, "parameters" => array()),
							"html" 				=> array("selfClosed" => false, "parameters" => array()),
						);
						//for public (and print) visualmode, this is done by MODULE_TREATMENT_LINXES_TAGS mode during page file linx treatment
						if ($visualizationMode != PAGE_VISUALMODE_HTML_PUBLIC) {
							$return['atm-linx'] = array("selfClosed" => false, "parameters" => array());
						}
					break;
				}
			break;
			case MODULE_TREATMENT_LINXES_TAGS:
				$return = array (
					"atm-linx" => array("selfClosed" => false, "parameters" => array()),
				);
			break;
			case MODULE_TREATMENT_WYSIWYG_INNER_TAGS :
				$return = array (
					"atm-linx" => array("selfClosed" => false, "parameters" => array()),
					"span" => array("selfClosed" => false, "parameters" => array('id' => MOD_STANDARD_CODENAME.'-(.*)-(.*)')),
				);
			break;
			case MODULE_TREATMENT_WYSIWYG_OUTER_TAGS :
				$return = array (
					"a" => array("selfClosed" => false, "parameters" => array("href"	=> ".*\{\{(\d+)\}\}.*")),
				);
			break;
		}
		return $return;
	}
	
	/** 
	  * Treat given content tag by this module for the specified treatment mode, visualization mode and object.
	  *
	  * @param string $tag The CMS_XMLTag.
	  * @param string $tagContent previous tag content.
	  * @param integer $treatmentMode The current treatment mode (see constants on top of CMS_modulesTags class for accepted values).
	  * @param integer $visualizationMode The current visualization mode (see constants on top of cms_page class for accepted values).
	  * @param object $treatedObject The reference object to treat.
	  * @param array $treatmentParameters : optionnal parameters used for the treatment. Usually an array of objects.
	  * @return string the tag content treated.
	  * @access public
	  */
	function treatWantedTag(&$tag, $tagContent, $treatmentMode, $visualizationMode, &$treatedObject, $treatmentParameters)
	{
		switch ($treatmentMode) {
			case MODULE_TREATMENT_BLOCK_TAGS:
				if (!is_a($treatedObject,"CMS_row")) {
					$this->raiseError('$treatedObject must be a CMS_row object');
					return false;
				}
				if (!is_a($treatmentParameters["page"],"CMS_page")) {
					$this->raiseError('$treatmentParameters["page"] must be a CMS_page object');
					return false;
				}
				if (!is_a($treatmentParameters["language"],"CMS_language")) {
					$this->raiseError('$treatmentParameters["language"] must be a CMS_language object');
					return false;
				}
				if (!is_a($treatmentParameters["clientSpace"],"CMS_moduleClientspace")) {
					$this->raiseError('$treatmentParameters["clientSpace"] must be a CMS_moduleClientspace object');
					return false;
				}
				if ($tag->getName() == 'row') {
					return $tag->getInnerContent();
				} else {
					//create the block data
					$block = $tag->getRepresentationInstance();
					return $block->getData($treatmentParameters["language"], $treatmentParameters["page"], $treatmentParameters["clientSpace"], $treatedObject, $visualizationMode);
				}
			break;
			case MODULE_TREATMENT_CLIENTSPACE_TAGS:
				if (!is_a($treatedObject,"CMS_pageTemplate")) {
					$this->raiseError('$treatedObject must be a CMS_pageTemplate object');
					return false;
				}
				if (!is_a($treatmentParameters["page"],"CMS_page")) {
					$this->raiseError('$treatmentParameters["page"] must be a CMS_page object');
					return false;
				}
				if (!is_a($treatmentParameters["language"],"CMS_language")) {
					$this->raiseError('$treatmentParameters["language"] must be a CMS_language object');
					return false;
				}
				$args = array("template"=>$treatedObject->getID());
				if ($visualizationMode == PAGE_VISUALMODE_CLIENTSPACES_FORM
					|| $visualizationMode == PAGE_VISUALMODE_HTML_EDITION
					|| $visualizationMode == PAGE_VISUALMODE_FORM) {
					$args["editedMode"] = true;
				}
				//load CS datas
				switch ($tag->getName()) {
					case 'atm-meta-tags':
						if ($visualizationMode == PAGE_VISUALMODE_CLIENTSPACES_FORM) {
							//add needed javascripts
							$metaDatas = '<script type="text/javascript">'."\n".
								'var atmRowsDatas = {};'."\n".
								'var atmBlocksDatas = {};'."\n".
								'var atmCSDatas = {};'."\n".
								'var atmIsValidator = false;'."\n".
								'var atmIsValidable = false;'."\n".
								'var atmHasPreview = false;'."\n".
							'</script>';
							//append JS from current view instance
							$view = CMS_view::getInstance();
							$metaDatas .= $view->getJavascript();
							$metaDatas .= CMS_view::getCSS(array('edit'));
							
							return $metaDatas;
						}
					break;
					case "atm-js-tags":
					case "atm-css-tags":
						if ($visualizationMode == PAGE_VISUALMODE_CLIENTSPACES_FORM) {
							$files = $tag->getAttribute('files');
							if (!$files) {
								return '';
							}
							//save in global var the page ID who need this module so we can add the header code later.
							CMS_module::moduleUsage($treatedObject->getID(), $this->_codename, array($tag->getName() => true));
							
							$media = $tag->getAttribute('media');
							$files = array_map('trim', explode(',', $files));
							
							switch ($tag->getName()) {
								case "atm-js-tags":
									$method = 'getJavascript';
									$files[] = '/js/CMS_functions.js';
									//if this page use a row block of this module then add the header code to the page
									if ($usage = $this->moduleUsage($treatedObject->getID(), MOD_STANDARD_CODENAME)) {
										if (is_array($usage) && isset($usage['blockflash']) && $usage['blockflash'] == true) {
											$files[] = 'swfobject';
										}
									}
								break;
								case "atm-css-tags":
									$method = 'getCSS';
								break;
							}
							//save files
							CMS_module::moduleUsage($treatedObject->getID(), $tag->getName(), $files);
							return '<?php echo CMS_view::'.$method.'(array(\''.implode('\',\'', $files).'\')'.($media ? ', \''.$media.'\'' : '').'); ?>'."\n";
						}
					break;
					case 'title':
						if ($visualizationMode == PAGE_VISUALMODE_CLIENTSPACES_FORM) {
							$title = $treatmentParameters['page']->getTitle();
							return '<title>'.$title.'</title>';
						}
					break;
					case 'atm-linx':
						if ($visualizationMode == PAGE_VISUALMODE_CLIENTSPACES_FORM) {
							$linx_args = array("page"=> $treatmentParameters["page"], "publicTree"=>false);
							$linx = $tag->getRepresentationInstance($linx_args);
							$linx->setDebug(false);
							return $linx->getOutput();
						}
					break;
					case 'atm-clientspace':
					default:
						$client_space = $tag->getRepresentationInstance($args);
						switch ($visualizationMode) {
							case PAGE_VISUALMODE_PRINT:
								$data = "";
								$clientSpacesData = array();
								$csTagID = $tag->getAttribute("id");
								$printingCS = $treatedObject->getPrintingClientSpaces();
								if (in_array($csTagID, $printingCS)) {
									$clientSpacesData[$csTagID] = $client_space->getData($treatmentParameters["language"], $treatmentParameters["page"], $visualizationMode, $treatedObject->hasPages());
								}
								foreach ($printingCS as $cs) {
									if (isset($clientSpacesData[$cs])) {
										$data .= $clientSpacesData[$cs]. '<br />';
									}
								}
								return $data;
							break;
							default:
								if (is_object($client_space)) {
									return $client_space->getData($treatmentParameters["language"], $treatmentParameters["page"], $visualizationMode, false);
								} else {
									return '';
								}
							break;
						}
					break;
				}
			break;
			case MODULE_TREATMENT_LINXES_TAGS:
				switch ($tag->getName()) {
					case "atm-linx":
						$linx_args = array("page"=>$treatedObject, "publicTree"=>true);
						$linx = $tag->getRepresentationInstance($linx_args);
						$linx->register();
						return $linx->getOutput();
					break;
				}
				return '';
			break;
			case MODULE_TREATMENT_PAGECONTENT_TAGS:
				if (!is_a($treatedObject,"CMS_page")) {
					$this->raiseError('$treatedObject must be a CMS_page object');
					return false;
				}
				switch ($tag->getName()) {
					case "atm-linx":
						//for public and print visualmode, this treatment is done by MODULE_TREATMENT_LINXES_TAGS mode during page file linx treatment
						if ($visualizationMode != PAGE_VISUALMODE_HTML_PUBLIC 
							&& $visualizationMode != PAGE_VISUALMODE_PRINT) {
							$linx_args = array("page"=>$treatedObject, "publicTree"=>false);
							$linx = $tag->getRepresentationInstance($linx_args);
							return $linx->getOutput();
						}
					break;
					case "atm-title":
						return SensitiveIO::sanitizeHTMLString($treatedObject->getTitle());
					break;
					case "atm-main-url":
						return CMS_websitesCatalog::getMainURL();
					break;
					case "atm-keywords":
						return '<meta name="keywords" content="'.SensitiveIO::sanitizeHTMLString($treatedObject->getKeywords()).'" />';
					break;
					case "atm-description":
						return '<meta name="description" content="'.SensitiveIO::sanitizeHTMLString($treatedObject->getDescription()).'" />';
					break;
					case "atm-last-update":
						$lastlog = CMS_log_catalog::getByResourceAction(MOD_STANDARD_CODENAME, $treatedObject->getID(), CMS_log::LOG_ACTION_RESOURCE_SUBMIT_DRAFT, 1);
						if (!$lastlog || !is_object($lastlog[0])) {
							return '';
						}
						$user = $lastlog[0]->getUser();
						$date = $lastlog[0]->getDateTime();
						$dateformat = ($tag->getAttribute("format")) ? $tag->getAttribute("format") : 'Y-m-d';
						$replace = array(
							'{{date}}' 		=> date($dateformat , $date->getTimestamp()),
							'{{firstname}}' => $user->getFirstName(),
							'{{lastname}}' 	=>  $user->getLastName(),
						);
						return str_replace(array_keys($replace), $replace, $tag->getInnerContent());
					break;
					case "atm-js-tags":
					case "atm-css-tags":
						$files = $tag->getAttribute('files');
						if (!$files) {
							return '';
						}
						//save in global var the page ID who need this module so we can add the header code later.
						CMS_module::moduleUsage($treatedObject->getID(), $this->_codename, array($tag->getName() => true));
						
						$media = $tag->getAttribute('media');
						$files = array_map('trim', explode(',', $files));
						
						switch ($tag->getName()) {
							case "atm-js-tags":
								$method = 'getJavascript';
								$files[] = '/js/CMS_functions.js';
								//if this page use a row block of this module then add the header code to the page
								if ($usage = $this->moduleUsage($treatedObject->getID(), MOD_STANDARD_CODENAME)) {
									if (is_array($usage) && isset($usage['blockflash']) && $usage['blockflash'] == true) {
										$files[] = 'swfobject';
									}
								}
							break;
							case "atm-css-tags":
								$method = 'getCSS';
							break;
						}
						//save files
						CMS_module::moduleUsage($treatedObject->getID(), $tag->getName(), $files);
						return '<?php echo CMS_view::'.$method.'(array(\''.implode('\',\'', $files).'\')'.($media ? ', \''.$media.'\'' : '').'); ?>'."\n";
					break;
					case "atm-meta-tags":
						$metaDatas = $treatedObject->getMetaTags();
						$usage = CMS_module::moduleUsage($treatedObject->getID(), $this->_codename);
						//if page template already use atm-js-tags tag, no need to add JS again
						if (!is_array($usage) || !isset($usage['atm-js-tags'])) {
							$metaDatas .= '	<script type="text/javascript" src="/js/CMS_functions.js"></script>'."\n";
						}
						if ($visualizationMode == PAGE_VISUALMODE_HTML_PUBLIC) {
							/*$metaDatas .= 
								'<?php'."\n".
								'//check if user exists and has page edition privileges'."\n".
								'if (isset($cms_user) && is_object($cms_user)) {'."\n".
								'	if ($cms_user->hasPageClearance('.$treatedObject->getID().', CLEARANCE_PAGE_EDIT)) {'."\n".
								'		$userLanguage = $cms_user->getLanguage();'."\n".
								'		echo \''."\n".
									'	<!-- user has page edition privileges, add all needed javascripts and CSS -->'."\n".
									'	<link rel="stylesheet" href="'.PATH_ADMIN_CSS_WR.'/editPage.css" media="screen" type="text/css" />'."\n".
									'	<script type="text/javascript" src="/js/serverCall.php?\'.session_name().\'=\'.session_id().\'"></script>'."\n".
									'	<script type="text/javascript" src="'.PATH_ADMIN_JS_WR.'/editPage.php?page='.$treatedObject->getID().'&amp;language=\'.$userLanguage->getCode().\'&amp;\'.session_name().\'=\'.session_id().\'"></script>\';'."\n".
								'	}'."\n".
								'}'."\n".
								'? >'."\n";*/
						} elseif ($visualizationMode == PAGE_VISUALMODE_FORM 
									|| $visualizationMode == PAGE_VISUALMODE_HTML_EDITION ) {
							if ($visualizationMode == PAGE_VISUALMODE_FORM) {
								global $cms_user;
								$isValidator = (is_object($cms_user) && $cms_user->hasPageClearance($treatedObject->getID(), CLEARANCE_PAGE_EDIT) && $cms_user->hasValidationClearance(MOD_STANDARD_CODENAME)) ? 'true' : 'false';
								//add needed javascripts
								$metaDatas .= '<script type="text/javascript">'."\n".
									'var atmRowsDatas = {};'."\n".
									'var atmBlocksDatas = {};'."\n".
									'var atmCSDatas = {};'."\n".
									'var atmIsValidator = '.$isValidator.';'."\n".
									'var atmIsValidable = true;'."\n".
									'var atmHasPreview = true;'."\n".
								'</script>';
								//append JS from current view instance
								$view = CMS_view::getInstance();
								$metaDatas .= $view->getJavascript();
								$metaDatas .= CMS_view::getCSS(array('edit'));
							}
						}
						//if page template already use atm-js-tags tag, no need to add JS again
						if (!is_array($usage) || !isset($usage['atm-js-tags'])) {
							//if this page use a row block of this module then add the header code to the page
							if (is_array($usage) && isset($usage['blockflash']) && $usage['blockflash'] == true) {
								$metaDatas .= '<script type="text/javascript" src="'.PATH_MAIN_WR.'/swfobject/swfobject.js"></script>'."\n";
							}
						}
						return $metaDatas;
					break;
					case "atm-print-link":
						if ($treatedObject->getPrintStatus()) {
							$template = $tag->getInnerContent();
							if ($tag->getAttribute("keeprequest") == 'true') {
								return '<?php echo \''.str_replace("{{href}}", $treatedObject->getURL(true).'\'.($_SERVER["QUERY_STRING"] ? \'?\'.$_SERVER["QUERY_STRING"] : \'\').\'', str_replace("\\\\'", "\'", str_replace("'", "\'", $template))).'\' ?>';
							} else{
								return str_replace("{{href}}", $treatedObject->getURL(true), $template);
							}
						} else {
							return '';
						}
					break;
					case "atm-constant":
						$const = SensitiveIO::stripPHPTags(strtoupper($tag->getAttribute("name")));
						if (defined($const)) {
							return constant($const);
						} else {
							return '';
						}
					break;
					case "body":
						$statsCode = '<?php if (SYSTEM_DEBUG && STATS_DEBUG) {view_stat(); if (VIEW_SQL && isset($_SESSION["cms_context"]) && is_object($_SESSION["cms_context"])) {save_stat();}} ?>';
						//Append stats code
						return str_replace('</body>', $statsCode."\n".'</body>', $tag->getContent());
					break;
					case "html":
						//Append DTD
						return '<?php if (defined(\'APPLICATION_XHTML_DTD\')) echo APPLICATION_XHTML_DTD."\n"; ?>'."\n".$tag->getContent();
					break;
				}
				return '';
			break;
			case MODULE_TREATMENT_WYSIWYG_INNER_TAGS :
				if ($tag->getName() == 'atm-linx') { //linx from standard module
					$domdocument = new CMS_DOMDocument();
					try {
						$domdocument->loadXML('<html>'.$tag->getContent().'</html>');
					} catch (DOMException $e) {
						$this->raiseError('Parse error for atm-linx : '.$e->getMessage()." :\n".htmlspecialchars($tag->getContent()));
						return '';
					}
					$nodespecs = $domdocument->getElementsByTagName('nodespec');
					if ($nodespecs->length == 1) {
						$nodespec = $nodespecs->item(0);
					}
					$htmltemplates = $domdocument->getElementsByTagName('htmltemplate');
					if ($htmltemplates->length == 1) {
						$htmltemplate = $htmltemplates->item(0);
					}
					$noselections = $domdocument->getElementsByTagName('noselection');
					if ($noselections->length == 1) {
						$noselection = $noselections->item(0);
					}
					if($nodespec && $htmltemplate) {
						//if ($paramsTags[0]->getName() == "nodespec" && $paramsTags[1]->getName() == "noselection" && $paramsTags[2]->getName() == "htmltemplate") {
						if (isset($noselection)) {
							// case noselection tag
							$pageID = $nodespec->getAttribute("value");
							$link = CMS_DOMDocument::DOMElementToString($htmltemplate, true);
							$treatedLink = str_replace('href','noselection="true" href',str_replace('{{href}}','{{'.$pageID.'}}',$link));
						} else {
							$pageID = $nodespec->getAttribute("value");
							$link = CMS_DOMDocument::DOMElementToString($htmltemplate, true);
							$treatedLink = str_replace('{{href}}','{{'.$pageID.'}}',$link);
						}
					}
				} elseif ($tag->getName() == 'span') { //linx from other module
					$ids = explode('-', $tag->getAttribute('id'));
					$selectedPageID = (int) $ids[1];
					$noselection = $ids[2];
					//then create the code to paste for the current selected object if any
					if (sensitiveIO::isPositiveInteger($selectedPageID) && ($noselection == 'true' || $noselection == 'false')) {
						$pattern = "/(.*)<a([^>]*)'\.CMS_tree.*, 'url'\)\.'(.*)\<\/a>(.*)<\/span>/U";
						if ($noselection == 'true') {
							$replacement = '<a noselection="true"\\2{{'.$selectedPageID.'}}\\3</a>';
						} else {
							$replacement = '<a\\2{{'.$selectedPageID.'}}\\3</a>';
						}
						$treatedLink = str_replace("\'", "'", preg_replace($pattern,$replacement,$tag->getContent()));
					}
				}
				return $treatedLink;
			case MODULE_TREATMENT_WYSIWYG_OUTER_TAGS :
				/* Pattern explanation :
				 * 
				 * \<a([^>]*) : start with "<a" and any characters after except a ">". Content found into the "()" (first parameters of the link) is the first variable : "\\1"
				 * {{(\d+)}} : some numbers only into "{{" and "}}". Content found into the "()" (the page number) is the second variable : "\\2"
				 * (.*)\<\/a> : any characters after followed by "</a>". Content found into the "()" (last parameters of the link and link content) is the third variable : "\\3"
				 * /U : PCRE_UNGREEDY stop to the first finded occurence.
				*/
				$pattern = "/<a([^>]*){{(\d+)}}(.*)\<\/a>/U";
				if ($tag->getName() == 'a' && $treatmentParameters['module'] == MOD_STANDARD_CODENAME) {
					if ($tag->getAttribute('noselection') == 'true') {
						$replacement = "<atm-linx type=\"direct\"><selection><start><nodespec type=\"node\" value=\"\\2\"/></start></selection><noselection>".$tag->getInnerContent()."</noselection><display><htmltemplate><a\\1{{href}}\\3</a></htmltemplate></display></atm-linx>";
						$treatedLink = preg_replace($pattern,$replacement,str_replace('noselection="true"','',$tag->getContent()));
					} else {
						$replacement = "<atm-linx type=\"direct\"><selection><start><nodespec type=\"node\" value=\"\\2\"/></start></selection><display><htmltemplate><a\\1{{href}}\\3</a></htmltemplate></display></atm-linx>";
						$treatedLink = preg_replace($pattern,$replacement,$tag->getContent());
					}
				} elseif ($tag->getName() == 'a' && $treatmentParameters['module'] != MOD_STANDARD_CODENAME) {
					if ($tag->getAttribute('noselection') == 'true') {
						$replacement = '<span id="'.MOD_STANDARD_CODENAME.'-\\2-true"><?php if (CMS_tree::pageExistsForUser(\\2)) { echo \'<a\\1\'.CMS_tree::getPageValue(\\2, \'url\').\'\\3</a>\';} else { echo '.var_export($tag->getInnerContent(),true).';} ?></span>';
						$treatedLink = preg_replace($pattern,$replacement,str_replace(array('noselection="true"',"'"),array('',"\'"),$tag->getContent()));
					} else {
						$replacement = '<span id="'.MOD_STANDARD_CODENAME.'-\\2-false"><?php if (CMS_tree::pageExistsForUser(\\2)) { echo \'<a\\1\'.CMS_tree::getPageValue(\\2, \'url\').\'\\3</a>\';} ?></span>';
						$treatedLink = preg_replace($pattern,$replacement,str_replace("'","\'",$tag->getContent()));
					}
				}
				return $treatedLink;
			break;
		}
		//in case of no tag treatment, simply return it
		return $tag->getContent();
	}
	
	/**
	  * Return the module code for the specified treatment mode, visualization mode and object.
	  * 
	  * @param mixed $modulesCode the previous modules codes (usually string)
	  * @param integer $treatmentMode The current treatment mode (see constants on top of this file for accepted values).
	  * @param integer $visualizationMode The current visualization mode (see constants on top of cms_page class for accepted values).
	  * @param object $treatedObject The reference object to treat.
	  * @param array $treatmentParameters : optionnal parameters used for the treatment. Usually an array of objects.
	  *
	  * @return string : the module code to add
	  * @access public
	  */
	function getModuleCode($modulesCode, $treatmentMode, $visualizationMode, &$treatedObject, $treatmentParameters)
	{
		switch ($treatmentMode) {
			case MODULE_TREATMENT_PAGECONTENT_HEADER_CODE :
				$modulesCode[MOD_STANDARD_CODENAME] = '';
				if ($visualizationMode == PAGE_VISUALMODE_HTML_PUBLIC 
					|| $visualizationMode == PAGE_VISUALMODE_PRINT) {
					//redirection code if any
					$redirectlink = $treatedObject->getRedirectLink(true);
					if ($redirectlink->hasValidHREF()) {
						$href = $redirectlink->getHTML(false, MOD_STANDARD_CODENAME, RESOURCE_DATA_LOCATION_PUBLIC, false, true);
						$modulesCode[MOD_STANDARD_CODENAME] .= 
								'<?php'."\n".
								'header(\'HTTP/1.x 302 Found\',true,302);'."\n".
								'header("Location: '.$href.'");'."\n".
								'exit;'."\n".
								'?>';
					}
					//include frontend files
					$modulesCode[MOD_STANDARD_CODENAME] .= 
					'<?php'."\n".
					'//Generated on '.date('r').' by '.CMS_grandFather::SYSTEM_LABEL.' '.AUTOMNE_VERSION."\n".
					'if (!isset($cms_page_included) && !$_POST && !$_GET) {'."\n".
					'	header(\'HTTP/1.x 301 Moved Permanently\', true, 301);'."\n".
					'	header(\'Location: '.$treatedObject->getURL(($visualizationMode == PAGE_VISUALMODE_PRINT) ? true : false).'\');'."\n".
					'	exit;'."\n".
					'}'."\n".
					'require_once($_SERVER["DOCUMENT_ROOT"]."/cms_rc_frontend.php");'."\n".
					'?>';
					if (APPLICATION_ENFORCES_ACCESS_CONTROL) {
						//include user access checking on top of output file
						$modulesCode[MOD_STANDARD_CODENAME] .= 
							'<?php'."\n".
							'if (!is_object($cms_user) || !$cms_user->hasPageClearance('.$treatedObject->getID().', CLEARANCE_PAGE_VIEW)) {'."\n".
							'	header(\'Location: \'.PATH_FRONTEND_SPECIAL_LOGIN_WR.\'?referer=\'.base64_encode($_SERVER[\'REQUEST_URI\']));'."\n".
							'	exit;'."\n".
							'}'."\n".
							'?>';
					}
					return $modulesCode;
				} else {
					$modulesCode[MOD_STANDARD_CODENAME] .= '<?php if (!in_array($_SERVER["DOCUMENT_ROOT"]."/cms_rc_frontend.php", get_included_files())){ require_once($_SERVER["DOCUMENT_ROOT"]."/cms_rc_frontend.php");} else { global $cms_user,$cms_language;} ?>';
				}
			break;
			case MODULE_TREATMENT_EDITOR_CODE :
				if ($treatmentParameters["editor"] == "fckeditor") {
					$languages = implode(',',array_keys(CMS_languagesCatalog::getAllLanguages(MOD_STANDARD_CODENAME)));
					//This is an exception of the method, because here we return an array, see admin/fckeditor/fckconfig.php for the detail
					return array (
				 		  "Default"				=> array("'automneLinks'"),
				  		  "modulesDeclaration"	=> array("FCKConfig.Plugins.Add( 'automneLinks', '".$languages."' );")
				 		 );
				} else {
					return $modulesCode;
				}
			break;
			case MODULE_TREATMENT_EDITOR_PLUGINS:
				if ($treatmentParameters["editor"] == "fckeditor") {
					$language = $treatmentParameters["user"]->getLanguage();
					$modulesCode['automneLinks'] = $language->getMessage(self::MESSAGE_MOD_STANDARD_PLUGIN);
				}
			break;
			case MODULE_TREATMENT_EDITOR_JSCODE :
				$modulesCode[MOD_STANDARD_CODENAME] = "
				<script type=\"text/javascript\">
				function openWindow(url, name, w, h, r, s, m, left, top) {
					popupWin = window.open(url, name, 'width=' + w + ',height=' + h + ',resizable=' + r + ',scrollbars='+ s + ',menubar=' + m + ',left=' + left + ',top=' + top);
				}
				</script>";
				return $modulesCode;
			break;
			case MODULE_TREATMENT_ROWS_EDITION_LABELS :
				$modulesCode[MOD_STANDARD_CODENAME] = $treatmentParameters["language"]->getMessage(self::MESSAGE_MOD_STANDARD_ROWS_EXPLANATION);
				return $modulesCode;
			break;
			case MODULE_TREATMENT_TEMPLATES_EDITION_LABELS :
				$modulesCode[MOD_STANDARD_CODENAME] = $treatmentParameters["language"]->getMessage(self::MESSAGE_MOD_STANDARD_TEMPLATE_EXPLANATION);
				return $modulesCode;
			break;
			case MODULE_TREATMENT_ALERTS :
				$modulesCode[MOD_STANDARD_CODENAME] = array(
					ALERT_LEVEL_PROFILE 	=> array('label' => MESSAGE_ALERT_LEVEL_PROFILE, 'description' => MESSAGE_ALERT_LEVEL_PROFILE_DESCRIPTION)
				);
				//only if user has validation clearances
				if ($treatmentParameters['user']->hasValidationClearance(MOD_STANDARD_CODENAME)) {
					$modulesCode[MOD_STANDARD_CODENAME][ALERT_LEVEL_VALIDATION] = array('label' => MESSAGE_ALERT_LEVEL_VALIDATION, 'description' => MESSAGE_ALERT_LEVEL_VALIDATION_DESCRIPTION);
				}
				//only if user has edition clearances
				if ($treatmentParameters['user']->hasEditablePages()) {
					$modulesCode[MOD_STANDARD_CODENAME][ALERT_LEVEL_PAGE_ALERTS] = array('label' => MESSAGE_ALERT_LEVEL_PAGE_ALERTS, 'description' => MESSAGE_ALERT_LEVEL_PAGE_ALERTS_DESCRIPTION);
				}
				return $modulesCode;
			break;
		}
		return $modulesCode;
	}
	
	/**
	  * Module script task : regenerate a page
	  *
	  * @param array $parameters the task parameters
	  *		pageid : integer page id to regenerate
	  *		fromscratch : boolean, regenerate from scratch
	  * @return Boolean true/false
	  * @access public
	  */
	function scriptTask($parameters) {
		//regenerates the page (suppressing errors, we want the regenerator to continue unharmed. Of course, we can't have regeneration results this way)
		$page = @CMS_tree::getPageByID($parameters['pageid']);
		
		if (is_object($page) && !$page->hasError()) {
			@$page->regenerate($parameters['fromscratch']);
			return true;
		}
		return false;
	}
	
	/**
	  * Module script info : get infos for a given script parameters
	  *
	  * @param array $parameters the task parameters
	  *		pageid : integer page id to regenerate
	  *		fromscratch : boolean, regenerate from scratch
	  * @return string : HTML scripts infos
	  * @access public
	  */
	function scriptInfo($parameters) {
		global $cms_language;
		//regenerates the page (suppressing errors, we want the regenerator to continue unharmed. Of course, we can't have regeneration results this way)
		$page = @CMS_tree::getPageByID($parameters['pageid']);
		
		if (is_object($page) && !$page->hasError()) {
			$label = @$page->getTitle();
			return 'Page : <a class="admin" href="#" onclick="Automne.utils.getPageById('.$page->getID().');return false;">'.htmlspecialchars($label).' ('.$parameters['pageid'].')</a>';
		}
		return $cms_language->getMessage(66).' ('.$parameters['pageid'].')';
	}
}
?>