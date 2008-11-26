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
// $Id: xml2Array.php,v 1.1.1.1 2008/11/26 17:12:06 sebastien Exp $

/**
  * Class CMS_xml2Array
  *
  * return an array from an XML string
  *
  * @package CMS
  * @subpackage polymod
  * @author S�bastien Pauchet <sebastien.pauchet@ws-interactive.fr>
  */

class CMS_xml2Array extends CMS_grandFather
{
	const XML_ENCLOSE = 1;
	const XML_PROTECT_ENTITIES = 2;
	const XML_CORRECT_ENTITIES = 4;
	const XML_DONT_THROW_ERROR = 8;
	const ARRAY2XML_START_TAG = 1;
	const ARRAY2XML_END_TAG = -1;
	
	const XML_PROTECTED_ENTITIES = "&,�/< ,��";
	const XML_UNTRANSLATED_ENTITIES = "amp,nbsp,lt,gt";
	
	protected $_params;
	
	protected $_arrOutput = array();
	
	protected $_autoclosedTag = array('br', 'hr', 'meta', 'input', 'img', 'link', 'area', 'param', 'col', 'frame');
	
	protected $_parsingError;
	
	function __construct($xml = '', $params = self::XML_ENCLOSE)
	{
		$this->_params = $params;
		if ($xml) {
			$parser = xml_parser_create(APPLICATION_DEFAULT_ENCODING);
			xml_set_object($parser,$this);
			xml_parser_set_option($parser, XML_OPTION_CASE_FOLDING, 0);
			xml_parser_set_option($parser, XML_OPTION_SKIP_WHITE, 1);
			xml_set_element_handler($parser, "_tagOpen", "_tagClosed");
			xml_set_character_data_handler($parser, "_charData");
			xml_set_processing_instruction_handler ($parser, "_piData" );
			xml_set_default_handler($parser, "_tagData" );
			//enclose with html tag
			if ($this->_params & self::XML_ENCLOSE) {
				$xml = '<html>'.$xml.'</html>';
			}
			//add encoding declaration
			$xml = '<?xml version="1.0" encoding="'.APPLICATION_DEFAULT_ENCODING.'"?>'."\n".$xml;
			/*if ($this->_params & self::XML_PROTECT_ENTITIES) {
				$xml = $this->_protectEntities($xml);
			}*/
			
			
			if ($this->_params & self::XML_PROTECT_ENTITIES) {
				$xml = $this->_codeEntities($xml);
			}
			if ($this->_params & self::XML_CORRECT_ENTITIES) {
				$xml = $this->_correctEntities($xml);
			}
			
			//$xml = utf8_encode($xml);
			//pr(htmlspecialchars($xml));
			if(!xml_parse($parser, $xml )) {
				$this->_parsingError = sprintf("Parse error %s at line %d",
						xml_error_string(xml_get_error_code($parser)),
						xml_get_current_line_number($parser));
				if ($this->_params & ~self::XML_DONT_THROW_ERROR) {
					$this->raiseError($this->_parsingError." :\n".htmlspecialchars($xml));
				}
			}
			xml_parser_free($parser);
			unset($parser);
		}
	}
	
	/**
	  * Replaces the entities found in the text by special strings that will be translated back after parsing
	  *
	  * @param string $data The data to parse for XML entities
	  * @return string
	  * @access private
	  */
	protected function _codeEntities($data)
	{
		$entities = explode(",", self::XML_UNTRANSLATED_ENTITIES);
		foreach ($entities as $entity) {
			$data = str_replace("&".$entity.";", "/".$entity."]", $data);
		}
		//translate ones that are not HTMLized
		$entities = explode("/", self::XML_PROTECTED_ENTITIES);
		foreach ($entities as $entity) {
			$entity = explode(",", $entity);
			$data = str_replace($entity[0], $entity[1], $data);
		}
		return $data;
	}
	
	/**
	  * Cleans the entities uncoded
	  *
	  * @param string $data The data to parse for XML entities
	  * @return string
	  * @access private
	  */
	protected function _correctEntities($data)
	{
		$entities = explode("/", self::XML_PROTECTED_ENTITIES);
		foreach ($entities as $entity) {
			$entity = explode(",", $entity);
			$data = str_replace($entity[0], $entity[1], $data);
		}
		return $data;
	}
	
	/**
	  * Replaces the coded entities found in the text by original entities
	  *
	  * @param string $data The data to parse for coded entities
	  * @return string
	  * @access private
	  */
	protected function _decodeEntities($data)
	{
		$entities = explode(",", self::XML_UNTRANSLATED_ENTITIES);
		foreach ($entities as $entity) {
			$data = str_replace("/".$entity."]", "&".$entity.";", $data);
		}
		return $data;
	}
	
	/**
	  * Un-Cleans the entities uncoded
	  *
	  * @param string $data The data to parse for XML entities
	  * @return string
	  * @access private
	  */
	function _uncorrectEntities($data)
	{
		$entities = explode("/", self::XML_PROTECTED_ENTITIES);
		foreach ($entities as $entity) {
			$entity = explode(",", $entity);
			$data = str_replace($entity[1], $entity[0], $data);
		}
		return $data;
	}
	
	/*protected function _protectEntities($data) {
		return str_replace('&amp;amp;', '&amp;', str_replace('&', '&amp;', $data));
	}
	
	protected function _unProtectEntities($data) {
		return str_replace('&amp;', '&', $data);
	}
	*/
	protected function _unProtectPIEntities($data) {
		$replace = array(
			'&amp;&amp;' => '&&',
			'&amp;$' => '&$',
			'&amp;new ' => '&new ',
		);
		return str_replace(array_keys($replace), $replace, $data);
	}
	
	function getParsingError() {
		return $this->_parsingError;
	}
	
	//called on each xml tree
	protected function _tagOpen($parser, $name, $attrs) {
		if ($this->_params & self::XML_PROTECT_ENTITIES) {
			$attrs = array_map(array($this,"_decodeEntities"),$attrs);
		}
		if ($this->_params & self::XML_CORRECT_ENTITIES) {
			$attrs = array_map(array($this,"_uncorrectEntities"),$attrs);
		}
		$tag=array("nodename"=>$name,"attributes"=>$attrs);
		array_push($this->_arrOutput,$tag);
	}
	
	//called on data for xml
	protected function _tagData($parser, $tagData) {
		if($tagData) {
			
			if ($this->_params & self::XML_PROTECT_ENTITIES) {
				$tagData = $this->_decodeEntities($tagData);
			}
			if ($this->_params & self::XML_CORRECT_ENTITIES) {
				$tagData = $this->_uncorrectEntities($tagData);
			}
			
			$last_element=count($this->_arrOutput)-1;
			$this->_arrOutput[$last_element]['childrens'][] = array("textnode" => $tagData);
		}
	}
	
	//called on data for xml
	protected function _charData($parser, $tagData) {
		//here we have a mess with & so try to correct it
		//static $last;
		if($tagData) {
			/*if ($last) {
				//$tagData = $last.$tagData;
				$tagData = preg_replace('#&amp;([a-z]+);#U', '&\1;', htmlspecialchars(htmlspecialchars_decode($last.$tagData)));
				$last = null;
			}
			if ($tagData == '&') {
				$last = $tagData;
			} else {*/
				
				if ($this->_params & self::XML_PROTECT_ENTITIES) {
					$tagData = $this->_decodeEntities($tagData);
				}
				if ($this->_params & self::XML_CORRECT_ENTITIES) {
					$tagData = $this->_uncorrectEntities($tagData);
				}
				
				$last_element=count($this->_arrOutput)-1;
				$this->_arrOutput[$last_element]['childrens'][] = array("textnode" => $tagData);
			//}
		}
	}
	
	//called when finished parsing
	protected function _tagClosed($parser, $name) {
		$this->_arrOutput[count($this->_arrOutput)-2]['childrens'][] = $this->_arrOutput[count($this->_arrOutput)-1];
		array_pop($this->_arrOutput);
	}
	
	//called on PI data for xml
	protected function _piData($parser, $piType, $piData) {
		if(trim($piData) && $piType == 'php') {
			$last_element=count($this->_arrOutput)-1;
			
			
			if ($this->_params & self::XML_PROTECT_ENTITIES) {
				$piData = $this->_decodeEntities($piData);
			}
			if ($this->_params & self::XML_CORRECT_ENTITIES) {
				$piData = $this->_uncorrectEntities($piData);
			}
			if ($this->_params & self::XML_PROTECT_ENTITIES) {
				$piData = $this->_unProtectPIEntities($piData);
			}
			$this->_arrOutput[$last_element]['childrens'][] = array('phpnode' => $piData);
		}
	}
	
	protected function _entityData($parser, $tagData) {
		if(trim($tagData)) {
			$last_element=count($this->_arrOutput)-1;
			$this->_arrOutput[$last_element]['childrens'][] = array("textnode" => $tagData);
		}
	}
	
	protected function _parseXMLValue($tvalue)
	{
		//$tvalue = htmlentities($tvalue);
		//$tvalue = $this->_protectEntities(htmlspecialchars($tvalue));
		//$tvalue = htmlspecialchars($tvalue);
		return $tvalue;
	}
	
	function toXML(&$definition, $part = false)
	{
		//return back xml
		$result = "";
		if(!$definition && is_object($this)){
			$definition = $this->_arrOutput;
		}
		if(!$definition){
			parent::raiseError("No definition found");
			return '';
		}
		for ($c = 0; $c < count($definition); $c++){
			//assign node value
          	if( isset($definition[$c]["textnode"]) ){
				$result .= $definition[$c]["textnode"];
			} elseif (isset($definition[$c]["phpnode"]) ){
				$result .= '<?php '.$definition[$c]["phpnode"].' ?>';
			} else {
				$autoclosed = (in_array($definition[$c]["nodename"], $this->_autoclosedTag) || (strpos($definition[$c]["nodename"], 'atm') === 0 && !isset($definition[$c]["childrens"])));
				if (!$part || $part == self::ARRAY2XML_START_TAG) {
					$result .='<' . $definition[$c]["nodename"];
					if(is_array($definition[$c]["attributes"])) {
						while (list($key, $value) = each($definition[$c]["attributes"])){
							$result .=' ' . $key.'="' . $this->_parseXMLValue($value) . '"';
						}
					}
					$result .= $autoclosed ? ' />' : '>';
				}
				if (!$part) {
					if( isset($definition[$c]["childrens"]) ){
						$result .= $this->toXML($definition[$c]["childrens"], $part);
					}
				}
				if ((!$part || $part == self::ARRAY2XML_END_TAG) && !$autoclosed) {
					$result .= '</' . $definition[$c]["nodename"] . '>';
				}
			}
		}
		return $result;
	}
	
	function getParsedArray() {
		if ($this->_params & self::XML_ENCLOSE) {
			//remove enclose tag
			return $this->_arrOutput[0]['childrens'];
		} else {
			return $this->_arrOutput;
		}
	}
	
	function getXMLInTag($definition, $tagname) {
		//jump directly to childrens
		if (isset($definition['childrens'])) {
			$definition = $definition['childrens'];
		}
		if (is_array($definition) && is_array($definition[0])) {
			//loop on subtags
			foreach (array_keys($definition) as $key) {
				if (isset($definition[$key]['nodename']) && $definition[$key]['nodename'] == $tagname && isset($definition[$key]['childrens'])) {
					return $this->toXML($definition[$key]['childrens']);
				} elseif (isset($definition[$key]['nodename']) && $definition[$key]['nodename'] == $tagname) {
					return false;
				} elseif (is_array($definition[$key]) && isset($definition[$key]['childrens'])) {
					$return = $this->getXMLInTag($definition[$key]['childrens'], $tagname);
					if ($return) {
						return $return;
					}
				}
			}
		} else {
			$this->raiseError("Malformed definition to compute : ".print_r($definition, true));
			return false;
		}
		return false;
	}
}
?>