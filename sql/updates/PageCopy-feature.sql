#06/01/2004 
#
#Added in Automne .sql since
#Automne2-data.sql version 1.21

#[FEATURE] Addition : page copy with template substitution

# -------------------------------------------------------------------------
#
#+- /automne/admin/page_summary.php 
#+  /automne/admin/page_copy.php
#
# -------------------------------------------------------------------------

INSERT INTO
	`I18NM_messages`
VALUES
(1046, 'standard', 20040107164838, 'Copier', 'Copy'),
(1047, 'standard', 20040107164934, 'S�lectionner la section d\'arborescence o� la page r�sultant de la copie devra se trouver', 'Select the tree section where to put the resulting page'),
(1048, 'standard', 20040107164949, 'Copie de page', 'Page copy'),
(1049, 'standard', 20040107165045, 'S�lectionner une page, la page r�sultant de l\'op�ration de copie sera fille de celle-ci.', 'Select a page, the page resulting of the copy operation will be a sibling of this one.'),
(1050, 'standard', 20040107165122, 'Mod�le de substitution', 'Substitution template'),
(1051, 'standard', 20040107165336, 'S�lectionner le mod�le qui se substituera au mod�le de la page copi�e. Ce peut �tre le m�me mod�le.\r\nAttention ! Les mod�les doivent avoir les m�me espaces clients et contenu de ces espaces clients !', 'Select the substitution template which will replace the copied page template. This can be the same.\r\nBeware ! The templates should have the same client spaces and content of these client spaces !');
