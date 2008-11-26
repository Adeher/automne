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
// $Id: redirOutFrames.php,v 1.1.1.1 2008/11/26 17:12:06 sebastien Exp $

/**
  * PHP page : redirOutFrames
  * redirect to the top frame
  * 
  * @package CMS
  * @subpackage admin
  * @author S�bastien Pauchet <sebastien.pauchet@ws-interactive.fr>
  */

require_once($_SERVER["DOCUMENT_ROOT"]."/cms_rc_admin.php");
require_once(PATH_ADMIN_SPECIAL_SESSION_CHECK_FS);

$redir = ($_POST["redir"]) ? $_POST["redir"]:$_GET["redir"];

if (!$redir) {
	die("Error : Parameter missing...");
	exit;
}

echo '
<html>
<head>
	<meta http-equiv="pragma" content="no-cache" />
	<script type="text/javascript" language="javascript">
	    window.top.location.replace(\''.urldecode($redir).'&'.session_name().'='.session_id().'\');
	</script>
</head>
<body>
Loading, Please wait ...
</body>
</html>
';
?>
