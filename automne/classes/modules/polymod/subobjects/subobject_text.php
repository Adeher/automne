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
// $Id: subobject_text.php,v 1.1.1.1 2008/11/26 17:12:06 sebastien Exp $

/**
  * Class CMS_subobject_text
  *
  * represent a text
  *
  * @package CMS
  * @subpackage module
  * @author S�bastien Pauchet <sebastien.pauchet@ws-interactive.fr>
  */

class CMS_subobject_text extends CMS_subobject_common
{
	/**
	  * db table name
	  * @var string
	  * @access private
	  */
	protected $_table = 'mod_subobject_text';

	/**
	  * Constructor.
	  * initialize object.
	  *
	  * @param integer $id DB id
	  * @param array $objectIDs DB object values : array('objectID' => integer, 'objectFieldID' => integer, 'objectSubFieldID' => integer)
	  * @param array $dbValues DB values array('string dbFieldName' => 'value')
	  * @param boolean $public values are public or edited ? (default is edited)
	  * @param 
	  * @return void
	  * @access public
	  */
	function __construct($id = 0, $objectIDs = array(), $dbValues = array(), $public = false)
	{
		parent::__construct($id, $objectIDs, $dbValues, $public);
	}
	
	/**
	  * Sets the text value.
	  *
	  * @param string $value the text value to set
	  * @return boolean true on success, false on failure
	  * @access public
	  */
	function setValue($value)
	{
		$this->_value = $value;
		return true;
	}
}

?>