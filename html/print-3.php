<?php //Generated on Tue, 25 Nov 2008 16:53:30 +0100 by Automne (TM) 4.0.0a
if (!isset($cms_page_included) && !$_POST && !$_GET) {
	header('HTTP/1.x 301 Moved Permanently', true, 301);
	header('Location: http://automne4/web/fr/print-3-presentation.php');
	exit;
}
require_once($_SERVER["DOCUMENT_ROOT"]."/cms_rc_frontend.php");
 ?><?php if (defined('APPLICATION_XHTML_DTD')) echo APPLICATION_XHTML_DTD."\n";  ?>
<html xmlns="http://www.w3.org/1999/xhtml" lang="fr">
<head>
	<title>Automne 4 : Pr�sentation</title>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
	<link rel="stylesheet" type="text/css" href="/css/print.css" />
</head>
<body>
<h1>Pr�sentation</h1>
<h3>

		
&raquo;
&nbsp;
Pr�sentation
		

</h3>



	
	
		<div class="text"><p style="text-align: left;">Dans cette page, il faut pr&eacute;senter le CMS. Quels sont ces cas d'utilisations les plus adapt&eacute;s (Sites institutionnels multilangues, intranet, extranet, etc.) et ses forces (modulaire, simple d'usage, solide, perenne, resistant &agrave; la charge, etc.).</p></div>
	
	<div class="spacer"></div>



	
	
<br />
<hr />
<div align="center">
	<small>
		Derni�re mise � jour le 24/11/2008<br />
		
				Page  "Pr�sentation" (http://automne4/web/fr/3-presentation.php)
				
<br />
		Tir� du site http://<?php echo $_SERVER["HTTP_HOST"];   ?>
	</small>
</div>
<script language="JavaScript">window.print();</script>
<?php if (SYSTEM_DEBUG && STATS_DEBUG) {view_stat(); if (VIEW_SQL && isset($_SESSION["cms_context"]) && is_object($_SESSION["cms_context"])) {save_stat();}}  ?>
</body>
</html>