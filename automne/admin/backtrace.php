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
// $Id: backtrace.php,v 1.1 2009/04/10 15:36:05 sebastien Exp $

/**
  * PHP page : Backtrace debug page
  *
  * @package CMS
  * @subpackage admin
  * @author S�bastien Pauchet <sebastien.pauchet@ws-interactive.fr>
  */
require_once($_SERVER["DOCUMENT_ROOT"]."/cms_rc_admin.php");

$dialog = new CMS_dialog();
$dialog->setTitle('Automne :: Debug :: BackTrace','pic_meta.gif');

$backTraceName = $_GET['bt'];

if ($backTraceName && isset($_SESSION["automneBacktraces"]) && isset($_SESSION["automneBacktraces"][$backTraceName])) {
	$content = '
	<h3>Backtrace:</h3>
	'.$_SESSION["automneBacktraces"][$backTraceName]['summary'].'<br />
	<h3>Backtrace Detail:</h3>
	<pre>'.htmlspecialchars($_SESSION["automneBacktraces"][$backTraceName]['backtrace']).'</pre>
	';
} else {
	$content = 'Cannot backtrace, datas missing ...';
}
$dialog->setContent($content);
$dialog->show();
?>