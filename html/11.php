<?php //Generated on Tue, 25 Nov 2008 16:53:40 +0100 by Automne (TM) 4.0.0a
if (!isset($cms_page_included) && !$_POST && !$_GET) {
	header('HTTP/1.x 301 Moved Permanently', true, 301);
	header('Location: http://automne4/web/fr/11-gestion-de-contenu.php');
	exit;
}
require_once($_SERVER["DOCUMENT_ROOT"]."/cms_rc_frontend.php");
 ?><?php if (defined('APPLICATION_XHTML_DTD')) echo APPLICATION_XHTML_DTD."\n";  ?>
<html xmlns="http://www.w3.org/1999/xhtml" lang="fr">
<head>
	<title>Automne 4 : Gestion de contenu</title>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
	<?php echo CMS_view::getCSS(array('/css/common.css','/css/interieur.css'), 'screen');  ?>

	<!--[if lte IE 6]> 
	<link rel="stylesheet" type="text/css" href="/css/ie6.css" media="screen" />
	<![endif]-->
	<?php echo CMS_view::getJavascript(array('/js/sifr.js','/js/common.js','/js/CMS_functions.js'));  ?>

	<link rel="icon" type="image/x-icon" href="http://automne4/favicon.ico" />
	<meta name="language" content="fr" />
	<meta name="generator" content="Automne (TM)" />
	<meta name="identifier-url" content="http://automne4" />

</head>
<body>
 <div id="main">
  <div id="container">
   <div id="header">
    
       
<a id="lienAccueil" href="http://automne4/web/fr/2-accueil.php" title="Retour � l'accueil">Retour � l'accueil</a>

      

   </div>
   <div id="backgroundBottomContainer">
    <div id="menuLeft">
     <ul class="CMS_lvl1"><li class="CMS_lvl1 CMS_open "><a class="CMS_lvl1" href="http://automne4/web/fr/2-accueil.php">Accueil</a><ul class="CMS_lvl2"><li class="CMS_lvl2 CMS_nosub "><a class="CMS_lvl2" href="http://automne4/web/fr/3-presentation.php">Pr�sentation</a></li>
<li class="CMS_lvl2 CMS_open "><a class="CMS_lvl2" href="http://automne4/web/fr/4-fonctionnalites.php">Fonctionnalit�s</a><ul class="CMS_lvl3"><li class="CMS_lvl3 CMS_nosub CMS_current"><a class="CMS_lvl3" href="http://automne4/web/fr/11-gestion-de-contenu.php">Gestion de contenu</a></li>
<li class="CMS_lvl3 CMS_nosub "><a class="CMS_lvl3" href="http://automne4/web/fr/12-modules.php">Modules</a></li>
<li class="CMS_lvl3 CMS_nosub "><a class="CMS_lvl3" href="http://automne4/web/fr/13-gestion-des-utilisateurs.php">Les utilisateurs</a></li>
<li class="CMS_lvl3 CMS_nosub "><a class="CMS_lvl3" href="http://automne4/web/fr/14-gestion-des-droits.php">Gestion des droits</a></li>
<li class="CMS_lvl3 CMS_nosub "><a class="CMS_lvl3" href="http://automne4/web/fr/15-module-actualites-mediatheque.php">Les modules</a></li>
<li class="CMS_lvl3 CMS_nosub "><a class="CMS_lvl3" href="http://automne4/web/fr/16-fonctions-annexes.php">Fonctions annexes</a></li>
</ul>
</li>
<li class="CMS_lvl2 CMS_nosub "><a class="CMS_lvl2" href="http://automne4/web/fr/5-actualite.php">Actualit�s</a></li>
<li class="CMS_lvl2 CMS_nosub "><a class="CMS_lvl2" href="http://automne4/web/fr/6-mediatheque.php">M�diath�que</a></li>
</ul>
</li>
</ul>

    </div>
    <div id="content" class="page11">
     <div id="breadcrumbs">
      <a href="http://automne4/web/fr/2-accueil.php">Accueil</a>
 &gt; 
<a href="http://automne4/web/fr/4-fonctionnalites.php">Fonctionnalit�s</a>
 &gt; 

     </div>
     <div id="title">
      <h1>Gestion de contenu</h1>
     </div>
     


	
	
		<div class="text"><p>Dans cette page doit se trouver des explications sur :</p><ul><li>Principe de &quot;Page&quot;</li><li>Principe de &quot;Mod&egrave;le&quot;</li><li>Principe de &quot;Rang&eacute;e&quot;</li></ul></div>
	
	<div class="spacer"></div>

     <a href="#header" id="top" title="haut de la page">Haut</a>
    </div>
    <div class="spacer"></div>
   </div>
  </div>
 </div>
 <div id="footer">
  <div id="menuBottom">
   <ul>
    <li><a href="http://automne4/web/fr/8-plan-du-site.php">Plan du site</a></li>
<li><a href="http://automne4/web/fr/9-contact.php">Contact</a></li>

   </ul>
   <div class="spacer"></div>
  </div>
 </div>
<?php if (SYSTEM_DEBUG && STATS_DEBUG) {view_stat(); if (VIEW_SQL && isset($_SESSION["cms_context"]) && is_object($_SESSION["cms_context"])) {save_stat();}}  ?>
</body>
</html>