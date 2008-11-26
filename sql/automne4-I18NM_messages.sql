# $Id: automne4-I18NM_messages.sql,v 1.1.1.1 2008/11/26 17:12:36 sebastien Exp $
#
# Suppression avant mise � jour du Contenu de la table `I18NM_messages` pour le module standard
#

DELETE FROM I18NM_messages WHERE module='standard';

#
# Contenu de la table `I18NM_messages` pour le module standard
#

INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1, 'standard', NOW(), 'Aucun droit', 'No rights');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (2, 'standard', NOW(), 'Site', 'Site');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (3, 'standard', NOW(), 'Admin', 'Admin');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (4, 'standard', NOW(), 'Jamais valid�', 'Never validated');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (5, 'standard', NOW(), 'Valid� non public', 'Validated not public');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (6, 'standard', NOW(), 'Public', 'Public');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (7, 'standard', NOW(), 'Propri�t�s', 'Properties');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (8, 'standard', NOW(), 'Contenu', 'Content');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (9, 'standard', NOW(), 'Ordre des liens', 'Order of links');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (10, 'standard', NOW(), 'Aucun', 'None');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (11, 'standard', NOW(), 'Site', 'Site');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (12, 'standard', NOW(), 'Admin', 'Admin');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (13, 'standard', NOW(), 'Utilisable', 'Useable');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (14, 'standard', NOW(), 'Archiv�', 'Archived');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (15, 'standard', NOW(), 'Supprim�', 'Deleted');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (16, 'standard', NOW(), 'Administrateur', 'Super Administrator');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (17, 'standard', NOW(), 'R�g�n�rer les pages', 'Advanced Administration');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (18, 'standard', NOW(), 'Gestion des rang�es', 'Style-rows Administration');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (19, 'standard', NOW(), 'Gestion des mod�les', 'Template Administration');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (20, 'standard', NOW(), 'Journal des actions', 'Action Log Administration');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (21, 'standard', NOW(), 'Validations', 'Validations');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (22, 'standard', NOW(), 'Modification de votre profil', 'Profile modification');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (23, 'standard', NOW(), 'Alertes sur les pages', 'Pages alerts');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (24, 'standard', NOW(), 'Modifier', 'Modify');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (25, 'standard', NOW(), 'Retour', 'Back');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (26, 'standard', NOW(), 'Sommaire', 'Home');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (27, 'standard', NOW(), 'Profils', 'Users');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (28, 'standard', NOW(), 'Arborescence', 'Tree');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (29, 'standard', NOW(), 'Journal', 'Log');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (30, 'standard', NOW(), 'Mod�les', 'Templates');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (31, 'standard', NOW(), 'Meta', 'Advanced');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (32, 'standard', NOW(), 'Quitter', 'Disconnect');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (33, 'standard', NOW(), 'le', 'the');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (34, 'standard', NOW(), 'Connect� :', 'Connected as:');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (35, 'standard', NOW(), 'French', 'English');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (36, 'standard', NOW(), 'm/d/y', 'm/d/y');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (37, 'standard', NOW(), '[Session perdue]', '[Session expired]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (38, 'standard', NOW(), 'Acceptation', 'Approval');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (39, 'standard', NOW(), 'Refus', 'Refusal');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (40, 'standard', NOW(), 'Transfert', 'Transfer');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (41, 'standard', NOW(), 'Emplacement (suppression / archivage)', 'Location (deletion/archiving)');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (42, 'standard', NOW(), 'Suppression / archivage', 'Deletion / archiving of page');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (43, 'standard', NOW(), 'Suppression / archivage de la page :', 'Deletion / archiving of the page :');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (44, 'standard', NOW(), 'Cr�ation / modification de page', 'Creation / modification of page');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (45, 'standard', NOW(), 'Cr�ation / modification de la page :', 'Creation / modification of the page :');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (46, 'standard', NOW(), 'Ordre du menu', 'Order of sub page links');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (47, 'standard', NOW(), 'Modification de l\'ordre du menu de navigation de la page :', 'Modification of link order for the page :');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (48, 'standard', NOW(), 'Pr�visualiser la page', 'Preview');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (49, 'standard', NOW(), 'Page en ligne', 'On line');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (50, 'standard', NOW(), 'Erreur de login, nouvel essai', 'Login error, please try again.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (51, 'standard', NOW(), 'Bienvenue sur %s', 'Welcome to %s');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (52, 'standard', NOW(), 'Identification', 'Please enter your access codes');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (53, 'standard', NOW(), 'Langue', 'Language');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (54, 'standard', NOW(), 'Identifiant', 'Identification');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (55, 'standard', NOW(), 'Mot de passe', 'Password');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (56, 'standard', NOW(), 'Valider', 'Validate');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (57, 'standard', NOW(), 'Sommaire', 'Home');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (58, 'standard', NOW(), 'Sommaire', 'Home');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (60, 'standard', NOW(), 'Validations en attente', 'Validations pending');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (62, 'standard', NOW(), 'Pages', 'Your web pages');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (63, 'standard', NOW(), 'Choisir une page', 'Select a page');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (64, 'standard', NOW(), 'Gestion de contenu', 'Content management');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (65, 'standard', NOW(), '[Droits insuffisants pour acc�der � cette page]', '[Error, you do not have sufficiant rights to view this page]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (66, 'standard', NOW(), 'Page inconnue', 'Page unknown');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (67, 'standard', NOW(), 'Profils', 'Users');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (68, 'standard', NOW(), 'Profil utilisateur', 'User Profile');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (69, 'standard', NOW(), 'au', 'to');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (70, 'standard', NOW(), 'ID', 'ID');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (71, 'standard', NOW(), 'Publication', 'Publication');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (72, 'standard', NOW(), 'Mod�le', 'Template');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (73, 'standard', NOW(), 'Profils utilisateurs', 'User profiles');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (74, 'standard', NOW(), 'Profil de groupe', 'Group profile');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (75, 'standard', NOW(), 'Profils de groupes', 'Group profiles');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (76, 'standard', NOW(), 'Utilisateurs du groupe', 'Users in group');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (77, 'standard', NOW(), 'Gestion des utilisateurs', 'Users administration ');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (78, 'standard', NOW(), 'Page', 'View page');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (79, 'standard', NOW(), 'Aper�u de la page', 'Page preview');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (80, 'standard', NOW(), 'Voir en ligne', 'On line');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (81, 'standard', NOW(), 'Autres', 'Other');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (82, 'standard', NOW(), 'D�verrouiller', 'Unlock');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (83, 'standard', NOW(), 'Archiver la page', 'Archive page');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (84, 'standard', NOW(), 'Supprimer la page', 'Delete page');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (85, 'standard', NOW(), 'Annuler la suppression', 'Undo deletion');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (86, 'standard', NOW(), 'Annuler l\'archivage', 'Undo archiving');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (87, 'standard', NOW(), 'Modifier', 'Modify');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (88, 'standard', NOW(), 'Modifier les propri�t�s', 'Modify properties');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (89, 'standard', NOW(), 'Modifier le contenu de la page', 'Modify page content');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (90, 'standard', NOW(), 'Cr�er', 'Create');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (91, 'standard', NOW(), 'Cr�er une page', 'Create new page');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (92, 'standard', NOW(), 'D�placer la page', 'Move page');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (93, 'standard', NOW(), 'Pr�nom', 'First name');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (94, 'standard', NOW(), 'Nom', 'Last name');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (95, 'standard', NOW(), 'Confirmer mot de passe', 'Confirm Password');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (96, 'standard', NOW(), 'Langue', 'Language');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (97, 'standard', NOW(), 'R�tablir la page "%s" ?', 'Confirm undo deletion of page "%s" ?');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (98, 'standard', NOW(), 'Sortir d\'archive la page "%s" ?', 'Confirm undo archiving of page "%s" ?');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (99, 'standard', NOW(), 'Coordonn�es', 'Contact Information');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (100, 'standard', NOW(), 'D�placer la page : choisir la destination', 'Move page: choose the destination');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (101, 'standard', NOW(), 'S�lectionner la page de destination de la page %s', 'Select the page destination for the page %s');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (102, 'standard', NOW(), 'Email', 'Email');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (103, 'standard', NOW(), 'Service', 'Service');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (104, 'standard', NOW(), 'Adresse', 'Address');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (105, 'standard', NOW(), 'Code Postal', 'Zip Code');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (106, 'standard', NOW(), 'Ville', 'City');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (107, 'standard', NOW(), 'R�gion', 'State');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (108, 'standard', NOW(), 'Pays', 'Country');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (109, 'standard', NOW(), 'T�l�phone', 'Phone');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (110, 'standard', NOW(), 'Portable', 'Cell Phone');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (111, 'standard', NOW(), 'Fax', 'Fax');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (112, 'standard', NOW(), 'Fonction', 'Job Title');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (113, 'standard', NOW(), 'Droits de consultation', 'Viewing rights');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (114, 'standard', NOW(), 'Cet utilisateur a tous les droits sur l\'application. Il n\'est donc pas possible de g�rer ses droits par section. Cependant il est possible d\'ajouter ou de supprimer des sections dans l\'�ventualit� o� il perdrait ses droits d\'origine.', 'This user has total application access. It is not possible to administer his or her viewing and editing rights. To administrate the user\'s rights the current status must be modified.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (115, 'standard', NOW(), 'Droits d\'administration', 'Administration Rights');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (118, 'standard', NOW(), 'Confirmer la suppression de la page \'%s\' ?', 'Confirm deletion request for page \'%s\' ?');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (119, 'standard', NOW(), 'Confirmer l\'archivage de la page \'%s\' ?', 'Do you confirm asking for archiving of the page \'%s\' ?');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (120, 'standard', NOW(), 'Votre profil', 'Your profile');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (121, 'standard', NOW(), '[Erreur lors de la suppression]', '[Error while deleting page]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (122, 'standard', NOW(), 'Op�ration effectu�e', 'Action completed');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (123, 'standard', NOW(), 'Suppression de page', 'Page deletion');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (124, 'standard', NOW(), 'Validation en attente :\r\n', 'The following task needs validation:\r\n');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (125, 'standard', NOW(), 'Suppression de la page "%s" par l\'utilisateur %s', 'Deletion of page "%s" by user %s');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (126, 'standard', NOW(), '[Erreur lors du r�tablissement]', '[Error while trying to undo deletion of the page)');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (127, 'standard', NOW(), 'Archivage de page', 'Page archiving');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (128, 'standard', NOW(), 'Archivage de la page "%s" par l\'utilisateur %s', 'Archivage of page "%s" by user %s');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (129, 'standard', NOW(), 'Propri�t�s de la page', 'Page properties');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (130, 'standard', NOW(), 'Cr�ation de page - �tape %s/3', 'Page creation step %s/3');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (131, 'standard', NOW(), '<span class="admin_text_alert">*</span> Champ obligatoire', '<span class="admin_text_alert">*</span> Required');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (132, 'standard', NOW(), 'Titre', 'Title');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (133, 'standard', NOW(), 'Lien', 'Link name');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (134, 'standard', NOW(), 'D�but de publication', 'Publication start');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (135, 'standard', NOW(), 'Fin de publication', 'Publication end');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (136, 'standard', NOW(), 'D�lai d\'alerte', 'Alert delay');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (137, 'standard', NOW(), 'Date d\'alerte', 'Alert date');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (138, 'standard', NOW(), 'Message d\'alerte', 'Alert message');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (139, 'standard', NOW(), 'Description', 'Description');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (140, 'standard', NOW(), 'Mots cl�s', 'Keywords');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (141, 'standard', NOW(), 'jj', 'dd');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (142, 'standard', NOW(), 'mm', 'mm');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (143, 'standard', NOW(), 'aaaa', 'yyyy');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (144, 'standard', NOW(), '[Tous les champs obligatoires ne sont pas renseign�s]', '[Please enter required information]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (145, 'standard', NOW(), 'Format incorrect pour le champ : %s', 'Incorrect value entered for: %s');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (146, 'standard', NOW(), '[L\'identifiant "%s" existe d�j�]', '[Sorry, the user name "%s" is unavailable]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (147, 'standard', NOW(), 'Lien', 'Link');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (148, 'standard', NOW(), 'Format %s', 'format %s');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (149, 'standard', NOW(), 'Moteurs de recherche', 'for search engines');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (150, 'standard', NOW(), 'en jours, 0 pour jamais', 'in number of days, 0 for never');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (152, 'standard', NOW(), 'Nouvel utilisateur', 'New user');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (153, 'standard', NOW(), '[Autorisation insuffisante]', 'Clearance insufficient.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (154, 'standard', NOW(), 'Page verrouill�e', 'The page is locked.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (155, 'standard', NOW(), 'D�sactiver', 'Disactivate');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (156, 'standard', NOW(), 'Activer', 'Activate');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (157, 'standard', NOW(), 'de', 'of');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (158, 'standard', NOW(), '[Erreur lors du d�placement de page]', '[Error while moving the page]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (159, 'standard', NOW(), 'Cr�er une page', 'Create a page');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (160, 'standard', NOW(), 'Statut', 'Status');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (161, 'standard', NOW(), 'Titre', 'Title');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (162, 'standard', NOW(), 'Actions', 'Actions');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (163, 'standard', NOW(), 'Sous-pages', 'Sub pages');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (164, 'standard', NOW(), 'Haut', 'Up');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (165, 'standard', NOW(), 'Bas', 'Down');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (166, 'standard', NOW(), 'Erreur lors de la modification de l\'ordre des pages.', 'Error while trying to modify the order of the sub-pages.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (168, 'standard', NOW(), 'Nouveau groupe', 'New group');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (170, 'standard', NOW(), 'Modification de l\'ordre du menu', 'Order of sub-page links modification');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (171, 'standard', NOW(), 'Modification de l\'ordre du menu de navigation de la page \'%s\' par l\'utilisateur %s.', 'Order of sub page links modification for page \'%s\' by user %s');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (172, 'standard', NOW(), 'Modification des propri�t�s d\'une page', 'Page properties modification');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (173, 'standard', NOW(), 'Modification des propri�t�s de la page \'%s\' par l\'utilisateur %s', 'Modification of page properties for page \'%s\' by user %s');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (174, 'standard', NOW(), 'Modification de la page : %s', 'Page modification : %s');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (175, 'standard', NOW(), '[L\'identifiant de groupe "%s" existe d�j�]', '[Sorry, the group "%s" is unavailable]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (176, 'standard', NOW(), 'Modification du contenu', 'Content modification');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (177, 'standard', NOW(), 'Contenu', 'Content');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (178, 'standard', NOW(), 'Erreur lors de la sauvegarde des donn�es ...', 'Error while saving new content ...');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (179, 'standard', NOW(), 'Modifier la page', 'Content management');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (180, 'standard', NOW(), 'Annuler', 'Cancel');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (181, 'standard', NOW(), 'Actions', 'Actions');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (182, 'standard', NOW(), 'Modification d\'une page', 'Page content modification');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (183, 'standard', NOW(), 'L\'utilisateur %s a modifi� la page : \'%s\'', 'User %s has changed the content of the following page : \'%s\'');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (184, 'standard', NOW(), '[Les champs "mot de passe" doivent �tre identiques, sup�rieur � 4 caract�res et diff�rents de l\'identifiant.]', '[Password fields must be the same, have more than 4 characters and not the same of the login]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (185, 'standard', NOW(), 'Choisir un mod�le', 'Select a template');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (186, 'standard', NOW(), 'Choix du mod�le', 'Template selection');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (187, 'standard', NOW(), 'Changer de mod�le', 'Modify template');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (188, 'standard', NOW(), '[Erreur lors du choix du mod�le]', '[Error while loading template]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (189, 'standard', NOW(), 'Groupe', 'Group');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (190, 'standard', NOW(), 'Aucun', 'None');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (191, 'standard', NOW(), 'Fichier', 'File');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (192, 'standard', NOW(), 'Mettre � jour<br />(Pour supprimer le fichier, cocher la case et laisser le champ "parcourir" vide).', 'Update<br />(to delete file check box and leave above field empty.)');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (193, 'standard', NOW(), 'Alt tag/L�gende', 'Alt tag/caption');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (194, 'standard', NOW(), 'Image ', 'Current image');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (195, 'standard', NOW(), 'Aucune', 'None');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (196, 'standard', NOW(), '[Erreur lors de l\'upload du fichier]', '[Error while uploading file]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (197, 'standard', NOW(), 'Notification', 'Alert');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (198, 'standard', NOW(), 'Niveau d\'acc�s', 'Access Level');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (199, 'standard', NOW(), 'Droits sur les groupes de mod�les', 'Application group rights.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (200, 'standard', NOW(), 'Fichier joint', 'Uploaded file');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (201, 'standard', NOW(), 'Lien', 'Label');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (202, 'standard', NOW(), 'Fichier existant', 'Existing file');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (203, 'standard', NOW(), 'Aucun', 'None');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (204, 'standard', NOW(), 'Il existe deux niveaux de notification :<br />\r\n>"Courant" : emails pour tout changement dans vos sections. <br /> >"Critique" : emails relatifs � des dysfonctionnements ou lorsque votre attention est requise (modification de vos droits par exemple).', 'There are two alert levels:<br />\r\n> "All": Sends an email for all modifications within the section<br />\r\n> "Critical": Sends an email only for major changes and alerts critical to the user.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (205, 'standard', NOW(), 'Modification', 'Modification');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (206, 'standard', NOW(), 'Affichage par lettre', 'Alphabetical search');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (207, 'standard', NOW(), 'Affichage par page', 'Complete list search');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (208, 'standard', NOW(), 'Aucun', 'None');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (209, 'standard', NOW(), 'Interne', 'Internal');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (210, 'standard', NOW(), 'Externe', 'External');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (211, 'standard', NOW(), 'Validations', 'Validations');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (212, 'standard', NOW(), 'Recherche', 'Search');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (213, 'standard', NOW(), 'Pages', 'Pages');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (214, 'standard', NOW(), 'Enlever recherche', 'Remove search');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (215, 'standard', NOW(), '[Validations effectu�es]', '[Validations approved]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (216, 'standard', NOW(), 'Validation par lot', 'Batch validations');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (217, 'standard', NOW(), 'D�tail', 'Detail');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (218, 'standard', NOW(), 'Cocher les �l�ments �valider.', 'Check the boxes of files to validate');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (219, 'standard', NOW(), 'Soumettre', 'Submit');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (220, 'standard', NOW(), 'Cocher', 'Check all');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (221, 'standard', NOW(), 'D�cocher', 'Uncheck all');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (222, 'standard', NOW(), '[Le %s "%s" n\'a pas �t� trouv�]', '[Sorry the %s "%s" was not found]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (223, 'standard', NOW(), 'Validation', 'Validation');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (224, 'standard', NOW(), 'Editeur(s) de la ressource', 'Resource editor(s)');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (225, 'standard', NOW(), 'Aide', 'Help');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (226, 'standard', NOW(), 'Accepter', 'Approve');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (227, 'standard', NOW(), 'Refuser', 'Refuse');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (228, 'standard', NOW(), 'D�l�guer � ', 'Delegate to');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (229, 'standard', NOW(), 'Commentaires', 'Comments');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (230, 'standard', NOW(), 'Niveau', 'Level');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (231, 'standard', NOW(), 'Valider', 'Change');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (232, 'standard', NOW(), 'Les mod�les et rang�es de page appartiennent � un ou plusieurs groupes. Pour utiliser un mod�le ou une rang�e, un utilisateur doit avoir les droits sur tous ses groupes.', 'Each template or row belong to one or more groups. For a user to be able to use a template or a row, he or she must have usage rights for ALL the groups to which that belongs to.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (233, 'standard', NOW(), 'Cocher le(s) groupe(s) attribu�(s).', 'Check the appropriate groups.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (234, 'standard', NOW(), 'Validation', 'Validation');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (235, 'standard', NOW(), 'Validation :\r\n\r\n%s\r\nModule : %s\r\n\r\nCommentaires :\r\n%s', 'The following validation has been approved:\r\n\r\n%s\r\napplication : %s\r\n\r\nComments :\r\n%s');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (236, 'standard', NOW(), 'Refus de validation ', 'Negative validation');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (237, 'standard', NOW(), 'Refus de validation :\r\n\r\n%s\r\nModule : %s\r\nCommentaire :\r\n%s', 'A negative validation occurred on the following resource (which should therefore be edited before being able to pass validation again) :\r\n\r\n%s\r\nModule : %s\r\nComment :\r\n%s');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (238, 'standard', NOW(), '[Validation transf�r�e]', 'Transferred validation');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (239, 'standard', NOW(), 'Validation transf�r�e :\r\n\r\nAuteur du transfert : %s\r\n%s\r\nModule : %s\r\nCommentaire :\r\n%s', 'The following validation has been transferred to you :\r\n\r\nValidator author of transfer : %s\r\n%s\r\nModule : %s\r\nComment :\r\n%s');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (240, 'standard', NOW(), '[Erreur ! L\'�l�ment �valider n\'est pas rattach� � un module]', '[Error. The item to approve is not attached to a valid application]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (241, 'standard', NOW(), '[Erreur ! Le module n\'a pas correctement proc�d� � la validation de sa ressource]', '[Error: the application failed to properly validate the item]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (242, 'standard', NOW(), 'Droits sur le contenu', 'Content Mgmt. Rights');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (243, 'standard', NOW(), 'Gestion de pages', 'Pages management');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (244, 'standard', NOW(), 'Nouvelle section', 'New section');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (245, 'standard', NOW(), 'Cr�ation / modification de l\'actualit�', 'News item creation / modification');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (246, 'standard', NOW(), 'Cr�ation / modification de l\'actualit� : ', 'Creation / modification of news item: ');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (247, 'standard', NOW(), 'Gestion des acc�s aux modules', 'Access management to modules');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (248, 'standard', NOW(), 'Module %s', 'Module %s');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (249, 'standard', NOW(), 'Accueil administration', 'Administration home');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (250, 'standard', NOW(), 'R�tablir', 'Undelete');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (251, 'standard', NOW(), 'R�tablir', 'Unarchive');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (252, 'standard', NOW(), 'Supprimer', 'Delete');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (253, 'standard', NOW(), 'Archiver', 'Archive');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (254, 'standard', NOW(), 'Confirmer la suppression de l\'actualit� \'%s\'', 'Do you confirm deletion of the news \'%s\'');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (255, 'standard', NOW(), 'Confirmer l\'archivage de l\'actualit� \'%s\'', 'Do you confirm archiving of the news \'%s\'');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (256, 'standard', NOW(), 'Statut', 'Status');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (257, 'standard', NOW(), 'Titre', 'Title');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (258, 'standard', NOW(), 'Publication', 'Publication');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (259, 'standard', NOW(), 'Actions', 'Actions');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (260, 'standard', NOW(), 'Ajouter', 'Add');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (261, 'standard', NOW(), 'Modifier', 'Edit');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (262, 'standard', NOW(), 'Nouveau', 'New');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (264, 'standard', NOW(), 'Applications', 'Applications');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (265, 'standard', NOW(), 'Aucun enregistrement.', 'Empty set.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (266, 'standard', NOW(), 'Aucun droit', 'No rights');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (267, 'standard', NOW(), 'Droit de consultation cot� client', 'Frontend rights');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (268, 'standard', NOW(), 'Droit d\'administration', 'Backend rights');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (269, 'standard', NOW(), 'Date de publication sur accueil, d�but', 'Homepage publication date, start');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (270, 'standard', NOW(), 'Date de publication sur accueil, fin', 'Homepage publication date, end');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (271, 'standard', NOW(), 'Image', 'Image');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (272, 'standard', NOW(), 'Mettre � jour<br />(Pour supprimer l\'image, cocher la case et laisser le champ "parcourir" vide).', 'Update<br />\r\n(to delete file check box and leave above field empty.)');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (273, 'standard', NOW(), 'Texte', 'Text');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (274, 'standard', NOW(), 'Lien', 'Link');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (275, 'standard', NOW(), 'Aucun', 'None');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (276, 'standard', NOW(), 'Interne vers la page n�', 'Internal to page (ID)');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (277, 'standard', NOW(), 'Externe ', 'External : ');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (278, 'standard', NOW(), 'La ressource est verrouill�e. Elle est en cours d\'utilisation par un tiers.', 'The page or item is currently being modified by another user');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (279, 'standard', NOW(), 'Droits de validation', 'Validation rights');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (280, 'standard', NOW(), 'Changement du contenu d\'une actualit�', 'News content change');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (281, 'standard', NOW(), 'Changement du contenu de l\'actualit� : \'%s\'', 'News article content change for article : \'%s\'');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (282, 'standard', NOW(), 'Pages', 'Pages');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (283, 'standard', NOW(), 'Appliquer a tous les utilisateurs', 'Apply to all users');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (284, 'standard', NOW(), 'Confirmer l\'annulation ?', 'Confirm cancellation of modifications?');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (285, 'standard', NOW(), 'Editeur texte', 'Text editor');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (286, 'standard', NOW(), 'Editeur texte enrichi', 'Richtext editor');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (287, 'standard', NOW(), 'Editeur visuel Java (WYSIWYG)', 'Java Visual editor (WYSIWYG)');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (288, 'standard', NOW(), 'Gestion du texte', 'Text editor');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (289, 'standard', NOW(), 'Vous devez activer Javascript pour voir cette animation.', 'You must activate Javascript to see this animation.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (290, 'standard', NOW(), 'Largeur', 'Width');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (291, 'standard', NOW(), 'Hauteur', 'Height');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (292, 'standard', NOW(), 'Param�tre WMODE', 'Param WMODE');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (293, 'standard', NOW(), 'Param�tre SWLIVECONNECT', 'Param SWLIVECONNECT');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (294, 'standard', NOW(), 'Texte long', 'Long text');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (295, 'standard', NOW(), 'Param�tre MENU', 'Param MENU');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (296, 'standard', NOW(), 'Param�tre SCALE', 'Param SCALE');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (297, 'standard', NOW(), 'Param�tre QUALITY', 'Param QUALITY');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (298, 'standard', NOW(), 'Nom d\'identifiant (ID)', 'Name (ID)');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (300, 'standard', NOW(), 'Param�tre BGCOLOR', 'Param BGCOLOR');
# Automne 4 specific messages
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (301, 'standard', NOW(), 'Erreur ...', 'Error ...');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (302, 'standard', NOW(), 'Authentification ...', 'Authentification ...');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (303, 'standard', NOW(), 'Veuillez compl�ter les champs requis !', 'Please complete required fields!');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (304, 'standard', NOW(), 'Vous permet de consultez et naviguer dans l\'arborescences des pages du site.', 'Lets you see and navigate the tree of website pages.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (305, 'standard', NOW(), 'Vous permet de voir l\'�tat du contenu de cette page avant sa publication.', 'Lets you see the state of the page content before publication.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (306, 'standard', NOW(), 'L\'onglet est inaccessible car actuellement, la page est publi�e et aucun contenu n\'est en attente de validation.', 'The tab is disabled because currently, the page is published and has no content pending validation.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (307, 'standard', NOW(), 'Vous permet de voir l\'�tat du contenu en cours de modification pour la page.', 'Lets you see the state of the content modification for the page.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (308, 'standard', NOW(), 'L\'onglet est inaccessible car actuellement, aucun contenu n\'est en cours de modification pour le page.', 'The tab is disabled because currently, there is no content modification for the page.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (309, 'standard', NOW(), 'Vous permet de modifier le contenu de cette page ou de continuer les modifications en cours.', 'Lets you change the content of this page or continue the modifications.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (310, 'standard', NOW(), 'L\'onglet est inaccessible car cette page ne peut �tre modifi� directement.', 'The tab is disabled because the content of this page cannot be directly changed.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (311, 'standard', NOW(), 'Derniers changements', 'Last changes');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (312, 'standard', NOW(), 'Modifi� par %s le %s.', 'Modified by %s on %s.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (313, 'standard', NOW(), 'Valid� par %s le %s.', 'Validated by %s on %s.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (314, 'standard', NOW(), 'Bienvenue %s !', 'Welcome %s!');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (315, 'standard', NOW(), 'Vous avez %s validations en attente.', 'You have %s validations pending.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (316, 'standard', NOW(), 'Vous permet de consulter et modifier les propri�t�s de la page tel que le titre le mod�le et autre m�ta-donn�es.', 'Lets you see and modify the page properties such as title, template and others meta datas.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (317, 'standard', NOW(), 'L\'onglet est inaccessible car actuellement, la page n\'existe pas cot� public du site.', 'The tab is disabled because currently, the page does not exists in the public website.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (318, 'standard', NOW(), 'Pages visibles', 'Visible pages');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (319, 'standard', NOW(), 'Pages modifiables', 'Editable pages');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (320, 'standard', NOW(), 'Cette page comporte une redirection vers : %s. Elle ne pr�sente donc pas de contenu visible.', 'This page include a redirect to: %s. It may not show any visible content.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (321, 'standard', NOW(), 'Verrouill� par :', 'Locked by:');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (322, 'standard', NOW(), 'Filtrer', 'Filter');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (323, 'standard', NOW(), 'Ce menu vous permet de filtrer l\'affichage des pages selon vos droits. "Pages visibles" affichera toutes les pages visibles et modifiables. "Pages modifiable" n\'affichera que les pages modifiables.', 'This menu allows you to filter the display of pages according to your rights. "Visible pages" display all the pages visible and editable. "Editable pages" display only editable pages.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (324, 'standard', NOW(), 'Ce champ vous permet de rechercher une page en saisissant directement son identifiant num�rique ou en saisissant un texte appartenant � son titre (minimum : 3 caract�res). Choisissez ensuite la page que vous souhaitez dans la liste d�roulante au fur et � mesure que vous saisissez vos termes de recherche.', 'This field allows you to search for a page directly by entering its ID number or by typing a text belonging to its title (with a minimum of 3 characters). Then select the page you want from the drop down list as you enter your search terms.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (325, 'standard', NOW(), 'Cette fen�tre vous permet de naviger parmis l\'arborescence des pages de votre site. Cliquez sur le nom d\'une page pour s�lectionner cette page. Cliquez sur les signes "+" et "-" � gauche des pages pour plier ou d�plier l\'arborescence.', 'This window allows you to navigate among the tree of pages of your website. Click on the name of a page to select this page. Click on the "+" and "-" signs left of the pages for folding or unfolding the tree.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (326, 'standard', NOW(), 'Vous permet de rechercher les �l�ments de votre site par leur nom.', 'Lets you search any elements of your website by name.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (327, 'standard', NOW(), 'Vous permet d\'ajouter une nouvelle page sous la page en cours.', 'Lets you add a new page below the current one.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (328, 'standard', NOW(), 'Actions sur la page.', 'Page actions.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (329, 'standard', NOW(), 'Vous permet de r�aliser diverses actions sur la page en cours : supprimer, d�placer, copier, etc.', 'Lets you perform various actions on the current page: delete, move, copy, and so on.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (330, 'standard', NOW(), 'Modifier', 'Edit');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (331, 'standard', NOW(), 'Cliquez pour modifier ce champ', 'Click to edit this field');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (332, 'standard', NOW(), 'Erreur : La date de d�but ne peut-�tre sup�rieure � la date de fin de publication.', 'Error : The starting date can not be higher than the end of publication date.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (333, 'standard', NOW(), 'Erreur : Un probl�me est survenu lors du traitement ... V�rifez votre contenu.', 'Error : A problem occured during treatment... Please check your content.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (334, 'standard', NOW(), 'Erreur : La page est actuellement v�rouill�e par l\'utilisateur %s et ne peut �tre mise � jour.', 'Error : The page is currenlty locked by user %s and cannot be updated.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (335, 'standard', NOW(), 'Recevez un email pour toute validation de page en attente dans vos sections.', 'Receive an email for any pages validation pending in your sections.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (336, 'standard', NOW(), 'Recevez un email lorsque votre profil utilisateur est modifi�.', 'Receive an email when your user profile is modified.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (337, 'standard', NOW(), 'Recevez un email lorsqu\'une alerte est sp�cifi� au niveau d\'une page que vous pouvez modifier.', 'Receive an email when an alert is set on a page you can change.');

INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (338, 'standard', NOW(), 'validation(s) en attente', 'validation(s) pending');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (339, 'standard', NOW(), 'Editeurs', 'Editors');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (340, 'standard', NOW(), 'Rafraichir le contenu de cette zone.', 'Refresh zone content.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (341, 'standard', NOW(), 'D�verrouiller la page verrouill�e par %s', 'Unlock page locked by %s');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (342, 'standard', NOW(), 'Cr�ation d\'une nouvelle page', 'Creating a new page');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (343, 'standard', NOW(), 'Cette fen�tre vous permet de cr�er une nouvelle page sous la page en actuelle. Donnez un nom � cette nouvelle page ainsi que le nom des liens qui pointeront vers cette page. Puis choisissez le mod�le � utiliser.', 'This window allows you to create a new page under the actual one. Give a name to this new page and links name which will link to this page. Then choose a template.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (344, 'standard', NOW(), 'Nom', 'Name');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (345, 'standard', NOW(), 'Vous n\'avez aucun mod�le disponible ...', 'You don\'t have any available template...');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (346, 'standard', NOW(), 'Titre de la page', 'Page title');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (347, 'standard', NOW(), 'Titre du lien', 'Link title');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (348, 'standard', NOW(), 'Choisissez le mod�le � utiliser pour la nouvelle page :', 'Choose new page template:');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (349, 'standard', NOW(), 'Vous n\'avez pas renseign� toutes les informations requises', 'You have not filled all the required informations');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (350, 'standard', NOW(), 'Cette fen�tre vous permet de cr�er copier la page et son contenu � un autre point de l\'arborescence des pages du site. Vous pouvez aussi changer le mod�le utilis� et choisir de ne pas copier le contenu mais uniquement sa structure.', 'This window allows you to create the page and copy its contents to another item on the site\'s tree pages. You can also change the template used and choose not to copy the content but only its structure.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (351, 'standard', NOW(), 'Copier le contenu de la page', 'Copy page content');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (352, 'standard', NOW(), 'Remplacer le mod�le de la page par', 'Replace page template by');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (353, 'standard', NOW(), 'Mod�le compatible', 'Matching template');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (354, 'standard', NOW(), 'Mod�le incompatible', 'Unmatching template');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (355, 'standard', NOW(), 'S�lectionnez la page � utiliser comme p�re de la page copi�e :', 'Select the page to use as father of the copied page:');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (356, 'standard', NOW(), 'Vous allez copier la page %s (%s) sous la page', 'You are going to copy the page %s (%s) under the page');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (357, 'standard', NOW(), 'Vous avez choisi de conserver le contenu de la page d\'origine.<br />', 'You choose to keep the original page content.<br />');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (358, 'standard', NOW(), 'Vous avez choisi de ne pas conserver le contenu de la page d\'origine.<br />', 'You choose not to keep the original page content.<br />');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (359, 'standard', NOW(), 'Vous avez choisi de conserver le mod�le de la page d\'origine.<br />', 'You choose to keep the original page template.<br />');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (360, 'standard', NOW(), 'Vous avez choisi de changer le mod�le de la page d\'origine.<br />', 'You choose to change the original page template.<br />');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (361, 'standard', NOW(), '<br />Confirmez vous que ces informations sont correctes ?', '<br />Confirm you that this information is correct?');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (362, 'standard', NOW(), 'Message', 'Message');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (363, 'standard', NOW(), 'Compl�ment', 'Supplement');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (364, 'standard', NOW(), 'Erreur, donn�es manquantes, veuillez r��ssayer.', 'Error, missing data, please try again.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (365, 'standard', NOW(), 'Vous n\'avez pas le droit de voir la page que vous cherchez � copier', 'You do not have the right to see the page you want to copy');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (366, 'standard', NOW(), 'Erreur durant la copie de la page...', 'Error during the copy of the page ...');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (367, 'standard', NOW(), 'Page non publi�e', 'Page unpublished');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (368, 'standard', NOW(), 'Mise � jour lors de la prochaine validation de la page', 'Updated at the next validation of the page');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (369, 'standard', NOW(), 'Libell� des liens pointant vers cette page', 'Links label pointing to this page');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (370, 'standard', NOW(), 'Identifiant unique de cette page. Permet de la retrouver ais�ment', 'Unique identifier of this page. Allows to find it easily');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (371, 'standard', NOW(), 'Mod�le employ� par la page. Permet de structurer son visuel', 'Template used by the page. Used to structure its visual');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (372, 'standard', NOW(), 'Site auquel appartient la page', 'Site which belongs page');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (373, 'standard', NOW(), 'Quelles sont les relations des autres pages avec cette page.', 'What are the relations of other pages with this page.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (374, 'standard', NOW(), 'Est ce que cette page poss�de une version imprimable sp�cifique.', 'Does this page gets a printable specific version.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (375, 'standard', NOW(), 'Est ce que cette page redirige automatiquement le visiteur vers un autre endroit.', 'Does this page automatically forwards the visitor to another place.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (376, 'standard', NOW(), 'Date � partir de laquelle la page sera visible en ligne.', 'Date from which the page will be visible online.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (377, 'standard', NOW(), 'Date � partir de laquelle la page ne sera plus visible en ligne.', 'Date from which the page is no longer visible online.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (378, 'standard', NOW(), 'D�lai pour recevoir le message d\'alerte ci-dessous.', 'Deadline for receiving the alert message below.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (379, 'standard', NOW(), 'Date � laquelle recevoir le message d\'alerte ci-dessous.', 'Date when receiving the alert message below.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (380, 'standard', NOW(), 'Message d\'alerte � recevoir par email. Attention, votre compte utilisateur doit avoir une adresse email valide.', 'Alert to be received by email. Be careful, your user account must have a valid email address.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (381, 'standard', NOW(), 'Titre de cette page', 'Page title');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (382, 'standard', NOW(), 'Description de la page � destination des moteurs de recherche.', 'Page description to search engines');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (383, 'standard', NOW(), 'Mots cl�s de la page � destination des moteurs de recherche.', 'Keywords of the page to search engines.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (384, 'standard', NOW(), 'Cat�gories de la page � destination des moteurs de recherche.', 'Categories of the page to search engines.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (385, 'standard', NOW(), 'Cette zone permet de sp�cifier si les robots utilis�s par les moteurs de recherche doivent lire ou non cette page.', 'This area allows you to specify if the robots used by search engines should or not, read this page.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (386, 'standard', NOW(), 'Valeur par d�faut du navigateur', 'Default browser value');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (387, 'standard', NOW(), 'Vous permet de sp�cifier l\'auteur du contenu pour cette page. Ce champ est visible par les moteurs de recherche.', 'You can specify the content author of this page. This field is visible by search engines.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (388, 'standard', NOW(), 'Vous permet de sp�cifier une adresse email de contact. Ce champ est visible par les moteurs de recherche.', 'You can specify a contact email address. This field is visible by search engines.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (389, 'standard', NOW(), 'Vous permet de sp�cifier le copyright du contenu de cette page. Ce champ est visible par les moteurs de recherche.', 'You can specify the copyright content of this page. This field is visible by search engines.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (390, 'standard', NOW(), 'Choisissez la langue de cette page. Ce champ est utile pour permettre un r�f�rencement optimal.', 'Choose the language of this page. This field is useful to allow for optimal referencing.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (391, 'standard', NOW(), 'Ce champ vous permet de d\'activer ou de d�sactiver le cache du navigateur de l\'internaute pour cette page.', 'This field allows you to enable or disable the browser cache for this page.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (392, 'standard', NOW(), 'Si vous �tes administrateur, vous pouvez saisir ici toute les m�ta-donn�es suppl�mentaires que vous souhaitez ajouter � la page.', 'If you are an administrator, you can enter here any meta data which you want to add to the page.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (393, 'standard', NOW(), 'M�ta donn�es libres (format HTML)', 'Free meta data (HTML format)');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (394, 'standard', NOW(), 'Sous pages', 'Sub pages');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (395, 'standard', NOW(), 'Liste des sous pages de la page', 'List of sub pages of the page');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (396, 'standard', NOW(), 'Vous pouvez changer leur ordre par glisser-d�poser.', 'You can change their order by dragging and dropping.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (397, 'standard', NOW(), 'Cette fen�tre vous permet de voir et de modifier (si vous en avez le droit) les propri�t�s de la page en cours.', 'This window allows you to view and modify (if you have the right) the properties of the current page.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (398, 'standard', NOW(), 'M�ta donn�es', 'Meta data');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (399, 'standard', NOW(), 'Alias', 'Alias');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (400, 'standard', NOW(), '# utilisateurs', '# users');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (401, 'standard', NOW(), 'Groupes d\'utilisateurs', 'User Groups');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (402, 'standard', NOW(), 'Etes-vous sur de vouloir supprimer d�finitivement le groupe : ', 'Are you sure you want to permanently delete the group: ');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (403, 'standard', NOW(), 'Groupes {0} � {1} sur {2}', 'Groups from {0} to {1} on {2}');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (404, 'standard', NOW(), 'Aucun groupe pour votre recherche...', 'No group for your search ...');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (405, 'standard', NOW(), 'Par libell�', 'By label');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (406, 'standard', NOW(), 'Par lettre :', 'By letter :');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (407, 'standard', NOW(), 'Cr�er un nouveau groupe', 'Create a new group');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (408, 'standard', NOW(), 'Profils d\'Utilisateurs et de Groupes', 'Profiles of Users and Groups');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (409, 'standard', NOW(), 'Cette fen�tre vous permet de rechercher les profils d\'utilisateurs et de groupes d\'utilisateurs d�clar�s dans Automne pour pouvoir modifier leurs droits.', 'This window lets you search user profiles and user groups declared in Autumn to modify their rights.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (410, 'standard', NOW(), 'Actif', 'Active');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (411, 'standard', NOW(), 'Etes-vous sur de vouloir supprimer d�finitivement l\'utilisateur', 'Are you sure you want to permanently delete the user');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (412, 'standard', NOW(), 'Utilisateurs {0} � {1} sur {2}', 'Users from {0} to {1} on {2}');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (413, 'standard', NOW(), 'Aucun utilisateur pour votre recherche...', 'No user for your search ...');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (414, 'standard', NOW(), 'Par nom, pr�nom, identifiant', 'By name, firstname, reference');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (415, 'standard', NOW(), 'Par groupe', 'By group');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (416, 'standard', NOW(), 'Aucun groupe actuellement.', 'No group now.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (417, 'standard', NOW(), 'Cr�er un nouvel utilisateur', 'Create a new user');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (418, 'standard', NOW(), 'Erreur durant la validation...', 'Error while validating ...');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (419, 'standard', NOW(), 'Validations effectu�es', 'Validations made');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (420, 'standard', NOW(), 'Validation effectu�e', 'Validation made');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (421, 'standard', NOW(), 'Cette fen�tre vous permet de voir les diff�rentes validations de contenu en attente sur les diff�rents modules.', 'This window lets you see the various validations content waiting on the various modules.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (422, 'standard', NOW(), 'Aucun �l�ment en attente de validation.', 'Nothing awaiting validation.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (423, 'standard', NOW(), 'Validations {0} � {1} sur {2}', 'Validations from {0} to {1} on {2}');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (424, 'standard', NOW(), 'Aucune validation � afficher', 'No validation display');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (425, 'standard', NOW(), 'Valider par lot', 'Submit a lot');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (426, 'standard', NOW(), 'Fermer', 'Close');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (427, 'standard', NOW(), '�l�ments en attente de validation s�lectionn�s. Cliquez sur "Valider par lot" pour valider ces �l�ments.', 'elements awaiting validation selected. Click on "Submit a lot" to validate these elements.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (428, 'standard', NOW(), 'Cette action fermera la fen�tre des validations.<br />Etes-vous sur ?', 'This action will close the window of validations. <br /> Are you sure?');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (429, 'standard', NOW(), 'Erreur : fonction non prise en charge...', 'Error: function not care ...');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (430, 'standard', NOW(), 'Accepter la validation', 'Accept validation');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (431, 'standard', NOW(), 'Refuser la validation', 'Refuse validation');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (432, 'standard', NOW(), 'Transf�rer la validation', 'Transfert validation');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (433, 'standard', NOW(), '�', 'to');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (434, 'standard', NOW(), 'Validation', 'Validation');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (435, 'standard', NOW(), 'Aucun �l�ment en attente de validation s�lectionn�.', 'Nothing pending validation selected.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (436, 'standard', NOW(), 'Vos Pages Favorites :', 'Your Bookmarked Pages:');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (437, 'standard', NOW(), 'Pages Archiv�es', 'Archived Pages');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (438, 'standard', NOW(), 'Duplication de branches', 'Duplication branches');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (439, 'standard', NOW(), 'Voir les param�tres du module.', 'See the module parameters.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (440, 'standard', NOW(), 'Mod�les de pages', 'Pages templates');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (441, 'standard', NOW(), 'Mod�les de rang�es', 'Templates of rows');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (442, 'standard', NOW(), 'Feuilles de styles', 'Stylesheets');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (443, 'standard', NOW(), 'Styles Wysiwyg', 'Wysiwyg Styles');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (444, 'standard', NOW(), 'Barre d\'outils Wysiwyg', 'Wysiwyg toolbar');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (445, 'standard', NOW(), 'Gestion des scripts', 'Scripts management');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (446, 'standard', NOW(), 'Gestion des langues', 'Languages management');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (447, 'standard', NOW(), 'Param�tres Serveur', 'Server settings');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (448, 'standard', NOW(), 'Param�tres Automne', 'Autumn settings');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (449, 'standard', NOW(), 'Administration', 'Administration');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (450, 'standard', NOW(), 'Copier la page et son contenu � un autre point de l\'arborescence.', 'Copy the page and its contents to another item on the tree.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (451, 'standard', NOW(), 'Etes-vous sur de vouloir d�verrouiller cette page ? Les modifications en cours par %s peuvent �tre perdues.', 'Are you sure you want to unlock this page? The changes underway by %s may be lost.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (452, 'standard', NOW(), 'Annuler la demande de suppression de la page.', 'Undo the page deletion request.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (453, 'standard', NOW(), 'Annuler la suppression de la page.', 'Undo the page deletion.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (454, 'standard', NOW(), 'Annuler la demande d\'archivage de la page.', 'Undo the page archiving request.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (455, 'standard', NOW(), 'Annuler l\'archivage de la page', 'Undo page archiving');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (456, 'standard', NOW(), 'D�placer la page et son contenu � un autre point de l\'arborescence.', 'Move the page and its contents to another item on the tree.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (457, 'standard', NOW(), 'Archiver la page en dehors de l\'arborescence. La page ne sera plus consultable mais pourra �tre replac� dans l\'arborescence plus tard. Cette action est soumise � validation et peut-�tre annul�.', 'Archive page outside of the tree. The page will no longer be available but may be placed in the tree later. This action is subject to validation and maybe cancelled.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (458, 'standard', NOW(), 'Etes-vous sur de vouloir archiver la page ?<br /><br />Cette action est soumise � la validation.', 'Are you sure you want to archiving the page ?<br /><br />This action is subject to validation.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (459, 'standard', NOW(), 'Supprimer d�finitivement la page. Cette action est soumise � validation et peut-�tre annul�.', 'Delete the final page. This action is subject to validation and maybe cancelled.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (460, 'standard', NOW(), 'Etes-vous sur de vouloir supprimer d�finitivement la page ?<br /><br />Cette action est soumise � la validation.', 'Are you sure you want to finally delete the page? <br /><br />This action is subject to validation.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (461, 'standard', NOW(), 'Annuler l\'�dition de la page en attente de validation. Son contenu reviendra � l\'�tat de la pr�c�dente validation. Cette action n\'est pas soumise � validation et prend effet imm�diatement.', 'Undo editing page awaiting validation. Its contents will return to the status of the previous validation. This action is not subject to validation and takes effect immediately.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (462, 'standard', NOW(), 'Annuler l\'�dition de la page', 'Undo editing page');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (463, 'standard', NOW(), 'Etes-vous sur de vouloir supprimer le contenu en attente de validation ?<br /><br />Le contenu de la page reviendra � l\'�tat de la pr�c�dente validation.<br />Cette action n\'est pas soumise � la validation.', 'Are you sure you want to delete the content awaiting validation? <br /> <br /> The content of the page will return to the status of the previous validation. <br /> This action is not subject to validation.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (464, 'standard', NOW(), 'Supprimer le contenu actuel. Le contenu reviendra au pr�c�dent �tat valid� ou en attente de validation. Cette action n\'est pas soumise � validation et prend effet imm�diatement.', 'Delete the current page content. The content will revert to the previous content validated or awaiting validation. This action is not subject to validation and takes effect immediately.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (465, 'standard', NOW(), 'Annuler la modification du contenu', 'Cancel content modifications');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (466, 'standard', NOW(), 'Etes-vous sur de vouloir supprimer les modifications actuelles du contenu ?<br /><br />Le contenu de la page reviendra au pr�c�dent �tat valid� ou en attente de validation de la page.<br />Cette action n\'est pas soumise � la validation.', 'Are you sure you want to delete the current content modifications? <br /> <br /> The content of the page will return to the previous validated or validation pending state of the page. <br /> This action is not subject to validation.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (467, 'standard', NOW(), 'Soumettre les modifications du contenu de la page � la validation. Une fois valid�e, la page pr�sentera ce contenu en ligne.', 'Submit the current page content modifications to validation.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (468, 'standard', NOW(), 'Soumettre les modifications � la validation', 'Submit the modifications to validation.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (469, 'standard', NOW(), 'Modification des groupes de l\'utilisateur', 'User\'s groups modifications');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (470, 'standard', NOW(), 'L\'utilisateur ne peux pas voir les �l�ments du module.', 'The user can not see any elements of the module.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (471, 'standard', NOW(), 'L\'utilisateur ne peux voir que les �l�ments du module visibles cot� client du site. L\'acc�s cot� administration d\'Automne lui est impossible.', 'The user can only see frontend elements of the module. Backend access is not allowed.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (472, 'standard', NOW(), 'L\'utilisateur peut voir le cot� client et le cot� administration d\'Automne pour ce module.', 'The user can see frontend and backend elements for this module.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (473, 'standard', NOW(), 'Erreur : utilisateur inexistant...', 'Error: no user ...');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (474, 'standard', NOW(), 'Utilisateur %s supprim�', '%s user deleted');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (475, 'standard', NOW(), 'Erreur : Utilisateur inconnu...', 'Error: Unknown user ...');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (476, 'standard', NOW(), 'Utilisateur %s activ�', 'User %s activated');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (477, 'standard', NOW(), 'Utilisateur %s d�sactiv�', 'User %s disabled');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (478, 'standard', NOW(), 'Erreur : Groupe inconnu...', 'Error: Unknown group ...');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (479, 'standard', NOW(), 'Donn�es utilisateur enregistr�es.', 'User data registered.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (480, 'standard', NOW(), 'Groupes de l\'utilisateur', 'User groups');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (481, 'standard', NOW(), 'Confirmer', 'Confirm');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (482, 'standard', NOW(), '* Nom distinctif (DN)', '* Distinguished name (DN)');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (483, 'standard', NOW(), 'Cette fen�tre vous permet de consulter et modifier le profil d\'un utilisateur. Ce profil comprend les informations personnelles de l\'utilisateur ainsi que ses droits et les groupes auquel il appartient.', 'This window allows you to view and change the profile of a user. This profile includes personal information of the user and its rights and groups to which it belongs.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (484, 'standard', NOW(), 'Alertes email', 'Notifications email');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (485, 'standard', NOW(), 'Les cases suivantes permettent de choisir pour chaque module quel type d\'alertes vous ou l\'utilisateur souhaitez recevoir par email.', 'The following boxes to choose for each module what kind of alerts or user you wish to receive by email.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (486, 'standard', NOW(), 'Les deux champs de mot de passe doivent �tre identiques. Le mot de passe doit faire %s caract�res minimum et �tre diff�rent de l\'identifiant.', 'The two password fields must be identical. The password must contain at least %s characters  and be different from the user name.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (487, 'standard', NOW(), 'Ce droit est le plus important dans Automne, il donne la possibilit� de r�aliser absolument toutes les actions sans aucune contrainte. Ce droit est � r�server uniquement aux administrateurs de plus haut niveau.', 'This right is the highter in Automne. It allows a full clearance on all actions. It should be reserved to hightest administrators only.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (488, 'standard', NOW(), 'Ce droit permet de r�g�n�rer les pages du sites manuellement et de controler les scripts en t�ches de fond.', 'This right give control on pages regenerations and all scripts tasks in background.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (489, 'standard', NOW(), 'Ce droit permet de g�rer toutes les rang�es de contenu pr�sentes dans Automne.', 'This right give control on all content rows in Automne.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (490, 'standard', NOW(), 'Ce droit permet de g�rer tous les mod�les de pages d\'Automne.', 'This right give control on all pages templates in Automne.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (491, 'standard', NOW(), 'Ce droit permet de donner l\'acc�s au journal de toutes les actions. Il permet aussi de purger ce journal des actions.', 'This right give the access to all actions logs in Automne. It allows logs deletion too.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (492, 'standard', NOW(), 'Ce droit permet de donner acc�s � la gestion des utilisateurs d\'Automne. Il permet de modifier les utilisateurs et groupes ainsi que leurs droits d\'acc�s.', 'This right give the control on all users management in Automne. It allows the modification of all users and groups and their rights.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (493, 'standard', NOW(), 'Groupe supprim�.', 'Group deleted.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (494, 'standard', NOW(), 'Groupe inconnu.', 'Group unknown.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (495, 'standard', NOW(), 'Utilisateur ou groupe inconnu.', 'User or group unknown.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (496, 'standard', NOW(), 'Donn�es du groupe enregistr�es', 'Data saved group.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (497, 'standard', NOW(), 'Groupe cr��', 'Group created');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (498, 'standard', NOW(), 'niveaux', 'levels');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (499, 'standard', NOW(), 'Copie de la page', 'Page copy');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (500, 'standard', NOW(), 'Ajouter aux favoris', 'Add to your bookmarks');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (501, 'standard', NOW(), 'Vous pouvez ajouter cette page aux favoris Automne pour pouvoir y acc�der plus rapidement ! Pour la retrouver ensuite, allez dans la barre lat�rale puis dans "Gestion des pages".', 'You can add this page to Autumn bookmarks to get there faster! To find then, go to the sidebar then in "Management of pages".');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (502, 'standard', NOW(), 'D�verrouiller la page', 'Unlock the page');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (503, 'standard', NOW(), 'Les deux champs de mot de passe doivent �tre identiques. Le mot de passe doit faire %s caract�res minimum et �tre diff�rent de l\'identifiant.', 'The two fields password must be identical. The password must be at least %s characters and be different from the identifier.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (504, 'standard', NOW(), 'L\'utilisateur est l\'administrateur : Il poss�de tous les droits sur Automne.', 'The user is the administrator: It has all the rights in Autumn.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (505, 'standard', NOW(), 'Vous ne pouvez pas modifier les droits de cette page pour cet utilisateur car ils d�pendent des groupes auquel il appartient. Modifiez les groupes de l\'utilisateur pour modifier ses droits sur Automne.', 'You can not modify the rights of this page for this user because they depend on the groups to which it belongs. Change the groups the user to modify its rights in Autumn.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (506, 'standard', NOW(), 'Vous pouvez g�rer ici les diff�rents droits d\'administration d\'Automne.', 'You can manage here the various administration rights of Autumn.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (507, 'standard', NOW(), 'L\'utilisateur est Administrateur : Il poss�de tous les droits sur le module.', 'The user is the administrator: It has all the rights in the module.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (508, 'standard', NOW(), 'Vous ne pouvez pas modifier les droits de cette page pour cet utilisateur car ils d�pendent des groupes auquel il appartient. Modifiez les groupes de l\'utilisateur pour modifier ses droits sur Automne.', 'You can not modify the rights of this page for the user because they depend on the groups to which it belongs. Change the groups the user to modify its rights in Autumn.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (509, 'standard', NOW(), 'Le groupe poss�de le droit \"Administrateur\" : Il poss�de tous les droits sur le module.', 'The group is the administrator: It has all the rights in the module.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (510, 'standard', NOW(), 'Cette case permet d\'autoriser la validation des �l�ments du module pour lequels l\'utilisateur � le droit d\'administration.', 'This box allows you to authorize the validation elements of the module for which the user to the right of directors.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (511, 'standard', NOW(), 'Droit de validation sur le module', 'Validation rights in the module');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (512, 'standard', NOW(), 'Aucun groupe n\'existe sur les mod�les actuellement...', 'No group exists on templates now...');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (513, 'standard', NOW(), 'Aucun groupe n\'existe sur les rang�es actuellement...', 'No group exists on rows now...');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (514, 'standard', NOW(), 'Droits sur les mod�les de pages', 'Rights on pages templates');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (515, 'standard', NOW(), 'Les droits sur les mod�les de pages permettent d\'autoriser l\'utilisation des mod�les comportant ces groupes lors de la cr�ation des pages.', 'The rights on pages templates can authorize the use of templates with these groups when creating pages.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (516, 'standard', NOW(), 'Droits sur les mod�les de rang�es', 'Rights on rows templates');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (517, 'standard', NOW(), 'Les droits sur les mod�les de rang�es permettent d\'autoriser l\'utilisation des rang�es comportant ces groupes lors de l\'�dition du contenu des pages.', 'The rights on the rows templates can authorize the use of rows with these groups when editing content pages.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (518, 'standard', NOW(), 'Acc�s g�n�ral au module', 'General module access');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (519, 'standard', NOW(), 'Acc�s au contenu', 'Content access');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (520, 'standard', NOW(), 'Utilisateur cr��', 'User created');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (521, 'standard', NOW(), 'Vous ne pouvez supprimer cet utilisateur car c\'est un utilisateur syst�me n�cessaire au fonctionnement d\'Automne.', 'You cannot delete this user because he is a system user required to operate Autumn.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (522, 'standard', NOW(), 'R�activer l\'utilisateur lui permet de se connecter � nouveau.', 'Reactivate the user permit him to connect again.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (523, 'standard', NOW(), 'D�sactiver l\'utilisateur ne lui permet plus de se connecter.', 'Disabling the user prevent his connect.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (524, 'standard', NOW(), 'Copie de :', 'Copy of:');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (525, 'standard', NOW(), 'Afficher les blocs', 'Show blocks');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (526, 'standard', NOW(), 'Modification d\'un �l�ment \'Image\'', 'Modifying an \'Image\' element');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (527, 'standard', NOW(), 'Cette fen�tre vous permet de saisir ou modifier une image ainsi que son lien pour l\'�l�ment de la page en cours de modification.', 'This window allows you to enter or modify a picture and its link to the page element being amended.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (528, 'standard', NOW(), 'S�lectionnez une image', 'Select a picture');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (529, 'standard', NOW(), 'L�gende/Alt tag', 'Legend/Alt tag');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (530, 'standard', NOW(), 'Tous les fichiers', 'All files');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (531, 'standard', NOW(), 'Modification d\'un �l�ment \'Fichier\'', 'Modifying a \'File\' element');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (532, 'standard', NOW(), 'Cette fen�tre vous permet de saisir ou modifier un fichier pour l\'�l�ment de la page en cours de modification.', 'This window allows you to enter or modify a file and its page element being edited.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (533, 'standard', NOW(), 'Libell� du fichier', 'File label');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (534, 'standard', NOW(), 'S�lectionnez un fichier', 'Select a file');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (535, 'standard', NOW(), 'Modification d\'un �lement \'Animation Flash\'', 'Modifying a \'Flash animation\' element');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (536, 'standard', NOW(), 'Cette fen�tre vous permet de saisir ou modifier une animation Flash pour l\'�l�ment de la page en cours de modification.', 'This window allows you to enter or modify a Flash animation for the element of the page being edited.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (537, 'standard', NOW(), 'Animation Flash', 'Flash animation');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (538, 'standard', NOW(), 'Largeur de l\'animation Flash en pixels.', 'Flash animation width in pixels');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (539, 'standard', NOW(), 'Hauteur de l\'animation Flash en pixels.', 'Flash animation height in pixels');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (540, 'standard', NOW(), 'Sera employ� comme attribut \'name\' de l\'animation Flash pour l\'identifier dans la page.', 'Will be used as an attribute \'name\' Flash animation to identify on the page.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (541, 'standard', NOW(), 'Version minimale du plugin Flash n�cessaire pour cette animation.<br />Attention � respecter le format suivant :<pre>majeur.mineur.version</pre><br /><strong>Exemple :</strong> 9.0.24', 'Version of Flash needed for this animation.<br />Attention to comply with the following format: <pre>majeur.mineur.version</pre> <strong>Example :</strong> 9.0.24');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (542, 'standard', NOW(), 'Version', 'Version');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (543, 'standard', NOW(), 'Vous pouvez sp�cifier ici les diff�rents param�tres (tags \\\'params\\\') � employer par l\\\'animation Flash.<br />Attention � respecter le format suivant :<pre>nom1:\\\'valeur1\\\',\\nnom2:\\\'valeur2\\\',\\n...</pre><br /><strong>Exemple :</strong><br /><pre>wmode:\\\'transparent\\\',\\nmenu:false,\\nscale:\\\'showall\\\'</pre>', 'You can specify different settings here (tags \\\'params\\\') to be used by Flash animation.<br />Attention the following format :<pre>name1:\\\'value1\\\',\\nname2:\\\'value2\\\',\\n...</pre><br /><strong>Example :</strong><br /><pre>wmode:\\\'transparent\\\',\\nmenu:false,\\nscale:\\\'showall\\\'</pre>');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (544, 'standard', NOW(), 'Vous pouvez sp�cifier ici les diff�rentes variables � fournir (valeur de \\\'flashvars\\\') � employer par l\\\'animation Flash.<br />Attention � respecter le format suivant :<pre>nom1:\\\'valeur1\\\',\\nnom2:\\\'valeur2\\\',\\n...</pre><br /><strong>Exemple :</strong><br /><pre>titre:\\\'Mon animation flash\\\',\\ndescription:\\\'Hello World !\\\'</pre>', 'You can specify the different variables here to provide (value \\\'flashvars\\\') to be used by Flash animation.<br />Attention the following format :<pre>name1:\\\'value1\\\',\\nname2:\\\'value2\\\',\\n...</pre><br /><strong>Example :</strong><br /><pre>title:\\\'My flash animation\\\',\\ndescription:\\\'Hello World !\\\'</pre>');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (545, 'standard', NOW(), 'Flashvars', 'Flashvars');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (546, 'standard', NOW(), 'Vous pouvez sp�cifier ici les diff�rents attributs du tag HTML \\\'object\\\' qui sera employ� pour l\\\'animation Flash.<br />Attention � respecter le format suivant :<pre>nom1:\\\'valeur1\\\',\\nnom2:\\\'valeur2\\\',\\n...</pre><br /><strong>Exemple :</strong><br /><pre>class:\\\'flash\\\',\\nalign:\\\'top\\\'</pre>', 'You can say the different attributes of the HTML tag \\\'object\\\' to be used for Flash animation.<br />Attention to the following format :<pre>name1:\\\'value1\\\',\\nname2:\\\'value2\\\',\\n...</pre><br /><strong>Example :</strong><br /><pre>class:\\\'flash\\\',\\nalign:\\\'top\\\'</pre>');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (547, 'standard', NOW(), 'Attributs', 'Attributes');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (548, 'standard', NOW(), 'Name', 'Name');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (549, 'standard', NOW(), 'Erreur de format', 'Format error');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (550, 'standard', NOW(), 'Erreur durant l\'ajout de la rang�e ... veuillez r��ssayer.', 'Error during adding the row ... please retry.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (551, 'standard', NOW(), 'Erreur durant la suppression de la rang�e ... veuillez r��ssayer.', 'Error during deleting the row ... please retry.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (552, 'standard', NOW(), 'Erreur durant le d�placement de la rang�e ... veuillez r��ssayer.', 'Error during moving the row ... please retry.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (553, 'standard', NOW(), 'Erreur durant l\'effacement du bloc ... veuillez r��ssayer.', 'Error during deleting the block ... please retry.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (554, 'standard', NOW(), 'Erreur durant la mise � jour du contenu du bloc ... veuillez r��ssayer.', 'Error during updating the block content ... please retry.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (555, 'standard', NOW(), 'Impossible de trouver le fichier image � traiter.', 'Unable to find the image file to be processed.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (556, 'standard', NOW(), 'Impossible de traiter les fichiers GIF, veuillez installer la librairie GD de PHP.', 'Enable to process GIF files, please install the PHP GD library.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (557, 'standard', NOW(), 'Impossible de traiter les fichiers JPG, veuillez installer la librairie GD de PHP.', 'Enable to process JPG files, please install the PHP GD library.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (558, 'standard', NOW(), 'Impossible de traiter les fichiers PNG, veuillez installer la librairie GD de PHP.', 'Enable to process PNG files, please install the PHP GD library.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (559, 'standard', NOW(), 'Impossible de traiter les fichiers', 'Enable to process files');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (560, 'standard', NOW(), 'Impossible de traiter le fichier, veuillez v�rifier l\'installation de la librairie GD de PHP.', 'Enable to process files, please verify the installation of the PHP GD library.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (561, 'standard', NOW(), 'Vous pouvez choisir de cr�er un lien vers une image grand format (Image Zoom) ...', 'You can choose to create a link to an image format (Image Zoom) ...');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (562, 'standard', NOW(), '... ou bien faire un lien vers une page, un site externe, un fichier.', '... or make a link to a page, an external site, a file.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (563, 'standard', NOW(), 'Erreur durant la cr�ation de la page.', 'Error during page creation.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (564, 'standard', NOW(), 'Si vous cochez cette case, la page sera cr��e mais les zones de contenu seront vide de toutes rang�es. Si vous ne la cochez pas, les rang�es par d�faut du mod�le s�lectionn� seront automatiquement pr�sente dans la page.', 'If you check this box, the page will be created without any default content rows. If you do not check it, the default template rows will be added to all content zone of the created pagge.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (565, 'standard', NOW(), 'Cr�er la page sans les rang�es par d�faut du mod�le', 'Create page without any default rows');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (566, 'standard', NOW(), 'Param�tres avanc�s', 'Advanced parameters');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (567, 'standard', NOW(), 'Actions {0} � {1} sur {2}', 'Actions from {0} to {1} on {2}');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (568, 'standard', NOW(), 'Aucune action trouv�e ...', 'No action founded...');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (569, 'standard', NOW(), 'Administrer le module %s', 'Administrate module %s');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (570, 'standard', NOW(), 'Vous n\'avez pas le droit d\'acc�der � l\'administration du module %s.', 'You have no privileges to access module %s administration.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (571, 'standard', NOW(), 'Administration du module %s', 'Administratio of module %s');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (572, 'standard', NOW(), 'Cette fen�tre vous permet de g�rer le contenu du module %s. Vous pouvez ajouter / supprimer / modifier les diff�rents �l�ments g�r�s par ce module.', 'This window let you administrate the module %s. You can add / delete and modify elements managed by this module.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (573, 'standard', NOW(), 'Envoi d\'email', 'Email sending');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (574, 'standard', NOW(), 'Cr�ation d\'un utilisateur.', 'User creation');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (575, 'standard', NOW(), 'R�sultats', 'Results');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (576, 'standard', NOW(), '{0} Mod�les sur {1}', '{0} Templates of {1}');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (577, 'standard', NOW(), 'Supprime le ou les mod�les s�lectionn�s. Un mod�le ne doit plus �tre employ� pour �tre supprim�.', 'Remove the or these selected templates. A template must not be used anymore to be removed.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (578, 'standard', NOW(), 'R�sultats : {0} Mod�les sur {1}', 'Results : {0} Templates of {1}');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (579, 'standard', NOW(), 'R�sultats : Aucun r�sultat pour votre recherche ...', 'Results: No result for your search...');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (580, 'standard', NOW(), 'Active le ou les mod�les s�lectionn�s. Un mod�le actif peut-�tre utilis� pour cr�er des pages.', 'Activate the or these selected templates. An active template can be used to create new pages.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (581, 'standard', NOW(), 'D�sactive le ou les mod�les s�lectionn�s. Un mod�le inactif ne peut plus �tre utilis� pour cr�er des pages.', 'Desactivate the or these selected templates. An inactive template can not be used to create new pages.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (582, 'standard', NOW(), 'Modification du ou des mod�les s�lectionn�s.', 'Modification of the or these selected templates.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (583, 'standard', NOW(), 'Cr�ation d\'un nouveau mod�le.', 'Create a new template.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (584, 'standard', NOW(), '{0} Rang�es sur {1}', '{0} Rows of {1}');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (585, 'standard', NOW(), 'Supprime le ou les rang�es s�lectionn�s. Une rang�e ne doit plus �tre employ�e pour �tre supprim�e.', 'Remove the or these selected templates. A template must not be used anymore to be removed.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (586, 'standard', NOW(), 'R�sultats : {0} Rang�es sur {1}', 'Results : {0} Rows of {1}');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (587, 'standard', NOW(), 'Active la ou les rang�es s�lectionn�s. Une rang�e active peut-�tre utilis� dans des pages.', 'Activate the or these selected rows. An active row can be used into pages.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (588, 'standard', NOW(), 'D�sactive la ou les rang�es s�lectionn�s. Une rang�e inactive ne peut plus �tre ajout�e dans des pages.', 'Desactivate the or these selected rows. An inactive row can not be added into pages.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (589, 'standard', NOW(), 'Modification de ou des rang�es s�lectionn�s.', 'Modification of the or these selected rows.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (590, 'standard', NOW(), 'Cr�ation d\'une nouvelle rang�e.', 'Create a new row.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (591, 'standard', NOW(), 'Veuillez vous reconnecter pour voir les modifications.', 'Please reconnect to see the modifications.');


# End of Automne 4 specific messages
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (800, 'standard', NOW(), 'Suppression d\'actualit�', 'News item deletion');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (801, 'standard', NOW(), 'Suppression de l\'actualit� : \'%s\'', 'Deletion of news article \'%s\'');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (802, 'standard', NOW(), 'Pour un lien interne, saisir une ID page.<br /> Pour un lien externe, saisir une URL.', 'For internal links enter a page reference number.<br />\r\nFor external links enter an URL.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (803, 'standard', NOW(), 'Image', 'Current image');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (804, 'standard', NOW(), 'Aucune', 'None');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (805, 'standard', NOW(), 'Suppression d\'actualit�', 'News item deletion');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (806, 'standard', NOW(), 'Suppression de l\'actualit� : ', 'Deletion of news item: ');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (807, 'standard', NOW(), 'Param�tres', 'Parameters');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (808, 'standard', NOW(), 'Param�tres du module %s', '%s parameters');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (809, 'standard', NOW(), '[Module inconnu]', '[Unknown application]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (810, 'standard', NOW(), '[Ce module n\'a pas de param�tres]', '[This application does not have parameters to enter]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (811, 'standard', NOW(), 'Aper�u', 'Preview');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (812, 'standard', NOW(), 'Sites', 'Websites');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (813, 'standard', NOW(), 'Confirmer la suppression du site \'%s\' ? ATTENTION ! Cette action n\'est pas soumise � validation et prendra effet imm�diatement !', 'Confirm deletion of the website \'%s\' ? ATTENTION, this action will take effect immediatly!');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (814, 'standard', NOW(), 'Libell�', 'Label');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (815, 'standard', NOW(), 'Racine', 'Start Page');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (816, 'standard', NOW(), 'Modification d\'un site', 'Website edition');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (817, 'standard', NOW(), '[Op�ration impossible : la page s�lectionn�e comme racine est d�j� la racine d\'un autre site.]', '[Action denied: the page you have selected as the Start Page is already chosen for another website]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (818, 'standard', NOW(), '[Erreur lors du changement de racine]', '[Error while attempting to modify the Start Page]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (819, 'standard', NOW(), 'Domaine (URL)', 'Doamin (URL)');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (820, 'standard', NOW(), 'Changer', 'Change');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (821, 'standard', NOW(), 'Gestion des sites', 'Multi-site management');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (822, 'standard', NOW(), 'S�lection d\'une racine', 'Website Start Page selection');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (823, 'standard', NOW(), 'S�lectionner une page racine pour le site modifi�.', 'Please select a Start Page for the website you are declaring.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (824, 'standard', NOW(), 'Site', 'Website');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (825, 'standard', NOW(), 'Confirmer la suppression du mod�le \'%s\'', 'Confirm deletion of template \'%s\'');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (826, 'standard', NOW(), 'Voir les mod�les des pages', 'View templates used for a page');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (827, 'standard', NOW(), 'Arborescence : pages et mod�les (entre parenth�ses).', 'Site organisation with page template (in parenthesis)');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (828, 'standard', NOW(), 'Mod�le par page', 'Template per page');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (829, 'standard', NOW(), 'Rang�es par d�faut', 'Default style-rows');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (830, 'standard', NOW(), 'Propri�t�s d\'un mod�le', 'Template properties');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (831, 'standard', NOW(), 'Mod�le XML', 'XML file');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (832, 'standard', NOW(), 'Modifier le fichier', 'Edit file');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (833, 'standard', NOW(), 'Vignette', 'Thumbnail');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (834, 'standard', NOW(), 'Modifier la vignette', 'Edit image');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (835, 'standard', NOW(), 'Vignette', 'Current thumbnail');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (836, 'standard', NOW(), 'Aucune', 'None');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (837, 'standard', NOW(), 'Groupes', 'Groups');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (838, 'standard', NOW(), 'Nouveaux groupes (s�par�s par des points-virgules)', 'New groups (separated by semi-colons)');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (839, 'standard', NOW(), '[Erreur lors de l\'insertion d\'un fichier]', '[Error while uploading file]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (840, 'standard', NOW(), '[Le mod�le XML import� est mal form�]', '[Error, the uploaded XML file contains conformity anomalies]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (841, 'standard', NOW(), 'Gestion des mod�les', 'Template management');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (842, 'standard', NOW(), 'Mod�les', 'Templates');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (843, 'standard', NOW(), 'Biblioth�que de rang�es', 'Library of Style-rows');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (844, 'standard', NOW(), 'Confirmer la suppression de la rang�e \'%s\'?', 'Do you confirm deletion of the style-row \'%s\'');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (845, 'standard', NOW(), 'Gestion d\'une rang�e ', 'Style-Rows management');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (846, 'standard', NOW(), 'D�finition XML', 'XML definition');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (847, 'standard', NOW(), '[Erreur lors de la suppression du mod�le]', '[Error while trying to delete template]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (848, 'standard', NOW(), '[Erreur lors de la suppression d\'une rang�e]', '[Error while trying to delete style-row]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (849, 'standard', NOW(), 'Les rang�es utilisent du code XHTML associ� � des tags Automne sp�cifiques � votre site %s. <br /> Attention, Automne n\'utilisera pas le code non conforme � l\'XHTML.', 'Style-rows use XHTML in conjunction with Automne tags specific to your site %s.<br />Attention, Automne will not use non-conformed xHTML.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (850, 'standard', NOW(), 'Vers le haut', 'Move up');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (851, 'standard', NOW(), 'Vers le bas', 'Move down');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (852, 'standard', NOW(), 'Modification des zones modifiables du mod�le %s', 'Modification of default content management zones for template %s');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (853, 'standard', NOW(), 'Nom', 'Name');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (854, 'standard', NOW(), 'Supprimer', 'Delete');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (855, 'standard', NOW(), 'Ins�rer la rang�e', 'Add Style-row');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (856, 'standard', NOW(), 'Zone modifiable \'%s\'', 'Content management zone \'%s\'');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (857, 'standard', NOW(), 'Effacer les modifications', 'Delete modifications');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (858, 'standard', NOW(), 'Confirmer l\'annulation des modifications pour \'%s\' ? ATTENTION! Cette action n\'est pas soumise � validation et prendra effet imm�diatement.', 'Confirm cancellation of modifications for page \'%s\' ? Attention, this action takes effect immediatly!');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (859, 'standard', NOW(), 'Archives', 'Archives');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (860, 'standard', NOW(), 'Archives', 'Archives');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (861, 'standard', NOW(), 'Page de destination', 'Destination page');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (862, 'standard', NOW(), 'S�lectionner la page de destination d\'une page sortant d\'archive', 'Select the destination page for the unarchived page');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (863, 'standard', NOW(), 'Identifiant', 'Reference');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (864, 'standard', NOW(), 'Titre', 'Title');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (865, 'standard', NOW(), 'Derni�re publication', 'Last publication');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (866, 'standard', NOW(), 'Confirmer la suppression de la page \'%s\' ? ATTENTION ! Cette suppression n\'est pas soumise � validation et prendra effet imm�diatement.', 'Confirm deletion of the page \'%s\' ? Attention, this action takes effect immediately!');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (867, 'standard', NOW(), '[Impossible de d�placer une page qui n\'a jamais �t� valid�e]', 'Impossible to move a page that has never been validated.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (868, 'standard', NOW(), '[Impossible de d�placer la racine]', '[Error, the Start Page cannot be moved]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (869, 'standard', NOW(), '[Impossible de d�placer une page vers ses descendants]', '[Error, a page cannot be moved to one of its sub pages]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (870, 'standard', NOW(), '[La page de destination ne peut pas �tre une page non valid�e]', '[The new destination page must be validated]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (871, 'standard', NOW(), 'Modification des propri�t�s', 'Modification of properties');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (872, 'standard', NOW(), 'Modification du contenu', 'Content modification');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (873, 'standard', NOW(), 'Suppression', 'Deletion');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (874, 'standard', NOW(), 'Annuler la suppression', 'Undeletion');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (875, 'standard', NOW(), 'Archiver', 'Archiving');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (876, 'standard', NOW(), 'Annuler l\'archivage', 'Unarchiving');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (877, 'standard', NOW(), 'Annuler les modifications', 'Cancel modifications');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (878, 'standard', NOW(), 'Valider', 'Validate');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (879, 'standard', NOW(), 'Ajout d\'un site', 'Add web site');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (880, 'standard', NOW(), 'Modification d\'un site', 'Modify web site');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (881, 'standard', NOW(), 'Suppression d\'un site', 'Delete web site');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (882, 'standard', NOW(), 'Modification d\'un groupe de profils', 'Modify Group Profile');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (883, 'standard', NOW(), 'Suppression d\'un groupe de profils', 'Delete group profile');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (884, 'standard', NOW(), 'Modification d\'un profil', 'Modify user profile');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (885, 'standard', NOW(), 'Suppression d\'un utilisateur', 'Delete user profile');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (890, 'standard', NOW(), 'Modification d\'un mod�le', 'Modify template');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (891, 'standard', NOW(), 'Modification d\'une rang�e de mod�le', 'Modify style-row of a template');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (892, 'standard', NOW(), 'Suppression d\'un mod�le', 'Delete template');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (893, 'standard', NOW(), 'Suppression d\'une rang�e de mod�le', 'Delete template style-row');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (894, 'standard', NOW(), 'Journal des actions', 'Action log');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (895, 'standard', NOW(), 'Par profil', 'By user');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (896, 'standard', NOW(), 'Par page', 'By page');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (897, 'standard', NOW(), 'S�lection d\'une page', 'Select a page');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (898, 'standard', NOW(), 'S�lectionner une page pour afficher le journal des actions', 'Select a page to see its corresponding action log');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (899, 'standard', NOW(), 'S�lectionner', 'Select');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (900, 'standard', NOW(), 'R�g�n�rer', 'Regenerate');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (901, 'standard', NOW(), 'Toutes les pages', 'All pages');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (902, 'standard', NOW(), 'Une page (choisir)', 'One page (choose)');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (903, 'standard', NOW(), 'Meta administration', 'Advanced administration');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (904, 'standard', NOW(), 'Journal des actions pour l\'utilisateur %s', 'Logged actions for user %s');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (905, 'standard', NOW(), 'Date', 'Date');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (906, 'standard', NOW(), 'Action', 'Action');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (907, 'standard', NOW(), 'Commentaires', 'Comments');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (908, 'standard', NOW(), 'Utilisateur', 'User');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (909, 'standard', NOW(), 'Statut apr�s', 'Status after');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (910, 'standard', NOW(), 'Journal des actions pour %s', 'Logged action for resource %s');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (911, 'standard', NOW(), 'Changement de l\'ordre du menu de navigation', 'Order of sub page links modification');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (912, 'standard', NOW(), 'Cet email est g�n�r� automatiquement par Automne concernant votre site %s.\r\nSite : %s\r\nAdministration du site : %s', 'This email was automatically generated by Automne regarding your website %s.\r\nWebsite: %s\r\nAdministration platform: %s');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (913, 'standard', NOW(), 'Modification de votre profil d\'utilisateur', 'Modify your user profile');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (914, 'standard', NOW(), 'Votre profil a �t� modifi�. Vos identifiants sont :\r\nIdentifiant : %s\r\n\r\nModification(s) effectu�e(s) : \r\n', 'Your user profile has been updated.\r\nLogin : %s\r\n\r\nModification type:\r\n');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (915, 'standard', NOW(), 'Modification des sections de droit', 'Modification of content management rights');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (916, 'standard', NOW(), 'Modification des donn�es personnelles', 'Modification of user properties');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (917, 'standard', NOW(), 'Modification des donn�es de contact', 'Modification of contact information');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (918, 'standard', NOW(), 'Modification des droits sur les modules', 'Modification of application rights');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (919, 'standard', NOW(), 'Modifications des droits d\'administration', 'Modification of administration rights');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (920, 'standard', NOW(), 'Modification des droits de validation', 'Modification of validation rights');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (921, 'standard', NOW(), '[Modification des groupes de mod�les refus�e]', '[Template groups denied modification]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (922, 'standard', NOW(), 'Modification du niveau de notification', 'Modification of alert level');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (923, 'standard', NOW(), 'Alerte sur contenu de page', 'Content management alert');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (924, 'standard', NOW(), 'La page \'%s\' est obsol�te et doit �tre mise � jour.', 'This is an automatic alert for the page \'%s\'. You or another provider must log on to the administration platform and make the appropriate modifications.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (925, 'standard', NOW(), 'Un message d\'alerte est associ� :\r\n%s', 'A personalised alert message is included:\r\n%s');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (926, 'standard', NOW(), 'Utilisateurs', 'Users');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (927, 'standard', NOW(), 'Utilisateurs appartenant au groupe %s', 'Users belonging to group %s');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (928, 'standard', NOW(), 'Aucun utilisateur', 'No user');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (929, 'standard', NOW(), 'Confirmer la suppression de l\'utilisateur \'%s\'', 'Confirm deletion of user \'%s\'');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (930, 'standard', NOW(), 'Confirmer la suppression du groupe \'%s\'', 'Confirm deletion of group \'%s\'');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (931, 'standard', NOW(), 'Groupe', 'Group');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (932, 'standard', NOW(), 'Cr�ation d\'un lien interne', 'Create an internal link');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (933, 'standard', NOW(), 'R�sultat', 'Result');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (934, 'standard', NOW(), 'Libell� du lien', 'Link label');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (935, 'standard', NOW(), 'S�lection de la page', 'Page selection');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (936, 'standard', NOW(), 'S�lectionner la page', 'Select the page');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (937, 'standard', NOW(), 'Cr�er un lien interne', 'Create an internal link');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (938, 'standard', NOW(), 'Modifier', 'Modify');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (939, 'standard', NOW(), 'Ins�rer au curseur', 'Insert at cursor');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (940, 'standard', NOW(), 'Espace "Copier-coller"', '"Copy-paste" space');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (941, 'standard', NOW(), 'Historique des actions sur le contenu', 'Show content management action log');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (942, 'standard', NOW(), 'S�lection de la page �r�g�n�rer', 'Select a page to regenerate');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (943, 'standard', NOW(), 'S�lectionner la page �r�g�n�rer', 'Select a page to regenerate');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (944, 'standard', NOW(), 'Scripts en cours', 'Active scripts');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (945, 'standard', NOW(), 'Voir file d\'attente', 'View queue list');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (946, 'standard', NOW(), 'Red�marrer scripts', 'Restart scripts');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (947, 'standard', NOW(), 'Voici les scripts restant en file d\'attente', 'These are the scripts left into queue');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (948, 'standard', NOW(), 'Cr�er depuis le mod�le', 'Create from template');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (949, 'standard', NOW(), 'Nouveau mod�le', 'New template');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (950, 'standard', NOW(), 'Feuilles de style', 'Stylesheet (CSS) files');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (951, 'standard', NOW(), 'Feuille de style "%s"', 'Stylesheet "%s"');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (952, 'standard', NOW(), 'Enregistrer', 'Save');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (953, 'standard', NOW(), 'Balise', 'Tag');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (954, 'standard', NOW(), 'Style', 'Style');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (955, 'standard', NOW(), 'Nom du style', 'Style name');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (956, 'standard', NOW(), 'Pseudo classe', 'Pseudo class');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (957, 'standard', NOW(), 'Attribut', 'Attribute');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (958, 'standard', NOW(), 'Valeur', 'Value');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (959, 'standard', NOW(), 'Nouveau style', 'Add new style');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (960, 'standard', NOW(), 'Supprimer cet �l�ment de la feuille de style ?', 'Delete this style element from stylesheet ?');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (961, 'standard', NOW(), '[L\'�criture est impossible dans le fichier de feuille de style donn�]', '[Impossible to write into given stylesheet file]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (962, 'standard', NOW(), '[Recr�ation depuis le fichier de sauvegarde impossible]', '[Rebuild from backup file failed]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (963, 'standard', NOW(), '[Copie de sauvegarde impossible]', '[Creation of backup file impossible]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (964, 'standard', NOW(), '[La d�finition de style semble incompl�te]', '[Your style definition seems incomplete]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (965, 'standard', NOW(), '[Ce style existe d�j�]', '[This style already exists]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (966, 'standard', NOW(), '[Style supprim�]', '[Style deleted]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (967, 'standard', NOW(), '[Style modifi�]', '[Style modified]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (968, 'standard', NOW(), 'Image zoom', 'Image zoom');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (969, 'standard', NOW(), 'Ouvrir ce lien en pop-up ?', 'Open this link in a pop-up?');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (970, 'standard', NOW(), 'Largeur de la pop-up', 'Pop-up width:');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (971, 'standard', NOW(), 'Hauteur de la pop-up ', 'Pop-up height:');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (975, 'standard', NOW(), 'Copie de branche d\'arborescence', 'Select a branch of the tree to copy');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (976, 'standard', NOW(), 'S�lectionner la premi�re page de la branche � copier ...', 'Select first page from branch you want to copy ...');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (977, 'standard', NOW(), '... s�lectionner la page de destination.', '... select destination page');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (978, 'standard', NOW(), '[Les pages s�lectionn�es pour la duplication d\'arborescence sont incorrectes. Essayer � nouveau.]', '[Pages selected for duplication seem incorrect, please try again]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (979, 'standard', NOW(), '[Les pages ont �t� cr��es. V�rifier leur contenu depuis l\'arborescence.]', '[The new pages have been successfully copied]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (980, 'standard', NOW(), 'S�lectionner les mod�les de remplacement\r\ndes pages � dupliquer. Les mod�les doivent contenir les m�mes zones modifiables et les m�mes rang�es.', 'Select different templates for the new pages.<br />\r\nAll templates must have exactly the same structure of content management zones.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (981, 'standard', NOW(), 'Le mod�le <b>%s</b> est remplac� par:', 'Template <b>%s</b> will be replaced by:');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (982, 'standard', NOW(), 'Dupliquer', 'Duplicate');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (983, 'standard', NOW(), 'Une branche', 'A branch');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (984, 'standard', NOW(), 'Un contenu de page', 'One page');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (985, 'standard', NOW(), 'Copie du contenu d\'une page', 'Copying one page contents');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (986, 'standard', NOW(), 'S�lectionner la page dont le contenu sera copi� ...', 'Select the page to copy content from ...');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (987, 'standard', NOW(), '... s�lectionner la page recevant le contenu.', '... select the destination page.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (988, 'standard', NOW(), 'La s�lection de pages semble incorrecte. Recommencer la proc�dure.', 'Selection of pages is incorrect, please repeat procedure.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (989, 'standard', NOW(), 'La page a �t� modifi�e : %s', 'Page has been modified : %s');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (990, 'standard', NOW(), '[Une erreur est survenue lors du traitement du contenu. V�rifier les pages :\r\n     Origine : %s\r\n     Destination : %s]', '[An error occured while copying contents, please check pages :\r\n     Original : %s\r\n     Destination : %s]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (991, 'standard', NOW(), '[V�rifier la correspondance des mod�les : ils doivent etre identiques]', '[Verify the corresponding templates.\r\nThey must be identical!]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (992, 'standard', NOW(), 'Page � copier', 'Page to copy');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (993, 'standard', NOW(), 'Page de destination s�lectionn�e', 'Selected destination page');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (994, 'standard', NOW(), 'Les zones modifiables ne sont pas concordantes.', 'Content management zones do not match in the templates.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (995, 'standard', NOW(), '[Les mod�les sont identiques]', '[Templates are identical]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (996, 'standard', NOW(), '[Les rang�es et les mod�les ne sont pas concordants]', '[Style-rows do not match in the templates]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (997, 'standard', NOW(), 'Comparaison des mod�les', 'Template compatibility');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (998, 'standard', NOW(), '[Mod�le inutilisable]', '[Template cannot be used]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (999, 'standard', NOW(), 'Modules', 'Applications');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1000, 'standard', NOW(), 'Rang�es', 'Style-rows');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1001, 'standard', NOW(), 'Substitution de mod�les', 'Replacement of Templates');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1002, 'standard', NOW(), '[Les mod�les de contenu ne sont pas concordants]', '[The templates do not match]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1003, 'standard', NOW(), 'Du mod�le "%s" vers "%s" :', 'From template "%s" to "%s":');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1004, 'standard', NOW(), 'Confirmation', 'Confirmation');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1005, 'standard', NOW(), 'Un mod�le inactif ne peut �tre utilis�.', 'An inactive template cannot be used by a content provider.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1006, 'standard', NOW(), 'Afficher', 'Show');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1007, 'standard', NOW(), 'Tous les mod�les', 'All templates');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1008, 'standard', NOW(), 'Mod�les appartenant aux groupes', 'Selected Templates');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1009, 'standard', NOW(), 'Afficher le(s) mod�le(s) inactiv�(s)', 'Include inactive templates');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1010, 'standard', NOW(), '[Aucun mod�le � afficher]', '[No templates correspond]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1011, 'standard', NOW(), '%s mod�le(s) inactif(s) masqu�(s).', '%s inactive template(s) exist.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1012, 'standard', NOW(), 'Gestion des rang�es', 'Style-Rows management');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1013, 'standard', NOW(), 'Visualisation de la rang�e', 'Style-row preview');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1014, 'standard', NOW(), 'Modifier', 'Modify');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1015, 'standard', NOW(), 'Redimensionner', 'Resize');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1016, 'standard', NOW(), 'Redimensionner l\'image', 'Image resizing');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1017, 'standard', NOW(), 'Cliquer sur l\'image � l\'aide du bouton gauche de la souris.<br />Maintenir le bouton et d�placer la souris vers le coin gauche pour redimmensionner l\'image.<br />Une fois l\'image � la taille d�sir�e, rel�cher le bouton. L\'image sera recompress�e apr�s validation.<br /><br />ATTENTION : agrandir une image la pixelise.', 'With the mouse, click on the image and with the button still pressed, move the mouse to resize the image. Once done, validate.<br />\r\nAttention, multiple resize actions can hinder the quality of the image!');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1018, 'standard', NOW(), 'Annuler', 'Reinitialize');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1019, 'standard', NOW(), 'Type de lien', 'Link type');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1020, 'standard', NOW(), 'Interne', 'Internal');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1021, 'standard', NOW(), 'Externe', 'External');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1022, 'standard', NOW(), 'Ouverture', 'Open');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1023, 'standard', NOW(), 'Dans la fen�tre en cours', 'In the main window');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1024, 'standard', NOW(), 'Dans une nouvelle fen�tre', 'In a new window');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1025, 'standard', NOW(), 'Dans une fen�tre pop-up', 'In a pop-up window');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1026, 'standard', NOW(), 'Cible du lien', 'Link target');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1027, 'standard', NOW(), 'Libell� du lien', 'Link label');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1028, 'standard', NOW(), 'Largeur de la pop-up', 'Pop-up width');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1029, 'standard', NOW(), 'Hauteur de la pop-up', 'Pop-up height');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1030, 'standard', NOW(), '[La librairie de fonctions GD2 de PHP n\'est pas install�e : les fonctionnalit�s de redimensionnement d\'image sont d�sactiv�es. Contacter l\'administrateur technique.]', '[PHP GD2 library is not present. Automne image resizing functionalities are disabled. Please contact your technical administrator]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1031, 'standard', NOW(), 'Arborescence des pages', 'List of all pages');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1033, 'standard', NOW(), 'Auteur', 'Author');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1034, 'standard', NOW(), 'Email de r�ponse', 'Reply-to email');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1035, 'standard', NOW(), 'Copyright', 'Copyright');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1036, 'standard', NOW(), 'Langue utilis�e', 'Language used');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1037, 'standard', NOW(), 'Robots', 'Robots');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1038, 'standard', NOW(), 'Cache du navigateur', 'Browser cache');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1039, 'standard', NOW(), 'Redirection', 'Redirection');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1040, 'standard', NOW(), 'Forcer la mise � jour (balise Pragma en `no-cache`)', 'Force refresh setting (Pragma value) to `no-cache`');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1041, 'standard', NOW(), 'Balises meta courantes (visibles dans le code source de la page)', 'Common meta tags (visible in source code)');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1042, 'standard', NOW(), 'Valeurs : all, index, follow, noindex, nofollow', 'values : all, index, follow, noindex, nofollow');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1043, 'standard', NOW(), 'Donn�es de r�f�rencement', 'Search enging referencing content');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1044, 'standard', NOW(), 'Cat�gorie', 'Category');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1045, 'standard', NOW(), 'Le fichier � t�l�charger d�passe les limites autoris�es par ce\r\nserveur : %s.', 'This file is too big. Server limits upload to %s.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1046, 'standard', NOW(), 'Copier la page', 'Copy page');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1047, 'standard', NOW(), 'S�lectionner la section de destination', 'Select the destination section');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1048, 'standard', NOW(), 'Copie de page', 'Page copy');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1049, 'standard', NOW(), 'S�lectionner la page de destination dans l\'arborescence', 'Select the destination page');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1050, 'standard', NOW(), 'Copier le contenu', 'Copy the content');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1052, 'standard', NOW(), 'Impression', 'Printing');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1053, 'standard', NOW(), 'Gestion des zones modifiables imprimables', 'Printing zone management');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1054, 'standard', NOW(), 'S�lectionner les zones modifiables et leur ordre d\'impression.', 'Select content management zones active on the print page and their order of appearance.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1055, 'standard', NOW(), 'Zones modifiables � ne pas imprimer', 'Non-printed zones');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1056, 'standard', NOW(), 'Zones modifiables � imprimer', 'Printed zones');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1057, 'standard', NOW(), 'S�lectionner', 'Select');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1058, 'standard', NOW(), 'S�lectionner', 'Add');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1059, 'standard', NOW(), 'Valider', 'Validate');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1060, 'standard', NOW(), 'Effacer la file', 'Clear queue');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1061, 'standard', NOW(), 'Pages (ID)', 'Pages (ID)');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1062, 'standard', NOW(), 'Lanc� le', 'Launch Date');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1063, 'standard', NOW(), 'Fichier PID', 'PID File');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1064, 'standard', NOW(), 'Pr�sent', 'Present');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1065, 'standard', NOW(), 'Absent', 'Absent');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1066, 'standard', NOW(), 'Scripts en attente', 'Scripts pending');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1067, 'standard', NOW(), 'Scripts en cours', 'Scripts in progress');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1068, 'standard', NOW(), 'Pas de rang�es', 'No rows');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1069, 'standard', NOW(), 'Effacer les enregistrements ant�rieurs au', 'Delete log before');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1070, 'standard', NOW(), 'Site', 'Website');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1071, 'standard', NOW(), 'Calendrier', 'Calendar');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1072, 'standard', NOW(), 'Statistiques', 'Statistics');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1073, 'standard', NOW(), 'Aide', 'Help');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1074, 'standard', NOW(), 'par', 'by');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1075, 'standard', NOW(), 'Gestion de page', 'Page administration');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1076, 'standard', NOW(), 'Site', 'Web Site');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1077, 'standard', NOW(), 'Impression active', 'Print page Active');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1078, 'standard', NOW(), 'Propri�t�s', 'Identity');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1079, 'standard', NOW(), 'Dates & alertes', 'Dates & Alerts');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1080, 'standard', NOW(), 'Moteurs de recherche', 'Search engines');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1081, 'standard', NOW(), 'Balises meta', 'Meta Tags');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1082, 'standard', NOW(), 'Oui', 'Yes');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1083, 'standard', NOW(), 'Non', 'No');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1084, 'standard', NOW(), 'Format : 0;url=http://domain.com', 'Format: 0;url=http://domain.com');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1085, 'standard', NOW(), 'Cr�er une nouvelle page', 'Create a new page');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1086, 'standard', NOW(), 'Retourner aux propri�t�s', 'Return to properties');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1087, 'standard', NOW(), 'sous %s', 'under %s');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1088, 'standard', NOW(), 'Modification de mod�le', 'Template Modification');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1089, 'standard', NOW(), 'Les mod�les utilisent du code XHTML associ� � des tags Automne sp�cifiques � votre site %s. Automne n\'utilisera pas du code non conforme � l\'XHTML. <font color="red">Attention � ne supprimer aucun tag \'&lt;atm-clientspace /&gt;\' sous peine de perdre le contenu associ� !</font>', 'Templates use xHTML code associated with Automne tags specific to your site, %s. Automne will not use any xHTML non-conform<br />\r\n<font color="red">Attention, do not delete any tag \'&lt;atm-clientspace /&gt;\' or all associed content will be lost!</font>');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1090, 'standard', NOW(), 'T�ches', 'Task');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1091, 'standard', NOW(), 'Rechercher', 'Search');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1092, 'standard', NOW(), 'R�sultat', 'Result');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1093, 'standard', NOW(), 'Le navigateur utilis� est obsol�te.<br />\r\nMerci de le mettre � jour avec une version plus r�cente :<br />\r\n<ul>\r\n<li><a href="http://www.mozilla.com/firefox/" target="_blank">Mozilla - Firefox</a></li>\r\n<li><a href="http://www.microsoft.com/ie/" target="_blank">Internet Explorer</a></li>\r\n</ul>', 'Your navigator is obsolete...<br />\r\nPlease update it with a more recent version:<br />\r\n<ul>\r\n<li><a href="http://www.mozilla.com/firefox/" target="_blank">Mozilla - Firefox</a></li>\r\n<li><a href="http://www.microsoft.com/ie/" target="_blank">Internet Explorer</a></li>\r\n</ul>');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1095, 'standard', NOW(), 'Remplacer le mod�le de la page copi�e par', 'Replace template?');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1096, 'standard', NOW(), '[Impossible de remplacer le mod�le, aucune correspondance trouv�e]', '[Impossible to replace template, no match found]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1097, 'standard', NOW(), 'Annuler les modifications des propri�t�s de la page \'%s\' ?', 'Confirm cancelling property changes for page \'%s\' ?');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1098, 'standard', NOW(), 'Ou', 'Or');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (10008, 'standard', NOW(), 'L\'image est trop grande (> %s pixels)','Image is too wide (> %s pixels)');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (10030, 'standard', NOW(), 'La d�monstration suivante se limite aux actions de cr�ation et de modification de contenu ainsi qu\'� la phase de validation. Pour tester Automne c�t� administration, vous devez t�l�charger le code source sur le site <a href="http://www.automne.ws" target="_blank" class="admin"><b>www.automne.ws</b></a>. N\'h�sitez pas � nous <a href="http://www.automne.ws/html/_77_.php" target="_blank" class="admin"><b>contacter</b></a> si vous avez des questions sur cette d�monstration ou sur la fa�on dont Automne pourrait optimiser la gestion de vos sites.<br /><br /> Les contenus sont initialis�s chaque dimanche. Si vous souhaitez tester les dates de publication, pensez � ne pas d�passer la date du dimanche suivant � minuit.\r\n', 'The following demo is limited to content addition and modification, including validation. To use Automne from an administrative perspective you must download the source code from <a href="http://www.automne.ws" target="_blank" class="admin"><b>www.automne.ws</b></a>. If you have further questions on this demo and on how Automne can help you manage your web sites, please <a href="http://www.automne.ws/html/_77_.php" target="_blank" class="admin"><b>contact us</b></a>.\r\n\r\nPlease note that all new content is erased every Sunday to renew the database. If you would like to test publication dates you must do so within the week ending on Sunday at midnight.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (10031, 'standard', NOW(), 'Aide', 'Help');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1099', 'standard', NOW( ), 'Adresse', 'Address');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1100', 'standard', NOW( ), 'Rang�es par d�faut', 'Default rows');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1101', 'standard', NOW( ), 'Aucun', 'None');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1102', 'standard', NOW( ), 'Voir', 'View');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1103', 'standard', NOW( ), 'Administrer', 'Manage');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1104', 'standard', NOW( ), 'Modifier', 'Modify');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1105', 'standard', NOW( ), 'Propri�t�s', 'Properties');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1106', 'standard', NOW( ), 'Identification', 'Identification');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1107', 'standard', NOW( ), 'Mod�les et rang�es authoris�s', 'Authorized templates and rows');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1108', 'standard', NOW( ), 'pour afficher un mod�le, s�lectionner tous les groupes auxquels il appartient', 'a template must belong to all the selected groups to be shown');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1109', 'standard', NOW( ), 'Editer', 'Edit');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1110', 'standard', NOW( ), 'Modification d\'une feuille de style (CSS)', 'Modify a stylesheet (CSS)');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1111', 'standard', NOW( ), 'Les feuilles de style utilisent du code CSS sp�cifique � votre site %s. <br /> Attention, Toute modification peut entrainer des changements visuels sur l\'ensemble de votre site !', 'Style sheets use CSS code specific to your site %s.<br />Attention, Any modification can change the visual of all your site!');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1112', 'standard', NOW( ), 'Base de Donn�es', 'DataBase');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1113', 'standard', NOW( ), 'Aucun �l�ment en attente de validation.', 'No validations pending.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1114', 'standard', NOW( ), 'Supprimer l\'acc�s au module', 'Delete module access');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1115', 'standard', NOW( ), 'Ordre', 'Order');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1116', 'standard', NOW( ), 'D�sarchiver', 'Unarchive');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1117', 'standard', NOW( ), 'Tous les utilisateurs', 'All users');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1118', 'standard', NOW( ), 'Tous les groupes', 'All groups');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1119', 'standard', NOW( ), 'Effacer le journal', 'Delete log');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1120', 'standard', NOW( ), 'Confirmer la suppression du journal ?', 'Confirm deletion request for log?');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1121', 'standard', NOW( ), 'N� de page', 'Page number');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1122', 'standard', NOW( ), 'Actions d\'administration', 'Administration actions');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1123', 'standard', NOW( ), 'Toutes les actions', 'All actions');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1124', 'standard', NOW( ), 'Choisir un profil', 'Choose user');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1125', 'standard', NOW( ), 'S�lection', 'Selection');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1126', 'standard', NOW( ), 'En haut', 'On top');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1127', 'standard', NOW( ), 'En bas', 'On bottom');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1128', 'standard', NOW( ), 'Effacer le contenu', 'Clear content');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1129', 'standard', NOW( ), 'Confirmer l\'effacement du contenu de ce bloc ?', 'Do you confirm content clear?');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1130', 'standard', NOW( ), 'Modifier les rang�es', 'Modify rows');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1131', 'standard', NOW( ), 'Supprimer la section', 'Delete section');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1132', 'standard', NOW( ), 'Choisissez...', 'Choose...');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1133', 'standard', NOW( ), 'Modifier mod�le d\'impression', 'Modify print template');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1134', 'standard', NOW( ),'Non publi�, � archiver', 'Non published, pending archiving');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1135', 'standard', NOW( ),'Non publi�, archivage refus�', 'Non published, archiving refused');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1136', 'standard', NOW( ),'Non publi�, archiv�', 'Non published, archived');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1137', 'standard', NOW( ),'A archiver', 'Pending archiving');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1138', 'standard', NOW( ),'Validation refus�e', 'Archive validation refused');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1139', 'standard', NOW( ),'Archiv�', 'Archived');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1140', 'standard', NOW( ),'A supprimer', 'Pending deletion');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1141', 'standard', NOW( ),'Suppression refus�e', 'Deletion refused ');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1142', 'standard', NOW( ),'Supprim�', 'Deleted');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1143', 'standard', NOW( ),'Modifi�, �valider', 'Modified, pending validation');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1144', 'standard', NOW( ),'Modifi�, validation refus�e','Modified, validation refused');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1145', 'standard', NOW( ),'Publi�', 'Published');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1146', 'standard', NOW( ),'Non publi�, � supprimer', 'Non published, pending deletion');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1147', 'standard', NOW( ),'Non pubi�, suppression refus�e', 'Non published, deletion refused');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1148', 'standard', NOW( ),'Non publi�, supprim�', 'Non published, deleted');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1149', 'standard', NOW( ),'A d�publier', 'Pending un-publication');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1150', 'standard', NOW( ),'D�publication refus�e', 'Un-publication refused');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1151', 'standard', NOW( ),'Non publi�','Un-published');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1152', 'standard', NOW( ),'Ordre des liens �valider', 'Order of links pending validation');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1153', 'standard', NOW( ),'Ordre des liens validation refus�e', 'Order of links validation refused');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1154', 'standard', NOW( ),'Nouveau, � archiver', 'New, pending archiving');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1155', 'standard', NOW( ),'Nouveau, archivage refus�', 'New, archiving refused');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1156', 'standard', NOW( ),'Nouveau, � supprimer' , 'New, pending deletion');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1157', 'standard', NOW( ),'Nouveau, suppression refus�e', 'New, deletion refused');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1158', 'standard', NOW( ),'Nouveau, �valider', 'New, pending validation');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1159', 'standard', NOW( ),'Nouveau, validation refus�e', 'New, validation refused');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1160', 'standard', NOW( ),'Largeur max : %s pixels. Vous pourrez redimensionner l\'image apr�s son chargement.', 'Max width : %s pixels. You will be able to resize your image after his loading.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1161', 'standard', NOW( ),'Largeur mini : %s pixels', 'Min width : %s pixels');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1162', 'standard', NOW( ),'Votre image est trop petite, minimum : %s pixels de large.', 'Your image is too small, minimum width : %s pixels.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1163', 'standard', NOW( ),'Votre image est trop grande, maximum : %s pixels de large, veuillez utiliser la fonction de redimensionnement.', 'Your image is too big, maximum width : %s pixels, please use resize function.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1164', 'standard', NOW(), 'Editeur visuel Javascript (WYSIWYG)', 'Javascript Visual editor (WYSIWYG)');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1165', 'standard', NOW(), 'Mise � jour d\'Automne', 'Automne update');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1166', 'standard', NOW(), 'Fichier de mise � jour', 'Update file');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1167', 'standard', NOW(), 'Bavard', 'Verbose');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1168', 'standard', NOW(), 'Ex�cution forc�e<br /><font color="red">(/!\\ Dangereux, ne cochez pas ceci si vous ne connaissez pas le fonctionnement interne d\'Automne /!\\)</font>', 'Force execution<br /><font color="red">(/!\\ Dangerous do not check this if you do not know internal Automne process /!\\)</font>');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1169', 'standard', NOW(), 'Rapport de mise � jour', 'Update report');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1170', 'standard', NOW(), 'Impossible de nettoyer le dossier temporaire, veuillez effacer le contenu de \'%s\' manuellement', 'Impossible to clean the temporary folder, please erase the contents of \'%s\' manually');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1171', 'standard', NOW(), 'Ligne de commande', 'Command line');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1172', 'standard', NOW(), 'Traitement du fichier', 'Treatment of the file');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1173', 'standard', NOW(), 'Traitement des commandes', 'Treatment of commands');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1174', 'standard', NOW(), 'Mise � jour', 'Update');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1175', 'standard', NOW(), '<font color="red">Attention, patcher Automne est un processus critique. Suivez scrupuleusement les indications et ne fermez pas votre navigateur avant la fin du processus.</font>', '<font color="red">Beware, Automne patching is a critical process. Follow indications scrupulously and do not close your navigator before the end of the process.</font>');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1176', 'standard', NOW(), 'Cliquez pour finaliser l\'installation', 'Click to finalize installation');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1177', 'standard', NOW(), 'Execution termin�e', 'End of process');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1178', 'standard', NOW(), 'Ne finalisez pas l\'installation si des erreurs (en rouge) se sont produites. Si vous avez des erreurs, copiez-collez le rapport complet et envoyez le � votre administrateur technique ou � WS Interactive.', 'Do not finalize installation if errors (in red) occurred. If you have errors, copy-paste the full report and send it to your technical administrator or to WS Interactive.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1179', 'standard', NOW(), 'Etes-vous sur de vouloir finaliser l\'installation ?', 'Are you sure to want to finalize installation ?');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1180', 'standard', NOW(), 'Effectu�', 'Done');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1181', 'standard', NOW(), 'Merci de ne pas fermer cette fen�tre.', 'Do not close this window.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1182', 'standard', NOW(), '[Une fen�tre pop-up � tent� de s\'ouvrir sans succ�s.\nMerci de d�sactiver le syst�me anti pop-up de votre navigateur pour ce site.]', '[A pop-up window attempted to open without success.\nThank you to deactivate the anti pop-up system of your browser for this site.]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1183', 'standard', NOW(), 'Sauvegarder le nouvel ordre', 'Save the new order');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1184', 'standard', NOW(), 'Cliquez pour corriger les erreurs', 'Click to correct errors');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1185', 'standard', NOW(), '[Erreur incorrigible. Patch Interrompu]', '[Incorrigible error. Patch Stopped]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1186', 'standard', NOW(), 'Valider et corriger l\'erreur suivante', 'Validate and correct next error');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1187', 'standard', NOW(), 'Valider la correction', 'Validate the correction');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1188', 'standard', NOW(), 'Fichier original prot�g�', 'Original protected file');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1189', 'standard', NOW(), 'Fichier du patch', 'Patch file');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1190', 'standard', NOW(), 'Collez ici le contenu du fichier mis � jour', 'Paste here the contents of the file updated');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1191', 'standard', NOW(), 'Vous tentez de mettre � jour un fichier qui a �t� modifi� manuellement. Merci de reporter ces modifications dans le fichier contenu dans le patch.', 'You try to update a file which was modified manually. Thank you to defer these modifications in the file contained in the patch.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1192', 'standard', NOW(), 'Reprise du processus de mise � jour apr�s correction des erreurs', 'Patching process resume after errors correction');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1193', 'standard', NOW(), '[Le fichier que vous souhaitez importer est trop grand]', '[File to upload is too wide]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1194', 'standard', NOW(), 'Lister', 'List');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1195', 'standard', NOW(), 'Menu g�n�ral', 'General Menu');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1196', 'standard', NOW(), 'Guide du r�dacteur', 'User guide');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1197', 'standard', NOW(), 'Guide du d�veloppeur', 'Developer guide');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1198', 'standard', NOW(), 'Guide de l\'administrateur', 'Administrator guide');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1199', 'standard', NOW(), 'Guide d\'installation', 'Installation guide');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1200', 'standard', NOW(), 'Pr�sentation d\'Automne', 'Automne presentation');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1201', 'standard', NOW(), 'D�marrer avec Automne', 'Getting started');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1202', 'standard', NOW(), 'Multiples pages', 'Multiple pages');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1203', 'standard', NOW(), 'Une page', 'One page');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1204', 'standard', NOW(), 'Format PDF', 'PDF Format');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1205', 'standard', NOW(), 'Seulement dans le langage par d�faut', 'Only in default language');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1206', 'standard', NOW(), 'Gestion des cat�gories', 'Categories management');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1207', 'standard', NOW(), 'Confirmez-vous la suppression de la cat�gorie %s', 'Do you confirm deletion of category %s');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1208', 'standard', NOW(), 'Racine des cat�gories', 'Categories root');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1209', 'standard', NOW(), 'Acc�s aux cat�gories pour le groupe \'%s\'', 'Access to categories for group \'%s\'');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1210', 'standard', NOW(), 'Gestion des acc�s au contenu des modules', 'Access management to modules content');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1211', 'standard', NOW(), 'Administrer les cat�gories', 'Manage categories');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1212', 'standard', NOW(), 'Les libell�s', 'Labels');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1213', 'standard', NOW(), 'Libell� en %s', 'Label in %s');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1214', 'standard', NOW(), 'Cat�gorie parente', 'Parent category');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1215', 'standard', NOW( ), 'Nom distinctif (dn)', 'Distinguished Name (dn)');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1216', 'standard', NOW(), '[Le dn (Distinguished Name) "%s" existe dej�]', '[Sorry, the LDAP dn "%s" is already used]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1217', 'standard', NOW(), 'Gestion des acc�s par groupes d\'utilisateurs', 'Users groups categories access management');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1218', 'standard', NOW(), 'Se souvenir de mon compte', 'Remember me');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1219', 'standard', NOW(), '<strong>Titre ou sous-titre (255 charact&egrave;res max) :</strong><br /><strong>&lt;block module=&quot;standard&quot; type=&quot;</strong><strong>varchar&quot; id=&quot;</strong>uniqueID<strong>&quot;&gt; ... &lt;/block&gt;</strong><ul><li><strong>uniqueID :</strong> Identifiant unique du bloc dans la rang&eacute;e.</li></ul>Les valeurs suivantes seront remplac&eacute;es dans le tag :<br /><ul><li><strong>{{data}} : </strong>Contenu textuel.</li></ul><strong>Texte mis en forme (HTML) :</strong><br /><strong>&lt;block module=&quot;standard&quot; type=&quot;text&quot; id=&quot;</strong>uniqueID<strong>&quot;&gt; ... &lt;/block&gt;</strong><ul><li><strong>uniqueID :</strong> Identifiant unique du bloc dans la rang&eacute;e.</li></ul>Les valeurs suivantes seront remplac&eacute;es dans le tag :<br /><ul><li><strong>{{data}} : </strong>Contenu mis en forme (HTML).</li></ul><strong>Image :</strong><br /><strong> &lt;block module=&quot;standard&quot; type=&quot;image&quot; id=&quot;</strong>uniqueID<strong>&quot; maxWidth=&quot;</strong>value<strong>&quot; minWidth=&quot;</strong>value<strong>&quot;&gt; ... &lt;/block&gt;</strong><br /><ul><li><strong>uniqueID :</strong> Identifiant unique du bloc dans la rang&eacute;e.</li><li><strong>value : </strong>Valeur minimum ou maximum autoris&eacute;e pour l\'image en pixels. Les attributs maxWidth et minWidth sont optionnels.</li></ul>Les valeurs suivantes seront remplac&eacute;es dans le tag :<br /><ul><li><strong>{{data}} : </strong>Code de l\'image et lien vers l\'image zoom si elle existe.</li><li><strong>{{linkLabel}} : </strong>Nom de l\'image si il existe.</li></ul><strong>Fichier - Pi&egrave;ce jointe :</strong><br /><strong>&lt;block module=&quot;standard&quot; type=&quot;file&quot; id=&quot;</strong>uniqueID<strong>&quot;&gt; ... &lt;/block&gt;</strong><ul><li><strong>uniqueID :</strong> Identifiant unique du bloc dans la rang&eacute;e.</li></ul>Les valeurs suivantes seront remplac&eacute;es dans le tag :<br /><ul><li><strong>{{data}} : </strong>Lien vers le fichier si il existe.</li><li><strong>{{href}} : </strong>Adresse (URL) du fichier.<br /></li><li><strong>{{label}} : </strong>Libell&eacute; du fichier.<br /></li><li><strong>{{jslabel}} : </strong>Libell&eacute; du fichier (&eacute;chapp&eacute; pour insertion dans du javascript ou un attribut de tag)<br /></li><li><strong>{{size}} : </strong>Taille du fichier en m&eacute;ga octets.<br /></li><li><strong>{{filename}} : </strong>Nom du fichier.<br /></li><li><strong>{{originalfilename}} : </strong>Nom original du fichier.<br /></li><li><strong>{{type}} : </strong>Extention du fichier.<br /></li></ul><strong>Animation Flash :</strong><br /><strong>&lt;block module=&quot;standard&quot; type=&quot;flash&quot; id=&quot;</strong>uniqueID<strong>&quot;&gt; ... &lt;/block&gt;</strong><ul><li><strong>uniqueID :</strong> Identifiant unique du bloc dans la rang&eacute;e.</li></ul>Les valeurs suivantes seront remplac&eacute;es dans le tag :<br /><ul><li><strong>{{data}} :</strong> Contenu de l\'animation flash.</li></ul>', '<ol><li>Title or sub-title<br />&lt;block module="standard" type="varchar" id="uniqueID"&gt;{{data}}&lt;/block&gt;</li><li>Free text<br />&lt;block module="standard" type="text" id="uniqueID"&gt;{{data}}&lt;/block&gt;</li><li>Image<br />&lt;block module="standard" type="image" id="uniqueID"&gt;{{data}} and / or {{linkLabel}}&lt;/block&gt;<br />NB : Attributes maxWidth and minWidth enable you to control the width of the image for each block image.</li><li>File<br />&lt;block module="standard" type="file" id="uniqueID"&gt;{{data}}&lt;/block&gt;</li><li>Flash Animation<br />&lt;block module="standard" type="flash" id="uniqueID"&gt;{{data}}&lt;/block&gt;</li></ol><b>uniqueID :</b> Unique identifier of the block for the row.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1220', 'standard', NOW(), 'Syntaxe des rang�es pour le module \'%s\'', 'Rows syntax for the module \'%s\'');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1221', 'standard', NOW(), 'Syntaxe des mod�les pour le module \'%s\'', 'Templates syntax for the module \'%s\'');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1222', 'standard', NOW(), '<strong> 	Titre de la page courante :<br />&lt;atm-title /&gt;</strong><br /><br /><strong> 	M&eacute;ta-donn&eacute;es de la page courante :<br />&lt;atm-meta-tags /&gt;</strong><br /><br /><strong> 	Valeur d\'une constante (voir les fichiers de constantes d\'Automne) :<br />&lt;atm-constant name=&quot;</strong>constantName<strong>&quot; /&gt;</strong><br /><ul><li><strong>constantName :</strong> Nom de la constante &agrave; afficher. </li></ul><strong> 	Lien(s) vers une ou plusieur pages :<br />&lt;atm-linx type=&quot;</strong>linxType<strong>&quot;&gt;</strong>linxDefinition<strong>&lt;/atm-linx&gt;</strong><br /><ul><li><strong>linxType :</strong> Type de lien parmi :<ul>    <li><strong>direct :</strong> Lien direct vers une page donn&eacute;e.</li>    <li><strong>sublinks :</strong> Liens vers les sous pages de la page courante.</li>    <li><strong>desclinks :</strong> Historique de navigation d\'une page &agrave; une autre.</li>    <li><strong>recursivelinks :</strong> Arborescence de sous liens depuis une page donn&eacute;e.</li></ul></li><li><strong>linxDefinition :</strong> Voir la documentation Automne pour le d&eacute;tail.</li></ul><strong> 	Zone de contenu : Permet l\'affichage de rang&eacute;es de contenu :<br />&lt;atm-clientspace module=&quot;standard&quot; id=&quot;</strong>uniqueID<strong>&quot; /&gt;</strong><br /><ul><li><strong>uniqueID :</strong> Identifiant unique de la zone de contenu dans le mod&egrave;le. </li></ul><strong> Lien vers la page d\'impression :<br />&lt;atm-print-link&gt;</strong>{{href}}<strong>&lt;/atm-print-link&gt;</strong><br /><ul><li><strong>{{href}} :</strong> sera remplac&eacute; par le lien vers la page imprimable.</li></ul>', '<ol>\r\n<li>\r\n	Title of the current page:<br />\r\n	&lt;atm-title /&gt;\r\n</li>\r\n<li>\r\n	Metadata of the current page:<br />\r\n	&lt;atm-meta-tags /&gt;\r\n</li>\r\n<li>\r\n	Value of a constant (see Automne constants files):<br />\r\n	&lt;atm-constant name="constantName" /&gt;<br />\r\n	<b>constantName :</b> Name of the constant to display.\r\n</li>\r\n<li>\r\n	link(s) to one or several pages:<br />\r\n	&lt;atm-linx type="linxType"&gt;linxDefinition&lt;/atm-linx&gt;<br />\r\n	<b>linxType :</b> link type between:\r\n	<ul>\r\n		<li>\'direct\' : Direct link to a given page.</li>\r\n		<li>\'sublinks\' : Links to subpages of the current page.</li>\r\n		<li>\'desclinks\' : Navigation history from a page to another.</li>\r\n		<li>\'recursivelinks\' : Tree structure of sublinks from a given page.</li>\r\n	</ul>\r\n	<b>linxDefinition :</b> See Automne documentation for the detail.\r\n</li>\r\n<li>\r\n	Content zone : Alow use of content rows :<br />\r\n	&lt;atm-clientspace module="standard" id="uniqueID" /&gt;<br />\r\n	<b>uniqueID :</b> Unique identifier of the content zone for the template.\r\n</li>\r\n<li>\r\n	Link to the printable page :<br />\r\n	&lt;atm-print-link&gt;{{href}}&lt;/atm-print-link&gt;<br />\r\n	<b>{{href}} :</b> will be replaced by the link to the printable page.\r\n</li>\r\n</ol>');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1223', 'standard', NOW(), 'Cat�gorie supprim�e', 'Deleted category');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1224', 'standard', NOW(), 'Gestion des Applications', 'Manage Applications');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1225', 'standard', NOW(), 'Application � �diter', 'Edit application');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1226', 'standard', NOW(), 'Objet � �diter', 'Edit object');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1227', 'standard', NOW(), 'Objets', 'Objects');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1228', 'standard', NOW(), 'Application', 'Application');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1229', 'standard', NOW(), 'Edition / cr�ation d\'un objet', 'Edit / create object');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1230', 'standard', NOW(), 'Ressource', 'Ressource');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1231', 'standard', NOW(), 'Ressource primaire', 'Primary resource');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1232', 'standard', NOW(), 'Ressource secondaire', 'Secondary resource');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1233', 'standard', NOW(), '<ul><li>Aucune : Cet objet ne sera pas soumis � validation. Son contenu appara�tra en ligne d�s sa saisie. Toute modification sera imm�diate.</li><li>Ressource primaire : Ce type d\'objet est soumis � validation. Son contenu n\'appara�tra en ligne qu\'apr�s validation par une personne autoris�e.</li><li>Ressource secondaire : Ce type d\'objet est soumis � la validation de la ressource primaire. Son contenu n\'appara�tra en ligne qu\'apr�s validation de la ressource primaire � laquelle il est directement attach�. Sans attache � une ressource primaire, il se comportera de la m�me mani�re qu\'un objet sans ressource.</li></ul>', '<ul><li>None : This object will not be subjected to validation. Its contents will appear on line as of its seizure.</li><li>Primary resource : This type of object is subjected to validation. Its contents will appear on line only after validation by an authorized person.</li><li>Secondary resource : This type of object is subjected to the validation of the primary resource. Its contents will appear on line only after validation of the primary resource to which it is attached. Without attach to a primary resource, it will have the same behavior of an object without resource.</li></ul>');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1234', 'standard', NOW(), 'Objet', 'Object');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1235', 'standard', NOW(), 'Champs', 'Fields');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1236', 'standard', NOW(), 'Champ', 'Field');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1237', 'standard', NOW(), 'Edition / cr�ation d\'un champ de donn�es pour l\'objet \'%s\'', 'Edit / create data field for object \'%s\'');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1238', 'standard', NOW(), 'Type de donn�es', 'Data type');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1239', 'standard', NOW(), 'Champ requis', 'Required field');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1240', 'standard', NOW(), 'Visible cot� client', 'Available in frontend');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1241', 'standard', NOW(), 'Visible dans les r�sultats d\'une recherche', 'Available in search results');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1242', 'standard', NOW(), 'Ajouter au formulaire de recherche<br /><small>(ou effectuer la recherche par mot-cl� sur ce champ)</small>', 'Add to search form<br /><small>(or search by keyword on this field)</small>');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1243', 'standard', NOW(), 'Param�tres', 'Parameters');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1244', 'standard', NOW(), 'Multiples', 'Multiples');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1247', 'standard', NOW(), 'Objets simples', 'Standard objects');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1248', 'standard', NOW(), 'Objets compos�s', 'Made up objects');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1267', 'standard', NOW(), 'Associer', 'Associate');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1268', 'standard', NOW(), 'D�sassocier', 'Disassociate ');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1271', 'standard', NOW(), 'Visible sur l\'accueil du module ?', 'Visible on the index of the module?');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1276', 'standard', NOW(), 'Pour les administrateurs seulement', 'Only for administrators');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1277', 'standard', NOW(), 'Confirmez-vous la suppression du champ \'%s\' ? Attention cette suppression est d�finitive, elle n\'est pas soumise � validation et elle impactera tous les objets ainsi que tous les fichiers correspondant � ce champ !', 'Do you confirm the deletion of the field \'%s\'? Attention this deletion is final, it is not subjected to validation and it will impact all the objects like all the files corresponding to this field!');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1278', 'standard', NOW(), '[Erreur durant la suppression du champ]', '[Error during field deletion]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1279', 'standard', NOW(), 'Structure', 'Structure');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1280', 'standard', NOW(), 'Structure de l\'objet \'%s\'', '\'%s\' object structure');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1281', 'standard', NOW(), 'Utilisation de l\'objet par d\'autres objets', 'Use of the object by other objects');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1282', 'standard', NOW(), 'Oui par', 'Yes by');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1283', 'standard', NOW(), 'Confirmez-vous la suppression de l\'objet \'%s\' ?', 'Do you confirm deletion of the object \'%s\'?');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1283', 'standard', NOW(), '[Erreur durant la suppression de l\'objet]', '[Error during object deletion]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1284', 'standard', NOW(), 'Cliquez pour choisir une date', 'Clic to pick a date');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1292', 'standard', NOW(), 'Les informations gris�es n�cessiteront une recherche r�cursive.', 'Grayed informations will require a recursive search.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1293', 'standard', NOW(), '[Erreur : vous n\'avez pas les droits suffisant sur le module \'%s\' pour lui ajouter une rang�e.]', '[Error: you do not have sufficient rights on the module \'%s\' to add a row to it.]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1294', 'standard', NOW(), 'Libell� compos�', 'Made up label');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1295', 'standard', NOW(), 'Attribut \'module\' manquant sur un tag \'block\'', 'Missing \'module\' attribute on \'block\' tag');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1296', 'standard', NOW(), '[Erreur : syntaxe de rang�e incorrecte : %s]', '[Error : malformed row syntax : %s]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1297', 'standard', NOW(), 'Syntaxe du libell� pour l\'objet \'%s\'', 'Label syntax for object \'%s\'');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1298', 'standard', NOW(), 'Acc�s des fichiers', 'Files accesses');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1299', 'standard', NOW(), 'Mod�les compatibles', 'Matching templates');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1300', 'standard', NOW(), 'Mod�les non compatibles', 'Unmatching templates');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1301', 'standard', NOW(), 'Attention, l\'utilisation d\'un mod�le incompatible peut entra�ner la perte des donn�es de la page.', 'Attention, using an unmatching template can involve the loss of all data of the page.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1302', 'standard', NOW(), 'vers', 'to');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1303', 'standard', NOW(), 'page', 'page');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1304', 'standard', NOW(), 'Gestion de l\'application \'%s\'', '\'%s\' application management');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1305', 'standard', NOW(), 'Cr�ation d\'une application', 'Application creation');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1306', 'standard', NOW(), 'Identifiant (Codename)', 'ID (Codename)');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1307', 'standard', NOW(), 'Maximum 20 caract�res alphanum�riques (a-z0-9) uniquement', 'Maximum 20 alphanumerics caracters (a-z0-9) only');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1308', 'standard', NOW(), '[Erreur : cet identifiant est d�j� utilis�]', '[Error : this ID already used]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1309', 'standard', NOW(), 'Le module est cr�� mais certaines erreurs se sont produites lors de la cr�ation des r�pertoires du module.\nV�rifiez que les r�pertoires suivants existent et sont accessible en �criture :\n%s,\n%s,\n%s,\n%s', 'Module is created but some errors append for module directories creation.\nPlease check following directories exists and are writable :\n%s,\n%s,\n%s,\n%s');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1310', 'standard', NOW(), 'L\'utilisateur %s fait parti du groupe %s. Modifier directement ses droits enl�vera l\'utilisateur de ce groupe. Etes-vous sur de vouloir continuer ?', '%s user makes party of the group %s. Modify its rights directly will remove the user of this group. Do you want to continue?');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1311', 'standard', NOW(), 'Vous n\'avez aucun droits d\'utilisation sur aucun mod�les de pages.', 'You do not have any rights of use on any pages templates.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1312', 'standard', NOW(), 'Vous ne pouvez cr�er de nouvelle page : Vous n\'avez aucun droits d\'utilisation sur aucun mod�les de pages.', 'You cannot create of new page: You do not have any rights of use on any pages templates.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1313', 'standard', NOW(), 'Maximiser la fen�tre d\'administration', 'Maximize administration window');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1314', 'standard', NOW(), 'Minimiser la fen�tre d\'administration', 'Minimize administration window');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1315', 'standard', NOW(), 'Fermer la fen�tre d\'administration', 'Close administration window');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1316', 'standard', NOW(), 'Administrer la page', 'Page administration');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1317', 'standard', NOW(), 'Cochez pour mettre � jour l\'adresse de la page (en fonction du titre donn� � la page.)', 'Check to update page URL (Page URL will be updated using page title.)');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1318', 'standard', NOW(), 'Adresse de la page en ligne. Vous pouvez la mettre � jour si vous modifiez le titre de la page mais attention ! Changer l\'adresse de la page peut entra�ner des probl�mes de r�f�rencement sur les moteurs de recherche ainsi que des probl�mes si d\'autres sites lient cette page.', 'Address of this page online. You can update it if you change the title of the page but attention! If you Change page URL, this can cause problems of referencing on search engines and problems if other sites links to this page.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1319', 'standard', NOW(), '[La page de destination s�lectionn�e est d�j� la page p�re actuelle de la page � d�placer ...]', '[The destination page selected is already the father page of the page to move...]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1320', 'standard', NOW(), 'Verrouill�', 'Locked');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1321', 'standard', NOW(), 'Chargement ...', 'Loading...');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1322', 'standard', NOW(), 'Contenu / Rang�es', 'Content / Rows');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1323', 'standard', NOW(), 'Confirmez-vous la suppression de l\'objet \'%s\' ?', 'Do you confirm deletion of the object \'%s\'?');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1324', 'standard', NOW(), 'Confirmez-vous la sortie sans sauvegarder ?', 'Do you confirm exit without saving?');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1325', 'standard', NOW(), 'Libell� du lien', 'Link label');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1326', 'standard', NOW(), 'Scripts restants', 'Remaining scripts');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1327', 'standard', NOW(), 'Meta donn�es par d�faut pour le site :', 'Default meta datas for website:');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1328', 'standard', NOW(), 'Page', 'Page');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1329', 'standard', NOW(), 'Maximum %so', 'Maximum %sB');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1330', 'standard', NOW(), 'Rafra�chir', 'Refresh');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1331', 'standard', NOW(), 'Stopper scripts', 'Stop scripts');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1332', 'standard', NOW(), 'Consulter l\'aide en ligne', 'View online help');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1333', 'standard', NOW(), 'Mod�les', 'Templates');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1334', 'standard', NOW(), 'Rang�es', 'Rows');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1335', 'standard', NOW(), 'Les rang�es de page appartiennent � un ou plusieurs groupes de rang�es. Pour utiliser une rang�e, un utilisateur doit avoir des droits sur tous les groupes de cette rang�e.', 'Each row belong to one or more groups. For a user to be able to use a row, he or she must have usage rights for ALL the groups to which that row belongs to.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1336', 'standard', NOW(), 'Aucun groupe', 'No group');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1337', 'standard', NOW(), '[Modification des groupes de rang�es interdits]', '[Modification of unauthorized rows groups]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1338', 'standard', NOW(), 'Inverser', 'Invert');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1339', 'standard', NOW(), 'Profondeur affich�e', 'Displayed depth');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1340', 'standard', NOW(), 'Visualisation des objets associ�s', 'Viewing associated objects');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1341', 'standard', NOW(), 'Edition des objets associ�s', 'Edit associated objects');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1342', 'standard', NOW(), 'Gestion des cat�gories', 'Categories management');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1343', 'standard', NOW(), 'Favicon', 'Favicon');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1344', 'standard', NOW(), 'Valeur : /favicon.ico ou /img/favicon.png, etc.', 'Value : /favicon.ico or /img/favicon.png, ...');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1345', 'standard', NOW(), 'Module', 'Application');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1346', 'standard', NOW(), 'Acc�s aux pages pour le groupe \'%s\'', 'Pages access for group \'%s\'');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1347', 'standard', NOW(), 'Acc�s aux pages pour l\'utilisateur \'%s\'', 'Pages access for user \'%s\'');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1348', 'standard', NOW(), 'Racine des pages', 'Pages root');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1349', 'standard', NOW(), 'Voir les acc�s au contenu des modules', 'View accesses to modules content');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1350', 'standard', NOW(), 'Acc�s aux cat�gories pour l\'utilisateur \'%s\'', 'Access to categories for user \'%s\'');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1351', 'standard', NOW(), 'Cet utilisateur appartient � un ou plusieurs groupes d\'utilisateurs, ses droits d�pendent de son appartenance � ces groupes d\'utilisateurs.', 'This user belongs to one or more user groups, his rights depend on his membership of these user groups.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1352', 'standard', NOW(), 'Plusieurs sites peuvent partager le m�me domaine. Dans ce cas, le premier dans la liste ci-dessous sera prioritaire : Il s\'affichera pour cette adresse de domaine.', 'Several websites can share the same domain. In this case, the first in the list below will have priority: It will be shown for this domain address.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1353', 'standard', NOW(), '[Erreur lors du r�ordonancement des sites ...]', '[Error during websites reorder...]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1354', 'standard', NOW(), 'Prot�ger les fichiers � t�l�charger.', 'Protect download files.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1355', 'standard', NOW(), 'Avec cette option active pour le module, les fichiers � t�l�charger (fichiers PDF, images, etc.) seront filtr�s avant tout t�l�chargement. Si des droits sont n�cessaires � leur consultation, l\'acc�s en sera interdit � toute personne n\'ayant pas les autorisations suffisantes. De plus, le nom du fichier sera syst�matiquement nettoy� des donn�es de contr�les ajout�es par Automne. Activer cette option entra�ne une charge plus importante sur le serveur pour tous les t�l�chargements. Ne l\'activez que si le besoin est r�el.', 'With this option active for the module, the files to be downloaded (PDF files, images, etc) will be filtered before any downloading. If rights are necessary to their consultation, the access will be forbidden to any person not having the sufficient clearance. Moreover, the name of the file will be systematically cleaned of controls datas added by Automne. Activating this option involves a more important load on the server for all the downloading. Activate it only if the need is real.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1356', 'standard', NOW(), 'Code Source', 'Source code');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1357', 'standard', NOW(), 'Edition pleine page', 'Edition fit window');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1358', 'standard', NOW(), 'Pr�visualisation', 'Preview');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1359', 'standard', NOW(), 'Mod�les', 'Template');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1360', 'standard', NOW(), 'Couper', 'Cut');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1361', 'standard', NOW(), 'Copier', 'Copy');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1362', 'standard', NOW(), 'Coller', 'Paste');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1363', 'standard', NOW(), 'Coller comme texte seul', 'Paste as plain text');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1364', 'standard', NOW(), 'Coller depuis Word', 'Paste from Word');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1365', 'standard', NOW(), 'Imprimer', 'Print');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1366', 'standard', NOW(), 'Annuler', 'Undo');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1367', 'standard', NOW(), 'Refaire', 'Redo');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1368', 'standard', NOW(), 'Chercher', 'Search');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1369', 'standard', NOW(), 'Remplacer', 'Replace');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1370', 'standard', NOW(), 'Tout s�lectionner', 'Select All');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1371', 'standard', NOW(), 'Supprimer le format', 'Remove format');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1372', 'standard', NOW(), 'Gras', 'Bold');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1373', 'standard', NOW(), 'Italique', 'Italic');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1374', 'standard', NOW(), 'Souligner', 'Underline');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1375', 'standard', NOW(), 'Barrer', 'Strike Through');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1376', 'standard', NOW(), 'Indice', 'Subscript');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1377', 'standard', NOW(), 'Exposant', 'Superscript');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1378', 'standard', NOW(), 'Liste Ordonn�e', 'Ordered List');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1379', 'standard', NOW(), 'Liste non-ordonn�e', 'Unordered List');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1380', 'standard', NOW(), 'Diminuer le retrait', 'Outdent');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1381', 'standard', NOW(), 'Augmenter le retrait', 'Indent');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1382', 'standard', NOW(), 'Aligner � gauche', 'Justify Left');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1383', 'standard', NOW(), 'Centrer', 'Center');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1384', 'standard', NOW(), 'Aligner � droite', 'Justify Right');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1385', 'standard', NOW(), 'Justifier', 'Justify');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1386', 'standard', NOW(), 'Ins�rer / modifier un lien', 'Add / Edit link');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1387', 'standard', NOW(), 'Supprimer un lien', 'Remove link');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1388', 'standard', NOW(), 'Ins�rer / modifier une ancre', 'Add / Edit anchor');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1389', 'standard', NOW(), 'Ins�rer / modifier une Image', 'Add / Edit image');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1390', 'standard', NOW(), 'Ins�rer / modifier un tableau', 'Add / Edit table');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1391', 'standard', NOW(), 'Ins�rer un s�parateur', 'Add rule');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1392', 'standard', NOW(), 'Ins�rer un caract�re sp�cial', 'Add a special char');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1393', 'standard', NOW(), 'Style de mise en forme', 'Format style');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1394', 'standard', NOW(), 'Format du texte', 'Text format');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1395', 'standard', NOW(), 'Taille du texte', 'Text size');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1396', 'standard', NOW(), 'Couleur du texte', 'Text color');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1397', 'standard', NOW(), 'Couleur de fond', 'Background color');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1398', 'standard', NOW(), '---------------------------------', '---------------------------------');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1399', 'standard', NOW(), 'Editeur WYSIWYG', 'WYSIWYG Editor ');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1400', 'standard', NOW(), 'Gestion des barres d\'outils de l\'�diteur visuel (WYSIWYG)', 'Visual editor (WYSIWYG) toolbars management');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1401', 'standard', NOW(), 'Confirmez-vous la suppression de la barre d\'outil s�lectionn�e ?', 'Do you confirm the deletion of the selected toolbar?');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1402', 'standard', NOW(), 'El�ments', 'Elements');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1403', 'standard', NOW(), 'Liens internes', 'Internal links');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1404', 'standard', NOW(), 'Barre d\'outils', 'Toolbar');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1405', 'standard', NOW(), 'Relations', 'Relations');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1406', 'standard', NOW(), 'Pages relationnelles', 'Relationnal pages');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1407', 'standard', NOW(), 'Pages li�es', 'Linked pages');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1408', 'standard', NOW(), 'Aucun r�sultat.', 'No result.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1409', 'standard', NOW(), 'Liste des pages', 'Pages list');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1410', 'standard', NOW(), 'liant la page %s', 'which target the page %s');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1411', 'standard', NOW(), 'li�es par la page %s', 'targets by the page %s');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1412', 'standard', NOW(), 'utilisant les mots cl�s %s', 'using keywords %s');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1413', 'standard', NOW(), 'et', 'and');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1414', 'standard', NOW(), 'Attention, cette page est li�e par %s pages, voulez vous vraiment supprimer la page "%s" ?', 'Warning, this page is linked by %s pages, do you really want to delete the page "%s" ?');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1415', 'standard', NOW(), 'ou', 'or');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1416', 'standard', NOW(), 'utilisant les identifiants %s', 'using identifiers %s');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1417', 'standard', NOW(), '%s page(s) lient cette page.', '%s page(s) targets this page.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1418', 'standard', NOW(), 'Cette page lie %s page(s).', 'This page targets %s page(s).');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1419', 'standard', NOW(), '[Erreur, le code XHTML n\'est pas conforme � la syntaxe attendue. Merci de le corriger (%s)]', '[Error, XHTML code does not conform to the expected syntax. Please correct it (%s)]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1420', 'standard', NOW(), 'Destination', 'Destination');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1421', 'standard', NOW(), 'Edition du contenu en cours', 'Content edition in progress');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1422', 'standard', NOW(), 'Soumettre � Validation', 'Submit for Validation');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1423', 'standard', NOW(), 'Sauvegarder le contenu', 'Save content');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1424', 'standard', NOW(), 'Effacer le contenu', 'Delete content');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1425', 'standard', NOW(), 'Confirmer la suppression du contenu ?', 'Confirm content deletion?');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1426', 'standard', NOW(), 'Voir le contenu', 'Content preview');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1427', 'standard', NOW(), 'Enregistrer et Quitter', 'Save and Quit');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1428', 'standard', NOW(), 'Edition du contenu', 'Content edition');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1429', 'standard', NOW(), 'Suppression du contenu', 'Content deletion');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1430', 'standard', NOW(), 'Soumission � validation', 'Submission to validation');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1431', 'standard', NOW(), 'Ce libell� servira � constituer l\'adresse URL du site. Seuls les caract�res alphanum�riques sont accept�s.', 'This label will be used to create the website URL. Only aphanumerics caracters are allowed.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1432', 'standard', NOW(), 'Une branche', 'A branch');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1433', 'standard', NOW(), 'S�lection de la branche � r�g�n�rer', 'Select a branch to regenerate');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1434', 'standard', NOW(), 'S�lectionner la page racine de la branche � r�g�n�rer', 'Select the root page of the branch to regenerate');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1435', 'standard', NOW(), 'utilisant les mod�les %s', 'using templates %s');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1436', 'standard', NOW(), 'utilisant le mod�le %s', 'using template %s');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1437', 'standard', NOW(), 'utilisant la rang�e %s', 'using row %s');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1438', 'standard', NOW(), 'utilisant les rang�es %s', 'using rows %s');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1439', 'standard', NOW(), 'Utilisateurs du groupe "%s"', '"%s" group users');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1440', 'standard', NOW(), 'Voir les pages', 'See pages');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1441', 'standard', NOW(), 'Aucun utilisateur n\'est associ� � ce groupe', 'No users associate to this group');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1442', 'standard', NOW(), 'Cocher cette case pour que les utilisateurs n\'aient pas les droits sur ces nouveaux groupes', 'If you check this box, no users have rights to these new groups');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1443', 'standard', NOW(), 'actif', 'active');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1444', 'standard', NOW(), 'inactif', 'inactive');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1445', 'standard', NOW(), 'Cr�ation d\'un groupe', 'Create a group');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1446', 'standard', NOW(), 'Cette fen�tre vous permet de consulter et modifier le profil d\'un groupe d\'utilisateurs. En associant un groupe � un ensemble d\'utilisateurs vous pouvez centraliser les droits de cet ensemble d\'utilisateurs.', 'This window allows you to view and change the profile of a user group. By combining a group to a set of users you can centralize the rights of this group of users.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1447', 'standard', NOW(), 'Vous ne pouvez supprimer un groupe qui poss�de des utilisateurs.', 'You can not delete a group that has users.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES ('1448', 'standard', NOW(), 'Ce droit permet d\'autoriser la duplication d\'une branche de pages.', 'This right give the permission to duplicate a pages branch.');






#
# Contenu de la table `I18NM_messages` modules Aliases
#

DELETE FROM I18NM_messages WHERE module='cms_aliases';

INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (5, 'cms_aliases', NOW(), 'Confirmer la suppression de l''alias ''%s''', 'Do you confirm deletion of the alias ''%s''');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (8, 'cms_aliases', NOW(), '[Erreur : Impossible de cr�er l''alias, un dossier portant ce nom existe d�j� !]', '[Error: Impossible to create this alias, a folder with this name already exists!]');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (7, 'cms_aliases', NOW(), 'Cr�ation / modification d''alias', 'Alias creation / modification');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1, 'cms_aliases', NOW(), 'Alias', 'Aliases ');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (2, 'cms_aliases', NOW(), 'Chemin de l''alias', 'Alias path');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (3, 'cms_aliases', NOW(), 'Cible', 'Target');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (4, 'cms_aliases', NOW(), 'Sous-alias', 'Sub-aliases');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (6, 'cms_aliases', NOW(), 'Parent', 'Parent');

#
# Contenu de la table `I18NM_messages` module Forms
#

DELETE FROM I18NM_messages WHERE module='cms_forms';

INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1, 'cms_forms', NOW(), 'Formulaires', 'Forms');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (2, 'cms_forms', NOW(), 'Voici les formulaires qui ont �t� re�us par l''application. Vous pouvez en exporter les donn�es ou supprimer le contenu existant.', 'Here are the forms that were received by the application. You can export their data or delete it.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (3, 'cms_forms', NOW(), 'Formulaire', 'Form');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (4, 'cms_forms', NOW(), 'Enregistrements', 'Records');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (5, 'cms_forms', NOW(), 'Dernier envoi', 'Last post');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (6, 'cms_forms', NOW(), 'Aucun r�sultats trouv�s', 'No results found');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (7, 'cms_forms', NOW(), 'Exporter', 'Export');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (8, 'cms_forms', NOW(), 'Supprimer', 'Delete');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (9, 'cms_forms', NOW(), 'Confirmez-vous la suppression de l''action ''%s'' ?', 'Do you confirm deletion of the ''%s'' action?');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (10, 'cms_forms', NOW(), 'Donn�es re�ues', 'Data received');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (11, 'cms_forms', NOW(), 'Formulaires disponibles pour les utilisateurs', 'PDF forms available for users');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (12, 'cms_forms', NOW(), 'Voici les formulaires disponibles.', 'Here are the forms available.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (13, 'cms_forms', NOW(), 'Fichier', 'File');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (14, 'cms_forms', NOW(), 'Adresse', 'URL');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (15, 'cms_forms', NOW(), 'Date d''insertion', 'Insertion date');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (16, 'cms_forms', NOW(), 'Confirmez-vous la suppresion du formulaire ''%s'' ?', 'Do you confirm deletion of form ''%s'' ?');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (17, 'cms_forms', NOW(), 'Ins�rer un document PDF', 'Insert PDF file');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (18, 'cms_forms', NOW(), 'Erreur lors de l''insertion du fichier !', 'Error while uploading file !');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (19, 'cms_forms', NOW(), 'Nom du formulaire', 'Form name');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (20, 'cms_forms', NOW(), 'Ajouter un formulaire', 'Add a new form');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (21, 'cms_forms', NOW(), 'Gestion des cat�gories :', 'Categories management :');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (22, 'cms_forms', NOW(), 'Gestion des acc�s par groupes d''utilisateurs :', 'User access by groups :');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (23, 'cms_forms', NOW(), 'Gestion des formulaires :', 'Forms management :');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (24, 'cms_forms', NOW(), 'Lister', 'List');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (25, 'cms_forms', NOW(), 'Accueil', 'Entry');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (26, 'cms_forms', NOW(), 'Libell�', 'Label');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (27, 'cms_forms', NOW(), 'Nom du formulaire', 'Form name');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (28, 'cms_forms', NOW(), 'Source XHTML', 'XHTML source');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (29, 'cms_forms', NOW(), 'Actif', 'Activated');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (30, 'cms_forms', NOW(), 'Cat�gories', 'Categories');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (31, 'cms_forms', NOW(), 'Une erreur est survenue lors de la suppression du formulaire', 'An error occured while attempting to delete form');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (32, 'cms_forms', NOW(), 'Veuillez v�rifier la syntaxe XHTML de votre formulaire', 'Please verify formular XHTML syntax');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (33, 'cms_forms', NOW(), 'Une erreur est survenue lors de l''ajout des cat�gories', 'Add of categories failed');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (34, 'cms_forms', NOW(), 'Une erreur est survenue lors de l''ajout de la cat�gorie %s', 'Add of category %s failed');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (35, 'cms_forms', NOW(), 'Vous devez s�lectionner une cat�gorie au minimum	', 'Choose at least one category');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (36, 'cms_forms', NOW(), 'Actions du formulaire', 'Form actions');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (37, 'cms_forms', NOW(), 'Aucun �l�ment n''est s�lectionn�', 'Nothing is selected');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (38, 'cms_forms', NOW(), 'Type d''action', 'Action type');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (39, 'cms_forms', NOW(), 'Valeurs ins�r�es en base de donn�es', 'Values inserted in data base ');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (40, 'cms_forms', NOW(), 'Si la saisie du formulaire n''est pas correcte', 'If form datas are not correct ');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (41, 'cms_forms', NOW(), 'Si la saisie du formulaire est correcte', 'If form datas are correct');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (42, 'cms_forms', NOW(), 'Envoi des valeurs du formulaire � un ou plusieurs emails fournis', 'Sending of form values to one or more provided emails ');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (43, 'cms_forms', NOW(), 'Envoi des valeurs du formulaire � un email fournis dans un champ du formulaire', 'Sending of form values to one email provided in a field of the form');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (44, 'cms_forms', NOW(), 'Oui', 'Yes');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (45, 'cms_forms', NOW(), 'Non', 'No');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (46, 'cms_forms', NOW(), 'Merci, votre message est enregistr�.', 'Thank you, your message has been saved.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (47, 'cms_forms', NOW(), 'Stocker les valeurs du formulaire dans un fichier CSV', 'Store form values in a CSV file ');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (48, 'cms_forms', NOW(), 'Nombre de r�ponses max :<br /><small>(par utilisateurs)</small>', 'Max number of answers :<br /><small>(per users)</small>');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (49, 'cms_forms', NOW(), 'Saisissez le nombre maximum de r�ponses d�sir�es par utilisateurs, ou laisser vide pour ne pas limiter ce nombre', 'Enter the maximum number of wished answers per users, or to leave vacuum not to limit this number ');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (50, 'cms_forms', NOW(), 'Afficher un texte', 'Display a text');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (51, 'cms_forms', NOW(), 'Rediriger vers une page', 'Redirect to a page');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (52, 'cms_forms', NOW(), 'Si le nombre de r�ponses est d�pass�', 'If the number of answers is exceeded');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (53, 'cms_forms', NOW(), 'Actions actuelles :', 'Current actions:');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (54, 'cms_forms', NOW(), 'Ajouter une action :', 'Add an action:');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (55, 'cms_forms', NOW(), 'Saisissez votre liste d''emails (s�parateur virgule ou point-virgule)', 'Enter your emails list (separator comma or semicolon)');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (56, 'cms_forms', NOW(), 'Saisissez le message d''en t�te pour les emails', 'Enter the header message for emails');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (57, 'cms_forms', NOW(), 'Texte � afficher', 'Text to display');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (58, 'cms_forms', NOW(), 'Champ(s) du formulaire', 'Form field(s)');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (59, 'cms_forms', NOW(), 'Fichier CSV', 'CSV File');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (60, 'cms_forms', NOW(), 'Vous pourrez t�l�charger ici le fichier CSV lorsque des donn�es seront disponibles.', 'You will be able to download CSV file here when data are available.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (61, 'cms_forms', NOW(), 'Aucun champ pouvant contenir un email n''a �t� trouv� dans le formulaire.', 'No field which can contain an email was found in the form.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (62, 'cms_forms', NOW(), 'Cat�gorie', 'Category');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (63, 'cms_forms', NOW(), 'Trouver un formulaire', 'Find a form');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (64, 'cms_forms', NOW(), 'S�lection d''un formulaire', 'Form selection');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (65, 'cms_forms', NOW(), 'S�lectionner', 'Select');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (66, 'cms_forms', NOW(), 'D�selectionner', 'Deselect');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (67, 'cms_forms', NOW(), 'Veuillez compl�ter les champs requis :', 'Please complete the following required fields:');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (68, 'cms_forms', NOW(), 'Le contenu de ces champs est incorrect :', 'The following fields have incorrect content:');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (69, 'cms_forms', NOW(), 'Message du formulaire ''%s'' du site ''%s''', 'Message from form ''%s'' from website ''%s''');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (70, 'cms_forms', NOW(), 'Saisissez le message de fin pour les emails', 'Enter the footer message for emails');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (71, 'cms_forms', NOW(), 'Saisissez le sujet des emails', 'Enter the subject message for emails');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (72, 'cms_forms', NOW(), 'T�l�charger les donn�es du formulaire au format CSV', 'Download form datas in CSV format');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (73, 'cms_forms', NOW(), 'Confirmez-vous la suppression des donn�es enregistr�es pour le formulaire ''%s'' ?', 'Do you confirm deletion of recorded datas for the form ''%s''?');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (74, 'cms_forms', NOW(), 'Remise � z�ro', 'Reset');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (75, 'cms_forms', NOW(), 'Authentifier l''utilisateur', 'Authenticate user');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (76, 'cms_forms', NOW(), 'Aucun champ pouvant contenir un identifiant utilisateur n''a �t� trouv� dans le formulaire.', 'No field which can contain a user ID was found in the form.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (77, 'cms_forms', NOW(), 'Aucun champ pouvant contenir un mot de passe utilisateur n''a �t� trouv� dans le formulaire.', 'No field which can contain a user password was found in the form.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (78, 'cms_forms', NOW(), 'Identifiant', 'User ID');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (79, 'cms_forms', NOW(), 'Mot de passe', 'Password');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (80, 'cms_forms', NOW(), 'Message � afficher si l''authentification est incorrecte', 'Message displayed on wrong authentification');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (81, 'cms_forms', NOW(), 'Se souvenir du compte', 'Remember account');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (82, 'cms_forms', NOW(), 'Aucun champ pouvant servir � retenir le compte utilisateur n''a �t� trouv� dans le formulaire.', 'No field which can be used to remember user account was found in the form.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (83, 'cms_forms', NOW(), 'Cette action n\'est pas autoris�e durant l\'�dition ou la pr�visualisation de la page.', 'This action is not allowed during edition / previsualisation of the page.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (84, 'cms_forms', NOW(), 'Vous devez avoir \'%s\' actif dans votre profil pour pouvoir Cr�er / Editer un formulaire.', 'You must have \'%s\' active in your profile to Create / Edit a form.');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (85, 'cms_forms', NOW(), '<strong>Formulaire &agrave; choisir pour une page :</strong><br /><strong>&lt;block module=&quot;cms_forms&quot; id=&quot;form&quot;&gt;</strong>{{data}}<strong>&lt;/block&gt;<br /></strong><ul><li><strong>{{data}} : </strong>Sera remplac� par le formulaire &agrave; afficher.</li></ul>', 'TODO');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (86, 'cms_forms', NOW(), '<strong>Formulaire &agrave; afficher pour toutes les pages employant le mod�le :</strong><br /><strong>&lt;atm-clientspace module=&quot;cms_forms&quot; id=&quot;form&quot; type=&quot;formular&quot; formID=&quot;</strong>formID<strong>&quot;/&gt;<br /></strong><ul><li><strong>formID : </strong>Identifiant du formulaire &agrave; afficher.</li></ul>', 'TODO');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (87, 'cms_forms', NOW(), 'Assistant de cr�ation de formulaires', 'Forms creation wizard');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (88, 'cms_forms', NOW(), 'Adresse d\'�mission', 'Sender address');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (89, 'cms_forms', NOW(), 'Avec la date de soumission', 'With submission date');
INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (90, 'cms_forms', NOW(), '[Erreur : vous ne devez pas copier-coller le code d\'un formulaire dans un autre formulaire !]', '[Error : you must not copy-paste code from one form to another one!]');

#
# Contenu de la table `I18NM_messages` module Polymod
#

DELETE FROM I18NM_messages WHERE module='polymod';

INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (2, 'polymod', NOW(), 'Cr�ation / modification d\'un objet \'%s\'', 'Object \'%s\' creation / modification');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (3, 'polymod', NOW(), 'Cr�ation / modification de l\'objet \'%s\' :', 'Creation / modification of \'%s\' object:');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (4, 'polymod', NOW(), 'Suppression d\'un objet \'%s\'', '\'%s\' object deletion');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (5, 'polymod', NOW(), 'Suppression de l\'objet \'%s\' :', 'Deletion of \'%s\' object:');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (6, 'polymod', NOW(), 'Lien existant', 'Current link');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (7, 'polymod', NOW(), 'Accueil', 'Entry');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (18, 'polymod', NOW(), 'Mots-cl�s', 'Kewyords');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (19, 'polymod', NOW(), 'Publi� entre le', 'Published between');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (20, 'polymod', NOW(), 'et le', 'and');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (21, 'polymod', NOW(), '%s objet(s) \'%s\' correspondant � votre recherche', '%s \'%s\' object(s) relative to your search');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (30, 'polymod', NOW(), 'Objet', 'Object');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (31, 'polymod', NOW(), 'Changement du contenu d\'un objet \'%s\'', 'Object \'%s\' content change');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (32, 'polymod', NOW(), 'Changement apport� sur l\'objet \'%s\' : %s', 'Content change for object \'%s\' : \'%s\'');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (37, 'polymod', NOW(), 'Libell�', 'Label');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (39, 'polymod', NOW(), 'Description', 'Description');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (52, 'polymod', NOW(), 'Confirmez-vous la suppression de l\'objet \'%s\' : %s', 'Do you confirm deletion of object \'%s\' : %s');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (53, 'polymod', NOW(), 'Proposition de suppression d\'un objet %s', '%s object deletion proposal');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (55, 'polymod', NOW(), 'Suppression de l\'objet \'%s\' : %s', 'Deletion of \'%s\' object : %s');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (57, 'polymod', NOW(), 'Publication sur le site', 'Publication on website');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (66, 'polymod', NOW(), 'Trouver un objet \'%s\'', 'Find a \'%s\' object');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (77, 'polymod', NOW(), 'Lister', 'List');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (82, 'polymod', NOW(), 'Gestion des �l�ments \'%s\'', '\'%s\' elements management');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (108, 'polymod', NOW(), 'G�rer les �l�ments \'%s\'', 'Manage elements \'%s\'');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (109, 'polymod', NOW(), 'Effectuer une recherche', 'Research');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (110, 'polymod', NOW(), '<div class="rowComment">
<h1>Lance une recherche sur un type d\'objet donn&eacute; :</h1>
<div class="retrait"><span class="code"> 	&lt;atm-search what=&quot;<span class="keyword">objet</span>&quot; name=&quot;<span class="keyword">searchName</span>&quot;&gt;...&lt;/atm-search&gt; 	</span><br />
<br />
<ul>
	<li><span class="keyword">objet</span> : Type d\'objet &agrave; rechercher (de la forme <span class="vertclair">{<span class="keyword">objet</span>}</span>)</li>
	<li><span class="keyword">searchName</span> : Nom de la recherche : identifiant unique pour la recherche dans la rang&eacute;e.</li>
	<li>Un attribut <span class="keyword">public</span> (facultatif) peut-&ecirc;tre ajout&eacute; pour sp&eacute;cifier une recherche sur la zone publique ou &eacute;dit&eacute;e. Il prend pour valeur <span class="vertclair">true</span> pour une recherche publique (d&eacute;faut) ou <span class="vertclair">false</span> pour une recherche dans la zone &eacute;dit&eacute;e.</li>
</ul>
</div>
<h2>Ce tag peut contenir les sous-tags suivants :</h2>
<div class="retrait">
<h3>Affichage des r&eacute;sultats :</h3>
<div class="retrait"><span class="code"> 	&lt;atm-result&nbsp; search=&quot;<span class="keyword">searchName</span>&quot;&gt; ... &lt;/atm-result&gt; 	</span><br />
<br />
Le contenu de ce tag sera lu pour chaque r&eacute;sultat trouv&eacute; pour la recherche en cours.
<ul>
	<li><span class="keyword">searchName</span> : Nom de la recherche sur lequel appliquer le param&egrave;tre.</li>
	<li>Un attribut <span class="keyword">return </span>(facultatif) peut-&ecirc;tre ajout&eacute; pour sp&eacute;cifier le type de r&eacute;sultat retourn&eacute;. Par d&eacute;faut une recherche revoie des objets, mais dans l\'optique d\'am&eacute;liorer les performances, il est possible de sp&eacute;cifier les deux valeurs suivantes de retour :
	<ul>
		<li><span class="vertclair">POLYMOD_SEARCH_RETURN_IDS</span> : retournera uniquement l\'identifiant du r&eacute;sultat.</li>
		<li><span class="vertclair">POLYMOD_SEARCH_RETURN_OBJECTSLIGHT</span> : retournera le r&eacute;sultat mais sans charger les sous-objets qu\'il peut contenir dans ses diff&eacute;rents champs. Attention, ce param&egrave;tre n\'est possible que sur une recherche publique.</li>
	</ul>
	</li>
</ul>
<br />
Les valeurs suivantes seront remplac&eacute;es dans le tag :
<ul>
	<li><span class="vertclair">{firstresult}</span> : Vrai si le r&eacute;sultat en cours est le premier de la page en cours.</li>
	<li><span class="vertclair">{lastresult}</span> : Vrai si le r&eacute;sultat en cours est le dernier de la page en cours.</li>
	<li><span class="vertclair">{resultcount}</span> : Num&eacute;ro du r&eacute;sultat dans la page.</li>
	<li><span class="vertclair">{maxresults}</span> : Nombre de r&eacute;sultats pour la recherche.</li>
	<li><span class="vertclair">{maxpages}</span> : Nombre de pages maximum pour la recherche en cours.</li>
	<li><span class="vertclair">{currentpage}</span> : Num&eacute;ro de la page actuelle pour la recherche en cours.</li>
	<li><span class="vertclair">{resultid}</span> : Identifiant du r&eacute;sultat. Utile dans le cas du\'une recherche retournant uniquement les identifiants des r&eacute;sultats (param&egrave;tre return avec la valeur POLYMOD_SEARCH_RETURN_IDS).</li>
</ul>
</div>
<h3>Aucun r&eacute;sultats :</h3>
<div class="retrait"><span class="code"> 	&lt;atm-noresult&nbsp; search=&quot;<span class="keyword">searchName</span>&quot;&gt; ... &lt;/atm-noresult&gt; 	</span><br />
<br />
Le contenu de ce tag sera affich&eacute; si aucun r&eacute;sultat n\'est trouv&eacute; pour la recherche en cours.
<ul>
	<li><span class="keyword">searchName</span> : Nom de la recherche sur lequel appliquer le param&egrave;tre.</li>
</ul>
</div>
<h3>Param&egrave;tre de recherche :</h3>
<div class="retrait"><span class="code"> 	&lt;atm-search-param search=&quot;<span class="keyword">searchName</span>&quot; type=&quot;<span class="keyword">paramType</span>&quot; value=&quot;<span class="keyword">paramValue</span>&quot; mandatory=&quot;<span class="keyword">mandatoryValue</span>&quot; /&gt; 	</span><br />
<br />
Permet de limiter les r&eacute;sultats de la recherche &agrave; des param&egrave;tres donn&eacute;s.
<ul>
	<li><span class="keyword">searchName</span> : Nom de la recherche sur lequel appliquer le param&egrave;tre.</li>
	<li><span class="keyword">paramType</span> : Type de param&egrave;tre, peut-&ecirc;tre de la forme <span class="vertclair">{<span class="keyword">objet:champ</span>:fieldID}</span> pour filtrer la recherche sur la valeur d\'un champs donn&eacute; ou bien un nom de type fixe parmi : <span class="vertclair">%s</span> pour utiliser un filtrage pr&eacute;d&eacute;finis.</li>
	<li><span class="keyword">paramValue</span> : Valeur du param&egrave;tre de la recherche. Si la valeur est \'<span class="vertclair">block</span>\' vous pourrez sp&eacute;cifier cette valeur lors de la cr&eacute;ation de la rang&eacute;e dans la page.</li>
	<li><span class="keyword">mandatoryValue</span> : Bool&eacute;en (<span class="vertclair">true</span> ou <span class="vertclair">false</span>), permet de sp&eacute;cifier si ce param&egrave;tre de recherche est optionnel ou obligatoire.</li>
</ul>
<br />
Un param&egrave;tre suppl&eacute;mentaire <span class="keyword">operator</span> permet d\'ajouter un comportement sp&eacute;cifique au type de champs sur le filtre. La valeur accept&eacute;e par ce param&egrave;tre est expliqu&eacute;e dans l\'aide du champ concern&eacute; si il accepte un tel param&egrave;tre.</div>
<h3>Afficher une page donn&eacute;e de r&eacute;sultats (le nombre de r&eacute;sultats d\'une page est sp&eacute;cifi&eacute; par le tag atm-search-limit) :</h3>
<div class="retrait"><span class="code"> 	&lt;atm-search-page search=&quot;<span class="keyword">searchName</span>&quot;  value=&quot;<span class="keyword">pageValue</span>&quot; /&gt; 	</span><br />
<br />
<ul>
	<li><span class="keyword">searchName</span> : Nom de la recherche sur lequel appliquer le param&egrave;tre.</li>
	<li><span class="keyword">pageValue</span> : Valeur num&eacute;rique de la page &agrave; afficher.</li>
</ul>
</div>
<h3>Limiter le nombre de r&eacute;sultats d\'une page :</h3>
<div class="retrait"><span class="code"> 	&lt;atm-search-limit search=&quot;<span class="keyword">searchName</span>&quot; value=&quot;<span class="keyword">limitValue</span>&quot; /&gt; 	</span><br />
<br />
<ul>
	<li><span class="keyword">searchName</span> : Nom de la recherche sur lequel appliquer la limite.</li>
	<li><span class="keyword">limitValue</span> : Valeur num&eacute;rique de la limite &agrave; appliquer. Si la valeur est \'<span class="vertclair">block</span>\' vous pourrez sp&eacute;cifier cette valeur lors de la cr&eacute;ation de la rang&eacute;e dans la page.</li>
</ul>
</div>
<h3>Ordonner les r&eacute;sultats :</h3>
<div class="retrait"><span class="code">&lt;atm-search-order search=&quot;<span class="keyword">searchName</span>&quot; type=&quot;<span class="keyword">orderType</span>&quot; direction=&quot;<span class="keyword">directionValue</span>&quot; /&gt;</span><br />
<br />
<ul>
	<li><span class="keyword">searchName</span> : Nom de la recherche sur lequel appliquer la limite.</li>
	<li><span class="keyword">orderType</span> : Type de valeur sur lequel appliquer l\'ordre, peut-&ecirc;tre de la forme <span class="vertclair">{<span class="keyword">objet:champ</span>:fieldID}</span> ou un nom de type fixe parmi : <span class="vertclair">%s</span>.</li>
	<li><span class="keyword">directionValue</span> : Sens &agrave; appliquer : <span class="vertclair">asc</span> pour croissant, <span class="vertclair">desc</span> pour d&eacute;croissant. Si la valeur est \'<span class="vertclair">block</span>\' vous pourrez sp&eacute;cifier cette valeur lors de la cr&eacute;ation de la rang&eacute;e dans la page.</li>
</ul>
</div>
</div>
<h2>Fonctions :</h2>
<div class="retrait">
<h3>Afficher la liste des pages de la recherche en cours :</h3>
<div class="retrait">
<div class="code">&lt;atm-function function=&quot;pages&quot; maxpages=&quot;<span class="keyword">maxpagesValues</span>&quot; currentpage=&quot;<span class="keyword">currentpageValue</span>&quot; displayedpage=&quot;<span class="keyword">displayedpagesValue</span>&quot;&gt;<br />
&nbsp;&nbsp;&nbsp; <span class="keyword">&lt;pages&gt;</span> ... <span class="vertclair">{n}</span> ... <span class="keyword">&lt;/pages&gt;</span><br />
&nbsp;&nbsp;&nbsp; <span class="keyword">&lt;currentpage&gt;</span> ... <span class="vertclair">{n}</span> ... <span class="keyword">&lt;/currentpage&gt;</span><br />
&nbsp;&nbsp;&nbsp; <span class="keyword">&lt;start&gt;</span> ... <span class="vertclair">{n}</span> ... <span class="keyword">&lt;/start&gt;</span><br />
&nbsp;&nbsp;&nbsp; <span class="keyword">&lt;previous&gt;</span> ... <span class="vertclair">{n}</span> ... <span class="keyword">&lt;/previous&gt;</span><br />
&nbsp;&nbsp;&nbsp; <span class="keyword">&lt;next&gt;</span> ... <span class="vertclair">{n}</span> ... <span class="keyword">&lt;/next&gt;</span><br />
&nbsp;&nbsp;&nbsp; <span class="keyword">&lt;end&gt;</span> ... <span class="vertclair">{n}</span> ... <span class="keyword">&lt;/end&gt;</span><br />
&lt;/atm-function&gt;</div>
<br />
<br />
Cette fonction permet d\'afficher la liste de toutes les pages possibles pour la recherche.<br />
<ul>
	<li><span class="keyword">maxpagesValue</span> : Nombre de page maximum sur lesquelles boucler (habituellement : <span class="vertclair">{maxpages}</span> ).</li>
	<li><span class="keyword">currentpageValue</span> : Num&eacute;ro de la page courante de la recherche (habituellement : <span class="vertclair">{currentpage}</span> ).</li>
	<li><span class="keyword">displayedpagesValue</span> : Nombre de pages &agrave; afficher.</li>
	<li>Le tag &lt;<span class="keyword">pages</span>&gt; sera lu pour chaque pages &agrave; lister except&eacute; la page courante et la valeur <span class="vertclair">{n}</span> sera remplac&eacute;e par le num&eacute;ro de la page.</li>
	<li>Le tag optionnel &lt;<span class="keyword">currentpage</span>&gt; sera lu pour la page en cours. Si il n\'existe pas, le tag &lt;<span class="keyword">pages</span>&gt; sera utilis&eacute; &agrave; la place.</li>
	<li>Le tag optionnel &lt;<span class="keyword">start</span>&gt; sera lu pour la premi&egrave;re page.</li>
	<li>Le tag optionnel &lt;<span class="keyword">previous</span>&gt; sera lu pour la page pr&eacute;c&eacute;dente.</li>
	<li>Le tag optionnel &lt;<span class="keyword">next</span>&gt; sera lu pour la page suivante.</li>
	<li>Le tag optionnel &lt;<span class="keyword">end</span>&gt; sera lu pour la derni&egrave;re page.</li>
</ul>
</div>
</div>
</div>', 'TODO');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (111, 'polymod', NOW(), 'Syntaxe des tags', 'Tags syntax');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (112, 'polymod', NOW(), 'Variables et fonctions des objets', 'Objects variables and functions');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (113, 'polymod', NOW(), 'Tags de travail', 'Working tags');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (114, 'polymod', NOW(), '<div class="rowComment">
	<h1>Tags de travail :</h1>
	<div class="retrait">
		<h3>Afficher le contenu du tag si la condition est remplie :</h3>
			<div class="retrait">
			<span class="code">
				&lt;atm-if what=&quot;<span class="keyword">condition</span>&quot;&gt; ... &lt;/atm-if&gt;
			</span>
			<ul>
				<li><span class="keyword">condition</span> : Condition &agrave; remplir pour afficher le contenu du tag. L\'usage courant est de valider la pr&eacute;sence d\'une valeur non nulle. Cette condition peut aussi prendre toutes les formes valides d\'une condition PHP (voir : <a target="_blank" href="http://www.php.net/if" class="admin">Les structures de contr&ocirc;le en PHP</a>). La condition sera remplie si la valeur existe ou bien n\'est pas nulle ou bien n\'est pas &eacute;gale &agrave; faux (false).</li>
			</ul>
			</div>
		<h3>Boucler sur un ensemble d\'objets :</h3>
			<div class="retrait">
			<span class="code">&lt;atm-loop on=&quot;<span class="keyword">objets</span>&quot;&gt; ... &lt;/atm-loop&gt;</span>
			<ul>
				<li><span class="keyword">objets</span> : Collection d\'objets. Employ&eacute; pour traiter tous les objets d\'un ensemble d\'objets multiple (dit multi-objet).</li>
			</ul>
			Les valeurs suivantes seront remplac&eacute;es dans le tag :
			<ul>
				<li><span class="vertclair">{firstloop}</span> : Vrai si l\'objet en cours est le premier de la liste d\'objets.</li>
				<li><span class="vertclair">{lastloop}</span> : Vrai si l\'objet en cours est le dernier de la liste d\'objets.</li>
				<li><span class="vertclair">{loopcount}</span> : Num&eacute;ro de l\'objet en cours dans la liste d\'objets.</li>
				<li><span class="vertclair">{lastloop}</span> : Vrai si l\'objet en cours est le dernier de la liste d\'objets.</li>
				<li><span class="vertclair">{maxloops}</span> : Nombre d\'objets sur lesquels boucler.</li>
			</ul>
			</div>
		<h3>Ajouter un attribut au tag XHTML p&egrave;re (contenant ce tag) :</h3>
			<div class="retrait">
			<span class="code">
				&lt;atm-parameter attribute=&quot;<span class="keyword">attributeName</span>&quot; value=&quot;<span class="keyword">attributeValue</span>&quot; /&gt;
			</span>
			<ul>
				<li><span class="keyword">attributeName</span> : Nom de l\'attribut &agrave; ajouter.</li>
				<li><span class="keyword">attributeValue</span> : Valeur de l\'attribut &agrave; ajouter.</li>
			</ul>
			</div>
		<h3>Assigner une valeur &agrave; une variable :</h3>
			<div class="retrait">
			<span class="code">&lt;atm-setvar vartype=&quot;<span class="keyword">type</span>&quot; varname=&quot;<span class="keyword">name</span>&quot; value=&quot;<span class="keyword">varValue</span>&quot; /&gt;
			</span>
			<ul>
				<li><span class="keyword">type </span>: Type de la variable &agrave; assigner : <span class="vertclair">request</span>, <span class="vertclair">session</span> ou <span class="vertclair">var</span>.</li>
				<li><span class="keyword">name </span>: Nom de la variable &agrave; assigner. Attention, r&eacute;assigner une variable existante supprimera l\'ancienne valeur.</li>
				<li><span class="keyword">varValue</span> : valeur &agrave; assigner &agrave; la variable.</li>
			</ul>
			</div>
	</div>
</div>', 'TODO');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (115, 'polymod', NOW(), 'Bloc de donn�es', 'Datas block');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (116, 'polymod', NOW(), '<div class="rowComment">
	<h1>Bloc de donn&eacute;es du module :</h1>
	<div class="retrait">
	<span class="code">
		&lt;block module=&quot;%s&quot; id=&quot;<span class="keyword">blockID</span>&quot; language=&quot;<span class="keyword">languageCode</span>&quot;&gt; ... &lt;/block&gt;
	</span>
	<br/><br/>
	Ce tag permet l\'affichage de donn&eacute;es sp&eacute;cifiques &agrave; ce module. Il doit entourer tout ensemble de tags relatif &agrave; un traitement de donn&eacute;es du module.<br />
	<ul>
		<li><span class="keyword">blockID </span>: Identifiant unique du bloc de contenu dans la rang&eacute;e. Deux blocs de contenus d\'une m&ecirc;me rang&eacute;e ne doivent pas avoir d\'identifiants identiques.</li>
		<li><span class="keyword">languageCode </span>: (facultatif) Code du langage relatif &agrave; ce bloc de contenu parmi les codes suivants : <span class="vertclair">%s</span>. <br/>Si non pr�sent, la langue de la page sera utilis�e. Si non pr�sente, la langue par d�faut d\'Automne sera utilis�e.</li>
	</ul>
	</div>
</div>', 'TODO %s %s');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (117, 'polymod', NOW(), 'Libell� de l\'objet, correspond � sa valeur', 'Object label, same as object value');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (118, 'polymod', NOW(), 'Libell� du champ : \'%s\'', 'Field label : \'%s\'');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (119, 'polymod', NOW(), 'Identifiant du champ : \'%s\'', 'Field id : \'%s\'');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (120, 'polymod', NOW(), 'Valeur du champ', 'Field value');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (121, 'polymod', NOW(), 'Nom de l\'objet', 'Object name');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (122, 'polymod', NOW(), 'Variables de l\'objet', 'Object vars');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (123, 'polymod', NOW(), 'Fonctions de l\'objet', 'Object functions');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (124, 'polymod', NOW(), 'S�lection des param�tres de recherche de la rang�e \'%s\' du module \'%s\'', 'Parameters selection for row \'%s\' of module \'%s\'');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (125, 'polymod', NOW(), 'Pour la recherche ayant l\'identifiant \'%s\' dans cette rang�e', 'For search with \'%s\' ID in this row');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (126, 'polymod', NOW(), '[Erreur : la recherche ayant l\'identifiant \'%s\' dans la rang�e \'%s\' n\'est pas valide : Elle porte sur un objet inexistant.]', '[Error : search with \'%s\' ID in \'%s\' row is not valid : It relates to a non-existent object.]');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (127, 'polymod', NOW(), '[Erreur : la recherche ayant l\'identifiant \'%s\' dans la rang�e \'%s\' n\'est pas valide : Un de ses param�tre porte sur un champ inexistant.]', '[Error : search with \'%s\' ID in \'%s\' row is not valid : One of its parameter relates to a non-existent field.]');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (128, 'polymod', NOW(), 'Nombre de r�sultats par pages', 'Number of results per pages');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (129, 'polymod', NOW(), 'Croissant', 'Ascending');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (130, 'polymod', NOW(), 'D�croissant', 'Descending');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (131, 'polymod', NOW(), 'Ordre d\'affichage', 'Display order');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (132, 'polymod', NOW(), 'Par cr�ation d\'objets', 'By object creation');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (133, 'polymod', NOW(), '[Erreur : la recherche ayant l\'identifiant \'%s\' dans la rang�e \'%s\' n\'est pas valide : Le type de l\'un de ses param�tres est inconnu : \'%s\']', '[Error : search with \'%s\' ID in \'%s\' row is not valid : The type of the one of its parameters is unknown : \'%s\']');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (134, 'polymod', NOW(), 'Publi� � partir du', 'Published from');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (135, 'polymod', NOW(), 'Publi� jusqu\'au', 'Published to');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (136, 'polymod', NOW(), '[Erreur : la recherche ayant l\'identifiant \'%s\' dans la rang�e \'%s\' n\'est pas valide : Le type de l\'un de ses param�tres de tri est inconnu : \'%s\']', '[Error : search with \'%s\' ID in \'%s\' row is not valid : The type of the one of its sort parameters is unknown : \'%s\']');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (137, 'polymod', NOW(), 'Par date de d�but de publication', 'By publication date start');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (138, 'polymod', NOW(), 'Par date de fin de publication', 'By publication date end');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (139, 'polymod', NOW(), '<div class="rowComment">
	<h1>Variables g&eacute;n&eacute;rales :</h1>
	<div class="retrait">
	<h3>Variables relatives aux pages :</h3>
		<div class="retrait">
			Les variables relatives aux pages sont de la forme <span class="vertclair">{page:<span class="keyword">id</span>:<span class="keyword">type</span>}</span>:
			<ul>
				<li><span class="keyword">id </span>: Identifiant de la page &agrave; laquelle faire r&eacute;f&eacute;rence, peut-&ecirc;tre un identifiant num&eacute;rique d\'une page ou bien \'<span class="vertclair">self</span>\' pour faire r&eacute;f&eacute;rence &agrave; la page courante.</li>
				<li><span class="keyword">type</span> : type de donn&eacute;e souhait&eacute; pour la page parmi les suivant : <span class="vertclair">url </span>(adresse de la page), <span class="vertclair">printurl </span>(adresse de la page d\'impression), <span class="vertclair">id </span>(identifiant de la page), <span class="vertclair">title </span>(nom de la page).</li>
			</ul>
		</div>
	<h3>Variables relatives aux donn&eacute;es envoy&eacute;es (via une adresse ou un formulaire) :</h3>
		<div class="retrait">
		Ces variables correspondent &agrave; une variable provenant de la soumission d\'un formulaire ou bien d\'un param&egrave;tre du lien ayant amen&eacute; &agrave; la page en cours. <br />
		Elles sont de la forme <span class="vertclair">{request:<span class="keyword">type</span>:<span class="keyword">name</span>}</span> :
		<ul>
			<li><span class="keyword">type</span> : Correspond au type de variable attendu, parmi les suivant : <br />
			<ul>
				<li><span class="vertclair">int </span>: nombre entier,&nbsp;</li>
				<li><span class="vertclair">string </span>: cha&icirc;ne de caract&egrave;re,&nbsp;</li>
				<li><span class="vertclair">bool </span>: bool&eacute;en,&nbsp;</li>
				<li><span class="vertclair">array</span>: tableau de valeurs,&nbsp;</li>
				<li><span class="vertclair">email </span>: email valide,</li>
				<li><span class="vertclair">date </span>: date valide sans heure (retourne une date au format MySQL : YYYY-MM-DD),</li>
				<li><span class="vertclair">datetime </span>: date valide avec heure (retourne une date au format MySQL : YYYY-MM-DD HH:MM:SS).</li>
				<li><span class="vertclair">localisedDate</span> : date valide sans heure (retourne une date au format de votre langue actuelle : %s).</li>
			</ul>
			</li>
			<li><span class="keyword">name</span> : Correspond au nom de la variable souhait&eacute; (nom du param&egrave;tre dans l\'url ou bien nom du champ du formulaire).</li>
		</ul>
		</div>
	<h3>Variables de session :</h3>
		<div class="retrait">
		Ces variables sont disponible tout au long de la navigation du visiteur sur le site. <br />
		Elles sont de la forme <span class="vertclair">{session:<span class="keyword">type</span>:<span class="keyword">name</span>}</span> :
		<ul>
			<li><span class="keyword">type</span> : Correspond au type de variable attendu, parmi les suivant :
			<ul>
				<li><span class="vertclair">int </span>: nombre entier,&nbsp;</li>
				<li><span class="vertclair">string </span>: cha&icirc;ne de caract&egrave;re,&nbsp;</li>
				<li><span class="vertclair">bool </span>: bool&eacute;en,&nbsp;</li>
				<li><span class="vertclair">array</span>: tableau de valeurs,&nbsp;</li>
				<li><span class="vertclair">email </span>: email valide,</li>
				<li><span class="vertclair">date </span>: date valide sans heure (retourne une date au format MySQL : YYYY-MM-DD),</li>
				<li><span class="vertclair">datetime </span>: date valide avec heure (retourne une date au format MySQL : YYYY-MM-DD HH:MM:SS).</li>
				<li><span class="vertclair">localisedDate</span> : date valide sans heure (retourne une date au format de votre langue actuelle : %s).</li>
			</ul>
			</li>
			<li><span class="keyword">name</span> : Correspond au nom de la variable souhait&eacute; (nom de la variable de session).</li>
		</ul>
		</div>
	<h3>Variables&nbsp;:</h3>
		<div class="retrait">
		Ces variables correspondent &agrave; des variables PHP classiques. <br />
		Elles sont de la forme <span class="vertclair">{var:<span class="keyword">type</span>:<span class="keyword">name</span>}</span> :
		<ul>
			<li><span class="keyword">type</span> : Correspond au type de variable attendu, parmi les suivant :
			<ul>
				<li><span class="vertclair">int </span>: nombre entier,&nbsp;</li>
				<li><span class="vertclair">string </span>: cha&icirc;ne de caract&egrave;re,&nbsp;</li>
				<li><span class="vertclair">bool </span>: bool&eacute;en,&nbsp;</li>
				<li><span class="vertclair">array</span>: tableau de valeurs,&nbsp;</li>
				<li><span class="vertclair">email </span>: email valide</li>
				<li><span class="vertclair">date </span>: date valide sans heure (retourne une date au format MySQL : YYYY-MM-DD),</li>
				<li><span class="vertclair">datetime </span>: date valide avec heure (retourne une date au format MySQL : YYYY-MM-DD HH:MM:SS).</li>
				<li><span class="vertclair">localisedDate</span> : date valide sans heure (retourne une date au format de votre langue actuelle : %s).</li>
			</ul>
			</li>
			<li><span class="keyword">name</span> : Correspond au nom de la variable souhait&eacute; (nom de la variable PHP).</li>
		</ul>
		</div>
	</div>
</div>', 'TODO');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (140, 'polymod', NOW(), 'Variables g�n�rales', 'General variables');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (141, 'polymod', NOW(), 'Identifiant unique de l\'objet', 'Unique ID for object');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (142, 'polymod', NOW(), 'Libell� de l\'objet', 'Object label');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (143, 'polymod', NOW(), 'Nom de l\'objet : \'%s\'', 'Object name : \'%s\'');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (144, 'polymod', NOW(), 'Description de l\'objet : \'%s\'', 'Object description : \'%s\'');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (145, 'polymod', NOW(), 'Identifiant de type de l\'objet : \'%s\'', 'Object type ID : \'%s\'');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (146, 'polymod', NOW(), 'Identifiant du champ auquel l\'objet appartient (si il existe)', 'Identifier of the field to which the object belongs (if exists)');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (147, 'polymod', NOW(), 'Identifiant de ressource de l\'objet', 'Object resource ID');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (148, 'polymod', NOW(), 'Ensemble des objets de type \'%s\' associ�s � ce  champ. Cette valeur est usuellement utilis�e par un tag atm-loop', 'Objects of type \'%s\' associated to this field. This value is usually used by a tag atm-loop');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (149, 'polymod', NOW(), 'Nombre d\'objets de type \'%s\' associ�s � ce champ', 'Count of objects of the type \'%s\' associated to this field');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (150, 'polymod', NOW(), 'Date format&eacute;e. Remplacez \'format\' par la valeur correspondant au format accept&eacute; en PHP pour la <a href="http://www.php.net/date" class="admin" target="_blank">\'fonction date\'</a>. Pour une date employ&eacute;e dans un Fil RSS, utilisez la valeur \'<strong>rss</strong>\' pour sp&eacute;cifier le format.', 'Formatted date. Replace \'format\' by the format value accepted in PHP for the <a href="http://www.php.net/date" class="admin" target="_blank">\'date function\'</a>. For a date used in an RSS feed, use \'<strong>rss</strong>\' to specify the format.');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (151, 'polymod', NOW(), 'Adresse du lien (URL)', 'Link address (URL)');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (152, 'polymod', NOW(), 'Libell� du lien', 'Link label');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (153, 'polymod', NOW(), 'Cible du lien (_blank, _top, etc.)', 'Link target (_blank, _top, etc.)');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (154, 'polymod', NOW(), 'Type de lien (interne, externe, fichier, etc.)', 'Link type (internal, external, file, etc.)');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (155, 'polymod', NOW(), 'Code HTML complet du lien. Le titre du lien peut-�tre modifi� grace � un param�tre (facultatif)', 'Complete HTML code of the link. Link title can be changed with a parameter (optional)');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (156, 'polymod', NOW(), 'Identifiant de la cat�gorie racine de ce champ', 'Root category ID for this field');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (157, 'polymod', NOW(), 'Nombre de cat�gories associ�es � ce champ', 'Number of categories associated to this field');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (158, 'polymod', NOW(), 'Cat�gories associ�es � ce champ. Cette valeur est usuellement utilis�e par un tag atm-loop', 'Categories associated to this field. This value is usually used by a tag atm-loop');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (159, 'polymod', NOW(), 'Identifiant d\'une cat�gorie du champ (utilisable dans un tag atm-loop)', 'One category ID of the field (usable in an atm-loop tag)');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (160, 'polymod', NOW(), 'Libell� d\'une cat�gorie du champ (utilisable dans un tag atm-loop)', 'One category label of the field (usable in an atm-loop tag)');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (161, 'polymod', NOW(), 'Identifiant de la cat�gorie du champ', 'Id of the field category');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (162, 'polymod', NOW(), '<strong>Liste de tous les objets d\'un type donn&eacute; :</strong><br /><br /><span class="code">&lt;select ...&gt;&lt;atm-function function=&quot;selectOptions&quot; object=&quot;%s&quot; selected=&quot;<span class="keyword">selectedID</span>&quot;&gt;&lt;/atm-function&gt;&lt;/select&gt;</span><br />Cette fonction permet d\'afficher une liste class&eacute;e par ordre alphab&eacute;tique de tags &lt;option&gt; contenant tous les objets du m&ecirc;me type que l\'objet pass&eacute; en param&egrave;tre. Elle est usuellement employ&eacute;e &agrave; l\'int&eacute;rieur d\'un tag &lt;select&gt;.<br /><ul><li><span class="keyword">selectedID : </span>Identifiant de l\'objet &agrave; selectionner dans la liste</li></ul><br />', 'TODO');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (163, 'polymod', NOW(), '<strong>Arborescence de cat&eacute;gories : </strong><br />
<br />
<span class="code">&lt;atm-function function=&quot;categoriesTree&quot; object=&quot;%s&quot; root=&quot;<span class="keyword">rootID</span>&quot; maxlevel=&quot;<span class="keyword">maxLevel</span>&quot; selected=&quot;<span class="keyword">selectedID</span>&quot;&gt;<br />
&nbsp;&nbsp;&nbsp; <span class="keyword">&lt;item&gt;</span>&lt;li class=&quot;<span class="vertclair">{lvl}</span>&quot;&gt; ... <span class="vertclair">{id}</span> ... <span class="vertclair">{label}</span> ... <span class="vertclair">{sublevel}</span> ... &lt;/li&gt;<span class="keyword">&lt;/item&gt;</span><br />
&nbsp;&nbsp;&nbsp; <span class="keyword">&lt;itemselected&gt;</span>&lt;li class=&quot;<span class="vertclair">{lvl}</span>&quot;&gt; ... <span class="vertclair">{id}</span> ... <span class="vertclair">{label}</span> ... <span class="vertclair">{sublevel}</span> ... &lt;/li&gt;<span class="keyword">&lt;/itemselected&gt;</span><br />
&nbsp;&nbsp;&nbsp; <span class="keyword">&lt;template&gt;</span>&lt;ul&gt;<span class="vertclair">{sublevel}</span>&lt;/ul&gt;<span class="keyword">&lt;/template&gt;</span><br />
&lt;/atm-function&gt;<strong><br />
</strong></span>
<p>Cette Fonction permet d\'afficher une arborescence de cat&eacute;gories.</p>
<ul> <strong>	</strong>
	<li><span class="keyword">rootID </span>: L\'identifiant de la cat&eacute;gorie devant servir de racine &agrave; l\'arborescence.</li>
	<li><span class="keyword">maxLevel </span>: Nombre de niveaux maximum &agrave; afficher pour l\'arborescence (facultatif).</li>
	<li><span class="keyword">selectedID </span>: Cat&eacute;gorie actuellement s&eacute;lectionn&eacute;e (facultatif).</li>
	<li><span class="keyword">usedcategories </span>: Bool&eacute;en <span class="vertclair">true, false</span>, affiche uniquement les cat&eacute;gories utilis&eacute;es (facultatif, d&eacute;faut : true).</li>
	<li>Le tag &lt;<span class="keyword">item</span>&gt; sera lu pour chaque cat&eacute;gorie &agrave; lister. La valeur <span style="font-weight: bold;"><span class="vertclair">{id}</span> </span>sera remplac&eacute;e par l\'identifiant de la cat&eacute;gorie en cours, la valeur <span class="vertclair">{label}</span> par son libell&eacute;. La valeur <span class="vertclair">{lvl}</span> sera remplac&eacute;e par le num&eacute;ro du niveau en cours dans l\'arborescence et la valeur <span class="vertclair">{sublevel}</span> par le niveau suivant dans l\'arborescence.</li>
	<li>Le tag &lt;<span class="keyword">template</span>&gt; sera lu au d&eacute;but de chaque niveau d\'arborescence. La valeur <span class="vertclair">{sublevel}</span> sera remplac&eacute;e par le contenu du niveau d\'arborescence en cours.</li>
	<li>Le tag &lt;<span class="keyword">itemselected</span>&gt; sera lu pour la cat&eacute;gorie actuellement selectionn&eacute;e (facultatif).</li>
</ul>', 'TODO');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (164, 'polymod', NOW(), '<strong>Hi&eacute;rarchie - Historique de cat&eacute;gories :</strong><br />
<br />
<span class="code"> &lt;atm-function function=&quot;categoryLineage&quot; object=&quot;%s&quot; category=&quot;<span class="keyword">categoryID</span>&quot; root=&quot;<span class="keyword">rootCatID</span>&quot;&gt;<br />
&nbsp;&nbsp;&nbsp; <span class="keyword">&lt;ancestor&gt;</span> ... <span class="vertclair">{id}</span> ... <span class="vertclair">{label}</span> ... <span class="keyword">&lt;/ancestor&gt;</span><br />
&nbsp;&nbsp;&nbsp; <span class="keyword">&lt;self&gt;</span> ... <span class="vertclair">{id}</span> ... <span class="vertclair">{label}</span> ... <span class="keyword">&lt;/self&gt;</span><br />
&lt;/atm-function&gt;</span><strong><br />
</strong>Cette fonction permet d\'afficher la hi&eacute;rarchie parente (historique) d\'une cat&eacute;gorie donn&eacute;e.
<ul>
    <li><strong><span class="keyword">categoryID </span>: </strong>L\'identifiant de la cat&eacute;gorie dont on souhaite afficher la hi&eacute;rarchie.</li>
    <li><strong><span class="keyword">rootCatID </span>: </strong>L\'identifiant de la cat&eacute;gorie � partir de laquelle on souhaite afficher la hi&eacute;rarchie (facultatif si "cat�gorie de plus haut niveau" s�lectionn�e, obligatoire dans le cas contraire).</li>
    <li>Le tag <strong>&lt;<span class="keyword">ancestor</span>&gt;</strong> sera lu pour chaque anc&egrave;tre de la cat&eacute;gorie trouv&eacute;. La valeur <span class="vertclair">{id}</span> sera remplac&eacute; par l\'identifiant de la cat&eacute;gorie anc&egrave;tre, la valeur <span class="vertclair">{label}</span> par son libell&eacute;.</li>
    <li>Le tag optionel <strong>&lt;<span class="keyword">self</span>&gt;</strong> sera lu pour la cat&eacute;gorie dont on affiche la hierarchie (si le tag n\'existe pas, le tag &lt;<span class="keyword">ancestor</span>&gt; sera employ&eacute;). La valeur <span class="vertclair">{id}</span> sera remplac&eacute; par l\'identifiant de la cat&eacute;gorie&nbsp; dont on affiche la hierarchie, la valeur <span class="vertclair">{label}</span> par son libell&eacute;.</li>
</ul>', 'TODO');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (165, 'polymod', NOW(), '<strong>Liste de toutes les cat&eacute;gories d\'un champ donn&eacute; :</strong><br />
<br />
<span class="code">&lt;select ...&gt;&lt;atm-function function=&quot;selectOptions&quot; object=&quot;%s&quot; selected=&quot;<span class="keyword">selectedID</span>&quot;&gt;&lt;/atm-function&gt;&lt;/select&gt;</span><br />
Cette fonction permet d\'afficher une liste class&eacute;e par ordre alphab&eacute;tique de tags &lt;option&gt; contenant toutes les cat&eacute;gories et sous cat&eacute;gories d\'un champ donn&eacute;. Elle est usuellement employ&eacute;e &agrave; l\'int&eacute;rieur d\'un tag &lt;select&gt;.
<ul>
	<li><span class="keyword">selectedID </span><strong>: </strong>Identifiant de la cat&eacute;gorie &agrave; selectionner dans la liste (facultatif)</li>
	<li><span class="keyword">usedcategories </span>: Bool&eacute;en <span class="vertclair">true, false</span>, affiche uniquement les cat&eacute;gories utilis&eacute;es (facultatif, d&eacute;faut : true).</li>
	<li><span class="keyword">editableonly </span>: Bool&eacute;en <span class="vertclair">true, false</span>, arffiche uniquement les cat&eacute;gories &eacute;ditables (facultatif, d&eacute;faut : false).</li>
	<li><span class="keyword">root </span>: L\'identifiant de la cat&eacute;gorie &agrave;&agrave; employer comme racine.</li>
</ul>', 'TODO');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (166, 'polymod', NOW(), 'Cat�gories', 'Categories');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (167, 'polymod', NOW(), 'Permet de cat�goriser les objets et de g�rer leurs droits d\'acc�s', 'Allows you to categorize objects and to manage their access rights');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (168, 'polymod', NOW(), 'Cat�gories multiples', 'Multiples categories');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (169, 'polymod', NOW(), 'Cat�gorie de plus haut niveau', 'Top level category');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (170, 'polymod', NOW(), 'Date', 'Date');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (171, 'polymod', NOW(), 'Champ contenant une date au format de la langue courante', 'Field containing a date with the current language format');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (172, 'polymod', NOW(), 'Si le champ est vide, enregistrer la date du jour', 'If the field is empty, record the current date');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (173, 'polymod', NOW(), 'Avec gestion des Heures - minutes - secondes', 'With management of Hours - minutes - seconds');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (174, 'polymod', NOW(), 'hh:mm:ss', 'hh:mm:ss');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (175, 'polymod', NOW(), 'Lien', 'Link field');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (176, 'polymod', NOW(), 'Champ contenant un lien vers un site externe, une page ou un fichier.', 'Field containing a link to an external site, a page or a file.');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (177, 'polymod', NOW(), 'Nombre entier', 'Integer number');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (178, 'polymod', NOW(), 'Nombre entier de 11 chiffres maximum', 'Integer number containing 11 digits maximum');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (179, 'polymod', NOW(), 'Peut-�tre nul', 'Can be null');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (180, 'polymod', NOW(), 'Peut-�tre n�gatif', 'Can be negative');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (181, 'polymod', NOW(), 'Champ texte', 'Text field');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (182, 'polymod', NOW(), 'Champ de texte long, avec ou sans HTML', 'Long text field, with or without HTML');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (183, 'polymod', NOW(), 'HTML autoris�', 'HTML allowed');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (184, 'polymod', NOW(), 'Type de barre d\'outil pour l\'�diteur de texte (wysiwyg)', 'Toolbar type for the text editor (wysiwyg)');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (185, 'polymod', NOW(), 'Cha�ne de caract�res', 'Characters string');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (186, 'polymod', NOW(), 'Cha�ne contenant 255 caract�res maximum sans HTML. Peut-�tre un email.', 'String containing 255 characters maximum without HTML. Can be an email');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (187, 'polymod', NOW(), 'Nombre maximum de charact�res :<br /><small>(255 maximum)</small>', 'Max count of caracters :<br /><small>(255 max)</small>');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (188, 'polymod', NOW(), 'Objet inconnu', 'Unknown object');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (189, 'polymod', NOW(), 'Cet objet n\'est pas d�fini', 'This object is not defined');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (190, 'polymod', NOW(), 'Multiples objets \'%s\'', 'Multiple objects \'%s\'');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (191, 'polymod', NOW(), 'Objet compos� de multiples objets \'%s\'', 'Object composed with Multiple objects \'%s\'');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (192, 'polymod', NOW(), 'Ces objets peuvent �tre �dit�s ?', 'These objects can be edited?');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (193, 'polymod', NOW(), 'Cr�ation d\'un objet \'%s\' � associer', 'Create \'%s\' object to associate');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (194, 'polymod', NOW(), 'Edition d\'un objet \'%s\'', 'Edit \'%s\' object');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (195, 'polymod', NOW(), 'Objets \'%s\' associ�s', 'Associated \'%s\' objects');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (196, 'polymod', NOW(), 'Associer un objet \'%s\' existant', 'Associate an existing object \'%s\'');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (197, 'polymod', NOW(), 'Forcer le chargement des sous objets ?', 'Force subobjects loading?');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (198, 'polymod', NOW(), 'Attention, ce param�tre doit rester d�sactiv� sauf si des donn�es sont manquantes lors de certains chargements. Activer ce param�tre peut entra�ner une perte de performance tr�s importante.', 'Attention, this parameter must remain inactived except if data are missing during some loadings. Activate this parameter can involve a very significant loss of performance.');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (199, 'polymod', NOW(), 'Uniquement les objets r�pondant � ces param�tres', 'Only objects with these parameters');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (200, 'polymod', NOW(), 'Image', 'Image');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (201, 'polymod', NOW(), 'Champ contenant une image avec ou sans image zoom', 'Field with an image, with or without zoom image');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (202, 'polymod', NOW(), 'Largeur maximum de la vignette en pixels', 'Maximum width of the thumbnail in pixels');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (203, 'polymod', NOW(), 'Date de d�but de publication format�e. Remplacez \'format\' par la valeur correspondant au format accept� en PHP pour la <a href="http://www.php.net/date" class="admin" target="_blank">\'fonction date\'</a>', 'Formatted date. Replace \'format\' by the format value accepted in PHP for the <a href="http://www.php.net/date" class="admin" target="_blank">\'date function\'</a>');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (204, 'polymod', NOW(), 'Date de fin de publication format�e (si elle existe). Remplacez \'format\' par la valeur correspondant au format accept� en PHP pour la <a href="http://www.php.net/date" class="admin" target="_blank">\'fonction date\'</a>', 'Formatted date. Replace \'format\' by the format value accepted in PHP for the <a href="http://www.php.net/date" class="admin" target="_blank">\'date function\'</a>');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (205, 'polymod', NOW(), 'Utiliser l\'image originale comme image zoom', 'Use original image as zoom');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (206, 'polymod', NOW(), 'Vignette', 'Thumbnail');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (207, 'polymod', NOW(), 'Image zoom', 'Zoom image');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (208, 'polymod', NOW(), '(Sera redimensionn�e � %s pixels de large)', '(Will be resized to %s pixels width)');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (209, 'polymod', NOW(), 'Utiliser une image zoom distincte', 'Use distinct zoom image');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (210, 'polymod', NOW(), '(Si vous n\'utilisez pas d\'image zoom distincte)', '(If you do no uses a distinct image zoom)');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (211, 'polymod', NOW(), 'Conserver l\'image originale comme image zoom', 'Keep original image as an image zoom');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (212, 'polymod', NOW(), '(Si la vignette d�passe cette largeur elle sera redimensionn�e)', '(If the thumbnail exceeds this width it will be resized)');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (213, 'polymod', NOW(), 'Cochez la case pour effacer l\'image', 'Check the box to delete image');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (214, 'polymod', NOW(), 'Image actuelle', 'Current image');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (215, 'polymod', NOW(), 'Code HTML de l\'image. Le titre du lien peut-�tre modifi� grace � un param�tre (facultatif)', 'Image HTML code. Link title can be changed with a parameter (optional)');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (216, 'polymod', NOW(), 'Libell� de l\'image', 'Image label');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (217, 'polymod', NOW(), 'Nom du fichier de l\'image', 'Image file name');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (218, 'polymod', NOW(), 'Nom du fichier de l\'image zoom', 'Image file name zoom');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (219, 'polymod', NOW(), 'Chemin du repertoire de l\'image et de l\'image zoom', 'Path to the image and image zoom');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (220, 'polymod', NOW(), 'Largeur de l\'image en pixels', 'Image width in pixels');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (221, 'polymod', NOW(), 'Hauteur de l\'image en pixels', 'Image height in pixels');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (222, 'polymod', NOW(), 'Largeur de l\'image zoom en pixels', 'Image zoom width in pixels');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (223, 'polymod', NOW(), 'Hauteur de l\'image zoom en pixels', 'Image zoom height in pixels');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (224, 'polymod', NOW(), 'Poids de l\'image en Mo', 'Image file size in MB');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (225, 'polymod', NOW(), 'Poids de l\'image zoom en Mo', 'Image zoom file size in MB');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (226, 'polymod', NOW(), 'La valeur du champ doit-�tre un email valide', 'Field value must be a valid email');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (227, 'polymod', NOW(), 'Fichier', 'File');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (228, 'polymod', NOW(), 'Champ contenant un fichier avec ou sans vignette', 'Field with a file, with or without thumbnail');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (229, 'polymod', NOW(), 'Largeur maximum de la vignette en pixels', 'Maximum width of the thumbnail in pixels');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (230, 'polymod', NOW(), 'Utiliser une vignette pour le fichier', 'Use thumbnail for file');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (231, 'polymod', NOW(), '<!--Ic�nes de type pour les fichiers-->', '<!--Type icons for files-->');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (232, 'polymod', NOW(), 'Fichier source', 'Source file');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (233, 'polymod', NOW(), 'ou Fichier FTP', 'or FTP file');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (234, 'polymod', NOW(), 'Chemin du repertoire FTP � utiliser', 'Path for FTP directory to use');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (235, 'polymod', NOW(), '(Laissez vide pour emp�cher l\'utilisation d\'un r�pertoire FTP comme source pour vos documents)', '(Leave empty to prevent the use of a FTP directory as a source for your documents');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (236, 'polymod', NOW(), '(max : %s)', '(max : %s)');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (237, 'polymod', NOW(), '(R�pertoire FTP : %s)', '(FTP directory : %s)');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (238, 'polymod', NOW(), 'Chemin vers l\'ic�ne du fichier (si elle existe)', 'Path to the file icon (if exists)');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (239, 'polymod', NOW(), 'Type de fichier (extension)', 'File type (extension)');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (240, 'polymod', NOW(), 'Cochez la case pour effacer le fichier', 'Check the box to delete file');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (241, 'polymod', NOW(), 'Fichier actuel', 'Current file');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (242, 'polymod', NOW(), 'Code HTML du fichier', 'File HTML code');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (243, 'polymod', NOW(), 'Libell� du fichier', 'File label');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (244, 'polymod', NOW(), 'Nom du fichier', 'File name');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (245, 'polymod', NOW(), 'Nom du fichier de la vignette', 'Thumbnail file name');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (246, 'polymod', NOW(), 'Chemin du repertoire du fichier et de la vignette', 'Path to the file and thumbnail');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (247, 'polymod', NOW(), 'Largeur de la vignette en pixels', 'Thumbnail width in pixels');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (248, 'polymod', NOW(), 'Hauteur de a vignette en pixels', 'Thumbnail height in pixels');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (249, 'polymod', NOW(), 'Autoriser l\'utilisation de fichiers du repertoire FTP', 'Allow usage of FTP files');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (250, 'polymod', NOW(), '(Permet, pour les gros fichiers, d\'utiliser un r�pertoire d\'automne pour d�poser des fichiers via FTP)', '(Allow, for big files, to use an Automne directory to store files with FTP)');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (251, 'polymod', NOW(), 'Poids du fichier en Mo', 'File Size in MB');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (252, 'polymod', NOW(), 'Renvoi vrai si l\'objet contient un lien valide.', 'Return true if object contain a valid link');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (253, 'polymod', NOW(), 'Largeur maximum de l\'image en pixels', 'Image maximum width in pixels');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (254, 'polymod', NOW(), 'Adresse de pr�visualisation', 'Preview  address');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (255, 'polymod', NOW(), 'Valeur HTML du texte (retours chariots convertis pour le texte seul)', 'HTML value of the text (Line breaks converted for plain-text)');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (256, 'polymod', NOW(), 'Fichier associ� � la cat�gorie du champ', 'File associated to the field category');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (257, 'polymod', NOW(), 'Fichier d\'une cat�gorie du champ (utilisable dans un tag atm-loop)', 'One category File of the field (usable in an atm-loop tag)');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (258, 'polymod', NOW(), 'Sans %s', 'Without %s');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (259, 'polymod', NOW(), 'Nombre d\'utilisateurs/groupes associ�es � ce champ', 'Number of users/groups associated to this field');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (260, 'polymod', NOW(), 'Utilisateurs/Groupes associ�s � ce champ. Cette valeur est usuellement utilis�e par un tag atm-loop', 'Users/Groups associated to this field. This value is usually used by a tag atm-loop');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (261, 'polymod', NOW(), 'Identifiant d\'un utilisateur/groupe du champ (utilisable dans un tag atm-loop)', 'One user/group ID of the field (usable in an atm-loop tag)');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (262, 'polymod', NOW(), 'Nom et pr�nom d\'un utilisateur ou nom d\'un groupe du champ (utilisable dans un tag atm-loop)', 'Lastname and firstname of one user or name of one group of the field (usable in an atm-loop tag)');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (263, 'polymod', NOW(), 'Identifiant de l\'utilisateur ou du groupe', 'Id of the user or group');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (264, 'polymod', NOW(), 'Utilisateur/Groupe', 'User/Group');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (265, 'polymod', NOW(), 'Permet d\'associer un ou plusieurs utilisateurs ou groupe(s) d\'utilisateurs', 'Allows you to associate one or more users or group(s) of users');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (266, 'polymod', NOW(), 'Multiples utilisateurs ou groupes', 'Multiples users or groups');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (267, 'polymod', NOW(), 'Utiliser des groupes', 'Use groups');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (268, 'polymod', NOW(), 'La valeur est l\'utilisateur actuel', 'Value is the current user');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (269, 'polymod', NOW(), 'Ce param�tre exclu les autres', 'This parameter exclude the others');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (270, 'polymod', NOW(), 'Si ce param�tre est s�lectionn�, vous pourrez utiliser des groupes d\'utilisateurs. Sinon, ce sera des utilisateurs', 'If this parameter is selected, you will use groups of users. Otherwise, it will be users.');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (271, 'polymod', NOW(), '<strong>Liste de tous les utilisateurs/groupes du champ :<br />
</strong><br />
<span class="code"> &lt;select&gt;<strong>&lt;</strong>atm-function function=&quot;selectOptions&quot; object=&quot;%s&quot; selected=&quot;<span class="keyword">selectedID</span><strong>&quot;&gt;&lt;/</strong>atm-function<strong>&gt;</strong>&lt;/select&gt;</span><br />
Cette fonction permet d\'afficher une liste class&eacute;e par ordre alphab&eacute;tique de tags &lt;option&gt; contenant tous les utilisateurs/groupes du champ donn&eacute; en param&egrave;tre. Elle est usuellement employ&eacute;e &agrave; l\'int&eacute;rieur d\'un tag &lt;select&gt;.<br />
<ul>
	<li><span class="keyword">selectedID </span><strong>: </strong>Identifiant de l\'utilisateur/groupe &agrave; selectionner dans la liste</li>
</ul>', 'TODO');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (272, 'polymod', NOW(), 'Nom et pr�nom de l\'utilisateur ou nom du groupe', 'Lastname and firstname of the user or name of the group');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (273, 'polymod', NOW(), 'Email d\'un utilisateur du champ (utilisable dans un tag atm-loop)', 'Email of one user of the field (usable in an atm-loop tag)');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (274, 'polymod', NOW(), 'Email de l\'utilisateur', 'Email of the user');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (275, 'polymod', NOW(), 'Modules WYSIWYG associ�s', 'Associated WYSIWYG Plugins');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (276, 'polymod', NOW(), 'Propri�t�s de l\'objet', 'Object properties');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (277, 'polymod', NOW(), 'Cr�ation / modification d\'un module WYSIWYG pour l\'objet \'%s\'', 'Create / Edit a WYSIWYG plugin for object \'%s\'');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (278, 'polymod', NOW(), 'Syntaxe de la d�finition du module WYSIWYG pour l\'objet \'%s\'', 'Syntax definition for the WYSIWYG plugin for object \'%s\'');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (279, 'polymod', NOW(), 'Confirmez-vous la suppression du module WYSIWYG \'%s\' ? Attention cette suppression est d�finitive, elle n\'est pas soumise � validation et elle impactera tous les objets ainsi que tous les fichiers correspondant � ce module !', 'Do you confirm the deletion of the WYSIWYG plugin \'%s\'? Attention this deletion is final, it is not subjected to validation and it will impact all the objects like all the files corresponding to this plugin!');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (280, 'polymod', NOW(), '[Erreur : Aucun module WYSIWYG disponible ...]', '[Error : No WYSIWYG plugin available ...]');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (281, 'polymod', NOW(), 'Type', 'Type');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (282, 'polymod', NOW(), 'Editeur de texte', 'Text editor');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (283, 'polymod', NOW(), 'El�ment actuellement s�lectionn�', 'Item currently selected');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (284, 'polymod', NOW(), 'S�lectionner', 'Select');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (285, 'polymod', NOW(), 'D�selectionner', 'Deselect');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (286, 'polymod', NOW(), '[Erreur : Ce module n�cessite d\'avoir s�lectionn� un texte. Merci de s�lectionner le texte souhait� ...]', '[Error : this plugin must have a selected text. Please select a text first ...]');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (287, 'polymod', NOW(), 'Modules WYSIWYG', 'WYSIWYG plugins');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (288, 'polymod', NOW(), '<div class="rowComment">
<h1>Bloc de donn&eacute;es d\'un module WYSIWYG :</h1>
<span class="code"> &lt;atm-plugin language=&quot;<span class="keyword">languageCode</span>&quot;&gt;<br />
&nbsp;&nbsp;&nbsp; <span class="keyword">&lt;atm-plugin-valid&gt;</span><br />
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; ...<br />
&nbsp;&nbsp;&nbsp; <span class="keyword">&lt;/atm-plugin-valid&gt;</span><br />
&nbsp;&nbsp;&nbsp; <span class="keyword">&lt;atm-plugin-invalid&gt;</span><br />
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; ...<br />
&nbsp;&nbsp;&nbsp; <span class="keyword">&lt;/atm-plugin-invalid&gt;</span><br />
&lt;/atm-plugin&gt;</span><br />
<br />
Ce tag permet l\'affichage de donn&eacute;es sp&eacute;cifiques &agrave; un objet dans l\'&eacute;diteur de texte visuel (WYSIWYG).<br />
Le <span class="keyword">tag atm-plugin-valid</span> sera lu si l\'objet s&eacute;lectionn&eacute; est valide (non supprim&eacute;, valid&eacute; et en cours de publication).<br />
Le tag <span class="keyword">atm-plugin-invalid </span>(facultatif) sera lu si l\'objet s&eacute;lectionn&eacute; est invalide (supprim&eacute;, non valid&eacute; ou dont les dates de publications sont d&eacute;pass&eacute;es ou si l\'utilisateur n\'a pas les droits de consultation de cet objet).<br />
<ul>
	<li><span class="keyword">languageCode </span>: Code du langage relatif au contenu parmi les codes suivants : <span class="vertclair">%s</span>.</li>
	<li><span class="keyword">{plugin:selection}</span> : Sera replac&eacute; par la valeur textuelle s&eacute;lectionn&eacute;e dans l\'&eacute;diteur (facultatif).</li>
</ul>
</div>', 'TODO');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (289, 'polymod', NOW(), '<strong>Charge une cat&eacute;gorie donn&eacute;e :<br />
</strong><br />
<span class="code"> &lt;atm-function function=&quot;category&quot; object=&quot;%s&quot; category=&quot;<span class="keyword">categoryID</span>&quot;&gt;<br />
&nbsp;&nbsp;&nbsp; ... <span class="vertclair">{id}</span> ... <span class="vertclair">{label}</span> ... <br />
&lt;/atm-function&gt;</span><strong><br />
</strong>Cette fonction permet d\'afficher le contenu d\'une cat&eacute;gorie donn&eacute;e.<br />
<ul>
	<li><span class="keyword">categoryID </span><strong>: </strong>L\'identifiant de la cat&eacute;gorie dont on souhaite afficher la hi&eacute;rarchie.</li>
	<li>La valeur <span class="vertclair">{id}</span> sera remplac&eacute; par l\'identifiant de la cat&eacute;gorie anc&egrave;tre, la valeur <span class="vertclair">{label}</span> par son libell&eacute;.</li>
</ul>', 'TODO');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (290, 'polymod', NOW(), 'Fils RSS associ�s', 'Associated RSS Feeds');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (291, 'polymod', NOW(), 'Confirmez-vous la suppression du fil RSS \'%s\' ? Attention cette suppression est d�finitive, elle n\'est pas soumise � validation et elle impactera tous les objets ainsi que tous les fichiers correspondant � ce module !', 'Do you confirm the deletion of the RSS Feed \'%s\'? Attention this deletion is final, it is not subjected to validation and it will impact all the objects like all the files corresponding to this plugin!');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (292, 'polymod', NOW(), 'Cr�ation / modification d\'un fil RSS pour l\'objet \'%s\'', 'Create / Edit an RSS feed for object \'%s\'');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (293, 'polymod', NOW(), 'Syntaxe de la d�finition du fil RSS pour l\'objet \'%s\'', 'Syntax definition for the RSS feed for object \'%s\'');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (294, 'polymod', NOW(), 'Fils RSS', 'RSS Feeds');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (295, 'polymod', NOW(), '<strong>Bloc de donn&eacute;es d\'un module WYSIWYG :<br /><br />&lt;atm-plugin language=&quot;</strong>languageCode<strong>&quot;&gt;<br />&nbsp;&nbsp;&nbsp; &lt;atm-plugin-valid&gt;<br />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; ...<br />&nbsp;&nbsp;&nbsp; &lt;/atm-plugin-valid&gt;<br />&nbsp;&nbsp;&nbsp; &lt;atm-plugin-invalid&gt;<br />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; ...<br />&nbsp;&nbsp;&nbsp; &lt;/atm-plugin-invalid&gt;<br />&lt;/atm-plugin&gt;</strong><br /><br />Ce tag permet l\'affichage de donn&eacute;es sp&eacute;cifiques &agrave; un objet dans l\'&eacute;diteur de texte visuel (WYSIWYG).<br />Le tag <strong>atm-plugin-valid</strong> sera lu si l\'objet s&eacute;lectionn&eacute; est valide (non supprim&eacute;, valid&eacute; et en cours de publication).<br />Le tag <strong>atm-plugin-invalid</strong> (facultatif) sera lu si l\'objet s&eacute;lectionn&eacute; est invalide (supprim&eacute;, non valid&eacute; ou dont les dates de publications sont d&eacute;pass&eacute;es ou si l\'utilisateur n\'a pas les droits de consultation de cet objet).<br /><ul><li><strong>languageCode</strong> : Code du langage relatif au contenu parmi les codes suivants : <strong>%s</strong>.</li><li><strong>{plugin:selection}</strong> : Sera replac&eacute; par la valeur s&eacute;lectionn&eacute;e dans le Wysiwyg (facultatif).</li></ul>', 'TODO');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (296, 'polymod', NOW(), 'Adresse vers le site du fil', 'Address to the feed website');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (297, 'polymod', NOW(), 'Ce lien sera employ� dans le fil RSS et permettra d\'aller au site source du fil. Si ce champ n\'est pas rempli, l\'adresse \'%s\' sera utilis�e.', 'This link will be used in the RSS feed and will allow to go to source website of the feed. If this field is not filled, the address \'%s\' will be used.');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (298, 'polymod', NOW(), 'Auteur', 'Author');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (299, 'polymod', NOW(), 'Email de l\'auteur', 'Author email');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (300, 'polymod', NOW(), 'Copyright', 'Copyright');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (301, 'polymod', NOW(), 'Cat�gories', 'Categories');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (302, 'polymod', NOW(), 'Liste de termes s�par�s par des virgules permettant de cat�goriser le fil RSS', 'Terms list separated by commas allowing to categorize the RSS feed.');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (303, 'polymod', NOW(), 'Interval de mise � jour', 'Update interval');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (304, 'polymod', NOW(), 'Permet aux lecteurs de fils RSS d\'avoir une valeur indicative concernant la fr�quence de mise � jour du fil. Par d�faut : une fois par jour, minimum : 2 fois par heures.', 'Give to the feed reader an indicative value of the update frequency of the feed. By default : once a day, minimum : twice an hours');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (305, 'polymod', NOW(), 'Fr�quence dans cet interval', 'Frequency in this interval');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (306, 'polymod', NOW(), 'Horaire', 'Hourly');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (307, 'polymod', NOW(), 'Quotidienne', 'Daily');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (308, 'polymod', NOW(), 'Hebdomadaire', 'Weekly');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (309, 'polymod', NOW(), 'Mensuelle', 'Monthly');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (310, 'polymod', NOW(), 'Annuelle', 'Yearly');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (311, 'polymod', NOW(), '<strong>Permet de faire un lien vers l\'un des fil RSS de l\'objet&nbsp; :<br />
</strong><br />
<span class="code">&lt;atm-function function=&quot;rss&quot; object=&quot;%s&quot; selected=&quot;<span class="keyword">rssId</span>&quot; attributeName=&quot;<span class="keyword">attributeValue</span>&quot;&gt;<br />
&nbsp;&nbsp;&nbsp; &lt;a href=&quot;<span class="vertclair">{url}</span>&quot; title=&quot;<span class="vertclair">{description}</span>&quot;&gt;<span class="vertclair">{label}</span>&lt;/a&gt;<br />
&lt;/atm-function&gt;</span><br />
Cette fonction permet d\'obtenir les informations concernant l\'un des fil RSS de l\'objet. Elle est usuellement utilis&eacute;e pour r&eacute;aliser un lien d\'abonnement vers ce fil RSS.<br />
<ul>
	<li><span class="keyword">rssId </span><strong>: </strong>Identifiant du fil RSS &agrave; selectionner parmis les suivants : %s</li>
	<li>L\'attribut <span class="keyword">attributeName </span>et sa valeur <span class="keyword">attributeValue </span>sont facultatifs. Ils permettent d\'ajouter un attribut et sa valeur &agrave; l\'adresse du fil RSS g&eacute;n&eacute;r&eacute; par la fonction. Vous pouvez mettre autant d\'attributs suppl&eacute;mentaires de cette fa&ccedil;on.</li>
	<li><span class="vertclair">{url}</span> sera remplac&eacute; par l\'adresse du fil RSS.</li>
	<li><span class="vertclair">{label}</span> sera remplac&eacute; par le libell&eacute; du fil RSS.</li>
	<li><span class="vertclair">{description}</span> sera remplac&eacute; par la description du fil RSS.</li>
</ul>', 'TODO');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (312, 'polymod', NOW(), '<strong>Permet de charger un objet par son identifiant&nbsp; :<br />
<br />
</strong><span class="code">&lt;atm-function function=&quot;loadObject&quot; object=&quot;%s&quot; value=&quot;<span class="keyword">objectId</span>&quot;&gt;&lt;/atm-function&gt;</span><br />
Cette fonction permet de charger depuis la base de donn&eacute;e l\'objet correspondant &agrave; l\'identifiant fourni en param&egrave;tre. L\'objet ainsi charg&eacute; devient accessible m&ecirc;me en dehors d\'une recherche.<br />
<ul>
	<li><span class="keyword">objectId </span><strong>: </strong>Identifiant unique de l\'objet &agrave; charger.</li>
</ul>', 'TODO');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (313, 'polymod', NOW(), '<div class="rowComment">
<h1>Bloc de donn&eacute;es d\'un fil RSS :</h1>
<span class="code">&lt;atm-rss language=&quot;<span class="keyword">languageCode</span>&quot;&gt;<br />
&nbsp;&nbsp;&nbsp; <span class="keyword">&lt;atm-rss-title&gt;</span> ... <span class="keyword">&lt;/atm-rss-title&gt;</span><br />
&nbsp;&nbsp;&nbsp; &lt;atm-search ...&gt;<br />
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; ...<br />
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &lt;atm-result ...&gt;<br />
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<span class="keyword"> &lt;atm-rss-item&gt;</span><br />
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; <span class="keyword">&lt;atm-rss-item-url&gt;</span>{page:id:url}?item={object:id}<span class="keyword">&lt;/atm-rss-item-url&gt; </span><br />
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; <span class="keyword">&lt;atm-rss-item-title&gt;</span> ... <span class="keyword">&lt;/atm-rss-item-title&gt;</span><br />
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; <span class="keyword">&lt;atm-rss-item-content&gt;</span> ... <span class="keyword">&lt;/atm-rss-item-content&gt;</span><br />
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; <span class="keyword">&lt;atm-rss-item-author&gt;</span> ... <span class="keyword">&lt;/atm-rss-item-author&gt;</span><br />
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; <span class="keyword">&lt;atm-rss-item-date&gt;</span> ... <span class="keyword">&lt;/atm-rss-item-date&gt;</span><br />
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; <span class="keyword">&lt;atm-rss-item-category&gt;</span> ... <span class="keyword">&lt;/atm-rss-item-category&gt;</span><br />
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; <span class="keyword">&lt;/atm-rss-item&gt;</span><br />
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &lt;/atm-result&gt;<br />
&nbsp;&nbsp;&nbsp; &lt;/atm-search&gt;<br />
&lt;/atm-rss&gt;</span><br />
<br />
Ce tag permet de cr&eacute;er un fil RSS &agrave; partir d\'objets r&eacute;pondant &agrave; une recherche.<br />
<ul>
	<li><strong><span class="keyword">languageCode </span></strong>: Code du langage relatif au contenu parmi les codes suivants : <strong><span class="vertclair">%s</span></strong>.</li>
</ul>
Le tag <span class="keyword">atm-rss</span> peut contenir un tag <span class="keyword">atm-rss-title</span> (facultatif) permettant de red&eacute;finir le titre du fil RSS. <br />
Le tag <span class="keyword">atm-rss</span><strong> </strong>doit contenir un sous tag <span class="keyword">atm-rss-item</span> lui m&ecirc;me devant &ecirc;tre dans un r&eacute;sultat d\'une recherche. Pour chaque &eacute;l&eacute;ment r&eacute;sultat de la recherche, ce tag permettra la cr&eacute;ation d\'un &eacute;l&eacute;ment correspondant dans le fil RSS.<br />
<br />
Le tag <span class="keyword">atm-rss-item</span> doit<strong> </strong>contenir les sous tags suivants :<br />
<ul>
	<li><span class="keyword">atm-rss-item-url</span><strong> :</strong> Tag obligatoire, il permet de sp&eacute;cifier l\'adresse internet source de l\'&eacute;l&eacute;ment du fil RSS (Les aggr&eacute;gateurs RSS s\'en servent pour cr&eacute;er un lien vers cet &eacute;l&eacute;ment sur votre site). Ce doit donc &ecirc;tre une adresse valide vers l\'&eacute;l&eacute;ment source. Un seul tag de ce type est permit dans chaque tag atm-rss-item.</li>
	<li><span class="keyword">atm-rss-item-title</span><strong> : </strong>Tag obligatoire, il permet de sp&eacute;cifier le nom de l\'&eacute;l&eacute;ment du fil RSS. Le code HTML n\'y est pas autoris&eacute;. Un seul tag de ce type est permit dans chaque tag atm-rss-item.</li>
	<li><span class="keyword">atm-rss-item-content</span><strong> : </strong>Tag obligatoire, il permet de sp&eacute;cifier le contenu de l\'&eacute;l&eacute;ment du fil RSS. Le code HTML y est autoris&eacute;. Un seul tag de ce type est permit dans chaque tag atm-rss-item.</li>
</ul>
Le tag <span class="keyword">atm-rss-item</span> peut<strong> </strong>contenir les sous tags suivants :<br />
<ul>
	<li><span class="keyword">atm-rss-item-author</span><strong> : </strong>Ce tag permet de sp&eacute;cifer l\'auteur de l\'&eacute;l&eacute;ment du fil RSS. Le code HTML n\'y est pas autoris&eacute;. Un seul tag de ce type est permit dans chaque tag atm-rss-item.</li>
	<li><span class="keyword">atm-rss-item-date</span><strong> :</strong> Ce tag permet de sp&eacute;cifer la date de cr&eacute;ation de l\'&eacute;l&eacute;ment du fil RSS. Le code HTML n\'y est pas autoris&eacute;. Un seul tag de ce type est permit dans chaque tag atm-rss-item. Pensez &agrave; employer le format <span class="vertclair">rss</span> si vous employez la valeur d\'un champ de type Date.</li>
	<li><span class="keyword">atm-rss-item-category</span><strong> :</strong> Ce tag permet de sp&eacute;cifer une le nom d\'une cat&eacute;gorie pour l\'&eacute;l&eacute;ment du fil RSS. Le code HTML n\'y est pas autoris&eacute;. Vous pouvez mettre plusieurs tags de ce type dans chaque tag atm-rss-item.</li>
</ul>
</div>', 'TODO');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (314, 'polymod', NOW(), 'Utilisateurs', 'Users');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (315, 'polymod', NOW(), 'Groupes', 'Groups');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (316, 'polymod', NOW(), 'Tous les utilisateurs', 'All users');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (317, 'polymod', NOW(), 'Utilisateurs inclus/exclus', 'Included/excluded users');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (318, 'polymod', NOW(), 'Tous les groupes', 'All groups');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (319, 'polymod', NOW(), 'Groupes inclus/exclus', 'Included/excluded groups');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (320, 'polymod', NOW(), 'Inclusion', 'Inclusion');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (321, 'polymod', NOW(), 'Si ce param�tre est � :<br/>"oui" : seuls les utilisateurs/groupes s�lectionn�s sont affich�s dans la liste d�roulante du champs.<br/>"non" : les utilisateurs s�lectionn�s sont exclus de la liste d�roulante du champs.', 'If this parameter is :<br/>"yes" : only selected users/groups are display in the selection box of the field.<br/>"no" : selected users are excluded of the selection box of the field.');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (322, 'polymod', NOW(), 'Index� dans le moteur de recherche', 'Indexed in search engine');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (323, 'polymod', NOW(), 'Langue', 'Language');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (324, 'polymod', NOW(), 'Langue de l\'objet. Cr�� une relation avec les langues disponibles sur le syst�me. N�cessaire � l\'indexation correcte dans le moteur de recherche.', 'Language of the object. It create a relationship with system\'s languages. Needed for a correct indexation in search engine.');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (325, 'polymod', NOW(), 'Index� dans le moteur de recherche', 'Indexed in search engine');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (326, 'polymod', NOW(), 'Indexation', 'Indexation');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (327, 'polymod', NOW(), 'Si cet objet appartient en tant que champs � un objet index�, inutile de l\'indexer lui m�me', 'If this object belongs as a field to an indexed object, it is useless to index itself');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (328, 'polymod', NOW(), 'Adresse du lien vers l\'objet', 'Link address to the object');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (329, 'polymod', NOW(), 'Cette adresse devra permettre d\'aller vers l\'objet � partir des r�sultats de recherche.', 'This address will have to make possible to go towards the object from the search results.');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (330, 'polymod', NOW(), 'Indexer uniquement le dernier sous-objet', 'Index only the last sub-object');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (331, 'polymod', NOW(), 'Cette option est utile pour le versioning d\'objets ou les versions ant�rieures ne doivent pas �tre index�es dans le moteur de recherche.', 'This option is usefull in case of object versioning which older versions does not need to be indexed');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (332, 'polymod', NOW(), 'D�sactiver l\'association de sous-objets', 'Disactivate selection of sub-objets');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (333, 'polymod', NOW(), 'Cette option permet d\'emp�cher l\'emploi de sous-objets cr�es en dehors de l\'objet principal. Elle n\'est utile que si l\'option "Ces objets peuvent �tre �dit�s" est active.', 'This option avoid the use of objects which are not created inside the master object. It is usefull only if the option "These objects can be edited" is active.');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (334, 'polymod', NOW(), 'Contourner les droits', 'Bypass rights');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (335, 'polymod', NOW(), 'Permet de ne pas tenir compte des droits de ces cat�gories pour les recherches', 'Do not use categories rights management for searching');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (336, 'polymod', NOW(), 'Notification par email', 'Notify by email');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (337, 'polymod', NOW(), 'Ce champs permet d\'envoyer une notification par email lors de la validation d\'un objet', 'This field allow email notification when object is validated');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (338, 'polymod', NOW(), 'Sujet de l\'email', 'Email subject');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (339, 'polymod', NOW(), 'Corps de l\'email', 'Email body');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (340, 'polymod', NOW(), 'Emission au choix', 'Choice for sending');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (341, 'polymod', NOW(), 'Hauteur de l\'�diteur', 'Editor height');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (342, 'polymod', NOW(), 'Largeur de l\'�diteur', 'Editor width');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (343, 'polymod', NOW(), 'Permet de choisir lors de l\'�dition de l\'objet si l\'email doit �tre envoy�', 'Allow to choose if the email will be sent at object edition');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (344, 'polymod', NOW(), 'Inclure des fichiers', 'Include files');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (345, 'polymod', NOW(), 'Permet d\'inclure les fichiers de l\'objet en pi�ce jointe dans l\'email', 'Allow the inclusion as attachment of object files in the email');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (346, 'polymod', NOW(), 'Emetteur de l\'email', 'Email sender');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (347, 'polymod', NOW(), 'Permet de sp�cifier une adresse d\'emetteur pour l\'email. Si aucun, l\'adresse "postmaster" d\'Automne sera employ�e.', 'Allow usage of a specific email address for email sending. If none, "postmaster" Automne email will be used');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (348, 'polymod', NOW(), 'A la validation', 'On validation');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (349, 'polymod', NOW(), 'Ev�nement syst�me', 'System event');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (350, 'polymod', NOW(), 'Emission', 'Sending');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (351, 'polymod', NOW(), 'L\'email sera envoy� � la validation de l\'objet ou d�clench� par un �v�nement syst�me � sp�cifier (code PHP sp�cifique).', 'Email will be sent at validation or by a specified system event (specific PHP code).');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (352, 'polymod', NOW(), 'Syntaxe de la d�finition du sujet et du corps de l\'email', 'Syntax definition for the subject and body of the email');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (353, 'polymod', NOW(), 'O� choisir une page', 'Or choose a page');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (354, 'polymod', NOW(), 'Code HTML', 'HTML code');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (355, 'polymod', NOW(), 'Dernier envoi', 'Last sending');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (356, 'polymod', NOW(), 'Jamais', 'Never');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (357, 'polymod', NOW(), 'Actif', 'Active');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (358, 'polymod', NOW(), 'Inactif', 'inactive');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (359, 'polymod', NOW(), 'Preparation des notifications par email', 'Prepare emails notifications');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (360, 'polymod', NOW(), 'Envoi d\'une notification email', 'Sending email notification');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (361, 'polymod', NOW(), 'Autoriser l\'association des inutilis�es', 'Allow association of the unused ones');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (362, 'polymod', NOW(), 'Permet de s�lectionner les cat�gories inutilis�es dans les rang�es', 'Allow association of the unused categories in rows');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (363, 'polymod', NOW(), 'Libell� des objets (s�par�s par des virgules, ou sp�cifiez un s�parateur en param�tre)', 'Objects labels (comma separated or specify a separator in parameter)');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (364, 'polymod', NOW(), 'Notification de validation en attente', 'Notification of awaiting validation');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (365, 'polymod', NOW(), 'Notification de suppression en attente', 'Notification of deletion validation');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (366, 'polymod', NOW(), 'Champ requis (renvoie un bool�en true ou false)', 'Required field (return a boolean true or false)');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (367, 'polymod', NOW(), 'Cat�gorie par d�faut', 'Default category');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (368, 'polymod', NOW(), 'Date de cr�ation de l\'objet', 'Creation date of the object');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (369, 'polymod', NOW(), 'D�calage temporel', 'Time offset');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (370, 'polymod', NOW(), 'Si "Date du jour", "Date de cr�ation" ou "Date de mise � jour" est s�lectionn�, d�caler la valeur de cette dur�e (Voir le <a href="http://www.php.net/manual/fr/function.strtotime.php" target="_blank" class="admin">format de la fonction strtotime</a>)', 'If "Current date", "Creation date" or "Update date" is selected, offset the date of this value (See the <a href="http://www.php.net/manual/en/function.strtotime.php" target="_blank" class="admin">function strtotime format</a>)');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (371, 'polymod', NOW(), 'Date de mise � jour de l\'objet', 'Update date of the object');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (372, 'polymod', NOW(), 'Format � respecter', 'Format to comply');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (373, 'polymod', NOW(), 'Ce champ vous permet de sp�cifier un format � respecter en utilisant une expression r�guli�re PERL (<a href="http://www.php.net/manual/fr/reference.pcre.pattern.syntax.php" target="_blank" class="admin">voir l\'aide du format</a>)', 'This field allow you to specify a format to match using a PERL regular expression (<a href="http://www.php.net/manual/en/reference.pcre.pattern.syntax.php" target="_blank" class="admin">see format help</a>)');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (374, 'polymod', NOW(), 'Extensions autoris�es', 'Allowed extensions');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (375, 'polymod', NOW(), 'S�par�es par une virgule', 'Comma separated');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (376, 'polymod', NOW(), 'Extensions interdites', 'Disallowed extensions');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (377, 'polymod', NOW(), 'Utilisateur cr�ant l\'objet', 'User creating object');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (378, 'polymod', NOW(), 'Op�rateurs des filtres de recherche pour ce champ', 'Search filter operator for this field');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (379, 'polymod', NOW(), 'Un op�rateur permet de modifier le fonctionnement d\'un filtre (tag <span class="keyword">atm-search-param</span>) dans une recherche. Il s\'ajoute au filtre en ajoutant le param�tre <span class="keyword">operator</span> suivit de la valeur souhait�e au tag <span class="keyword">atm-search-param</span> proposant un filtre sur ce champ. Les valeurs suivantes sont possibles :', 'An operator can modify the operation of a filter (tag <span class="keyword">atm-search-param</span>) in a search. It added to the filter by adding the <span class="keyword">operator</span> parameter followed by the desired value to tag <span class="keyword">atm-search-param</span> proposing a filter on that field. Following values are available:');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (380, 'polymod', NOW(), '<br/><span class="keyword">&gt;=</span> : sup�rieur ou �gal<br/><span class="keyword">&lt;=</span> : inf�rieur ou �gal<br/><span class="keyword">&lt;</span> : inf�rieur<br/><span class="keyword">&gt;</span> : sup�rieur<br/><span class="keyword">&gt;= or null</span> : sup�rieur ou �gal ou nul<br/><span class="keyword">&lt;= or null</span> : inf�rieur ou �gal ou nul<br/><span class="keyword">&lt; or null</span> : inf�rieur ou nul<br/><span class="keyword">&gt; or null</span> : sup�rieur ou nul<br/><span class="keyword">&gt;= and not null</span> : (sup�rieur ou �gal) et non nul<br/><span class="keyword">&lt;= and not null</span> : (inf�rieur ou �gal) et non nul<br/><span class="keyword">&lt; and not null</span> : inf�rieur et non nul<br/><span class="keyword">&gt; and not null</span> : sup�rieur et non nul', '<br/><span class="keyword">&gt;=</span> : greater or equal<br/><span class="keyword">&lt;=</span> : lower or equal<br/><span class="keyword">&lt;</span> : lower<br/><span class="keyword">&gt;</span> : greater<br/><span class="keyword">&gt;= or null</span> : greater or equal or null<br/><span class="keyword">&lt;= or null</span> : lower or equal or null<br/><span class="keyword">&lt; or null</span> : lower or null<br/><span class="keyword">&gt; or null</span> : greater or null<br/><span class="keyword">&gt;= and not null</span> : (greater or equal) and not null<br/><span class="keyword">&lt;= and not null</span> : (lower or equal) and not null<br/><span class="keyword">&lt; and not null</span> : lower and not null<br/><span class="keyword">&gt; and not null</span> : greater and not null');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (381, 'polymod', NOW(), 'Ne recherche que les objets associ�s � la cat�gorie en param�tre (les sous-cat�gories ne sont plus prises en compte)', 'Search only objects associated to the category in parameter (sub-categories are not used)');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (382, 'polymod', NOW(), 'Tags de formulaires (cr�ation - modification)', 'Forms tags (create - edit)');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (383, 'polymod', NOW(), '<div class="rowComment">
<h1>Cr&eacute;ation modification d\'objets cot&eacute; client :</h1>
<p><span class="code">&lt;atm-form what=&quot;<span class="keyword">objet</span>&quot; name=&quot;<span class="keyword">formName</span>&quot;&gt; ... &lt;/atm-form&gt;</span><br />
Ce tag permet de cr&eacute;er un formulaire de saisie pour un nouvel objet (si ce tag n\'est pas dans un r&eacute;sultat de recherche) ou de modification pour un objet existsnat (si ce tag se trouve dans un r&eacute;sultat de recherche.</p>
<ul>
	<li><span class="keyword">objet</span> : Type d\'objet &agrave; saisir (de la forme <span class="vertclair">{<span class="keyword">objet</span>}</span>)</li>
	<li><span class="keyword">formName</span> : Nom du formulaire : identifiant unique pour le formulaire dans la rang&eacute;e.</li>
</ul>
Les valeurs suivantes seront remplac&eacute;es dans le tag :
<ul>
	<li><span class="vertclair">{filled}</span> : Vrai si le formulaire a &eacute;t&eacute; correctement rempli et que sa validation n\'a provoqu&eacute; aucune erreur.</li>
	<li><span class="vertclair">{required}</span> : Vrai si le formulaire n\'a pas &eacute;t&eacute; correctement rempli et que des champs requis ont &eacute;t&eacute; laiss&eacute;s vides.</li>
	<li><span class="vertclair">{malformed}</span> : Vrai si le formulaire n\'a pas &eacute;t&eacute; correctement rempli et que les values de certains champs sont incorrectes.</li>
</ul>
<h2>Ce tag peut contenir les sous-tags suivants :</h2>
<div class="retrait">
<h3>Affichage des champs requis :</h3>
<div class="retrait"><span class="code">&lt;atm-form-required form=&quot;<span class="keyword">formName</span>&quot;&gt;<br />
&nbsp;&nbsp;&nbsp; ... <span class="vertclair">{requiredname}</span> ...<br />
&lt;/atm-form-required&gt;</span><br />
Le contenu du tag sera lu pour chaque champ requis lors de la saisie du formulaire.<br />
<ul>
	<li><span class="keyword">formName</span> : Nom du formulaire sur lequel appliquer le tag.</li>
</ul>
<p>Les valeurs suivantes seront remplac&eacute;es dans le tag :</p>
<ul>
	<li><span class="vertclair">{firstrequired}</span> : Vrai si le champ requis en cours est le premier du formulaire en cours.</li>
	<li><span class="vertclair">{last</span><span class="vertclair">required</span><span class="vertclair">}</span> : Vrai si le champ requis en cours est le dernier du formulaire en cours.</li>
	<li><span class="vertclair">{</span><span class="vertclair">required</span><span class="vertclair">count}</span> : Num&eacute;ro du champ requis dans le formulaire en cours.</li>
	<li><span class="vertclair">{max</span><span class="vertclair">required</span><span class="vertclair">}</span> : Nombre de champs requis dans le formulaire en cours.</li>
	<li><span class="vertclair">{</span><span class="vertclair">required</span><span class="vertclair">name}</span> : Nom du champ requis dans le formulaire en cours.</li>
	<li><span class="vertclair">{</span><span class="vertclair">required</span><span class="vertclair">field}</span> : Objet champ requis dans le formulaire en cours.</li>
</ul>
</div>
<h3>Affichage des champs malform&eacute;s :</h3>
<div class="retrait"><span class="code">&lt;atm-form-malformed form=&quot;<span class="keyword">formName</span>&quot;&gt;<br />
&nbsp;&nbsp;&nbsp; ... <span class="vertclair">{malformedname}</span> ...<br />
&lt;/atm-form-malformed&gt;</span><br />
Le contenu du tag sera lu pour chaque champ malform&eacute; lors de la saisie du formulaire.<br />
<ul>
	<li><span class="keyword">formName</span> : Nom du formulaire sur lequel appliquer le tag.</li>
</ul>
<p>Les valeurs suivantes seront remplac&eacute;es dans le tag :</p>
<ul>
	<li><span class="vertclair">{firstmalformed}</span> : Vrai si le champ malform&eacute; en cours est le premier du formulaire en cours.</li>
	<li><span class="vertclair">{lastmalformed}</span> : Vrai si le champ malform&eacute; en cours est le dernier du formulaire en cours.</li>
	<li><span class="vertclair">{malformedcount}</span> : Num&eacute;ro du champ malform&eacute; dans le formulaire en cours.</li>
	<li><span class="vertclair">{maxmalformed}</span> : Nombre de champs malform&eacute;s dans le formulaire en cours.</li>
	<li><span class="vertclair">{malformedname}</span> : Nom du champ malform&eacute; dans le formulaire en cours.</li>
	<li><span class="vertclair">{malformedfield}</span> : Objet champ malform&eacute; dans le formulaire en cours.</li>
</ul>
</div>
<h3>Affichage d\'un champ de saisie :</h3>
<div class="retrait"><span class="code">&lt;atm-input field=&quot;<span class="keyword">{objet:champ}</span>&quot; form=&quot;<span class="keyword">formName</span>&quot; /&gt;</span><br />
Ce tag sera remplac&eacute; par la zone de saisie (champ de formulaire) n&eacute;cessaire &agrave; la saisie correcte des informations relatives au type du champ sp&eacute;cifi&eacute;.<br />
<ul>
	<li><span class="keyword">formName</span> : Nom du formulaire sur lequel appliquer le tag.</li>
	<li><span class="keyword">{objet:champ}</span> : Champ de l\'objet g&eacute;r&eacute; par le formulaire sur lequel la saisie doit &ecirc;tre effectu&eacute;e.</li>
</ul>
<p>Ce tag peut ensuite avoir tout une suite d\'attributs html qui seront repost&eacute;s sur le code HTML du champ g&eacute;n&eacute;r&eacute; (<span class="vertclair">width, height, id, class, etc.</span>).</p>
</div>
</div>
</div>', 'TODO');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (384, 'polymod', NOW(), 'Bool�en', 'Boolean');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (385, 'polymod', NOW(), 'Permet sp�cifier un �tat (oui - non)', 'Choose a state (yes - no)');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (386, 'polymod', NOW(), 'Libell� de la cat�gorie', 'Category label');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (387, 'polymod', NOW(), 'Identifiant des utilisateur/groupe du champ', 'User/group IDs of the field');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (388, 'polymod', NOW(), 'Si ce param�tre est � :<br/>"oui" : seuls les utilisateurs/groupes s�lectionn�s ci-dessous recevront les notifications.<br/>"non" : les utilisateurs/groupes s�lectionn�s ci-dessous sont exclus de la reception des notifications.', 'If this parameter is :<br/>"yes" : only selected users/groups below will receive notifications.<br/>"no" : selected users/groups below are excluded of the notifications.');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (389, 'polymod', NOW(), 'Permet de faire une recherche sur une valeur incompl�te. Utilisez le caract�re % pour sp�cifier la partie inconnue. Par exemple, "cha%" retournera "chat", "chameau", etc.', 'Allow the research on incomplete value. Use the caracter % for the unkown part. For example, "ca%" will return "cat", "car", etc.');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (390, 'polymod', NOW(), 'Les valeurs suivantes sont possibles','Following values are available');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (391, 'polymod', NOW(), 'Op�rateurs des champs de saisie pour ce champ', 'Input field operators for this field');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (392, 'polymod', NOW(), 'Un op�rateur permet de modifier l\'affichage d\'un champ (<span class="keyword">atm-input</span>) dans un formulaire (<span class="keyword">atm-form</span>). Il s\'ajoute au tag <span class="keyword">atm-input</span> en ajoutant le param�tre <span class="keyword">operator</span> suivi de la valeur souhait�e. Les valeurs suivantes sont possibles :','An operator can modify the display of a field (tag <span class="keyword">atm-input</span>) in a form (tag <span class="keyword">atm-form</span>). It added to the tag <span class="keyword">atm-input</span> by adding the <span class="keyword">operator</span> parameter followed by the desired value. Following values are available:');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (393, 'polymod', NOW(), 'Affiche uniquement les sous cat�gories de la racine sp�cifi�e','Display only sub categories of the specified root category');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (394, 'polymod', NOW(), 'Comparaison num�rique de deux champs num�riques flottant.', 'Numeric comparison between two float fields.');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (395, 'polymod', NOW(), 'La valeur du champ peut-�tre un nombre n�gatif', 'Field value can be negative');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (396, 'polymod', NOW(), 'Nombre flottant (� virgule)', 'Float number');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (397, 'polymod', NOW(), 'Cha�ne contenant un nombre � virgule (255 caract�res maximum).', 'String containing a float number (255 characters maximum).');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (398, 'polymod', NOW(), 'Ensemble des IDs des objets de type \'%s\' associ�s � ce  champ.', 'All IDs of objects of type \'%s\' associated to this field.');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (399, 'polymod', NOW(), 'Largeur des bo�tes de s�lection (pixels)', 'Select boxes width (pixels)');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (400, 'polymod', NOW(), 'Hauteur des bo�tes de s�lection (pixels)', 'Select boxes height (pixels)');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (401, 'polymod', NOW(), 'Uniquement dans le cas de cat�gories multiples. 300x200 par d�faut.', 'Only if multi-categories. Default 300x200.');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (402, 'polymod', NOW(), 'Description du champ : \'%s\'', 'Field description: \'%s\'');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (403, 'polymod', NOW(), 'Ordre de cr�ation', 'Creation order');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (404, 'polymod', NOW(), 'D�but de publication', 'Publication date start');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (405, 'polymod', NOW(), 'Trier par', 'Sort by');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (406, 'polymod', NOW(), 'Page', 'Page');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (407, 'polymod', NOW(), 'Permet de choisir une page Automne', 'Permit to choose an Automne page');

INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (409, 'polymod', NOW(), 'Largeur de la vignette dans les r�sultats de la recherche', 'Thumbnail width in search results list');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (410, 'polymod', NOW(), '(largeur de l\'image dans la liste des r�sultats, si elle est visible dans les r�sultats de la recherche) ', '(only if image is visible in search results)');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (411, 'polymod', NOW(), 'Retourne vrai (true) si ce champ poss�de une valeur', 'Retrun true if this field has a value set');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (412, 'polymod', NOW(), '(Si la vignette d�passe cette hauteur elle sera redimensionn�e)', '(If the thumbnail exceeds this width it will be resized)');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (413, 'polymod', NOW(), 'Hauteur maximum de l\'image en pixels', 'Image maximum height in pixels');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (414, 'polymod', NOW(), 'Hauteur maximum de la vignette en pixels', 'Thumbnail maximum height in pixels');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (415, 'polymod', NOW(), '(Sera redimensionn�e � %s pixels de hauteur)', '(Will be resized to %s pixels height)');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (416, 'polymod', NOW(), '(Sera redimensionn�e � %s pixels de largeur et %s  pixels de hauteur)', '(Will be resized to %s pixels width and %s pixels height)');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (417, 'polymod', NOW(), 'Unit�', 'Unit');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (418, 'polymod', NOW(), '(Sera affich�e � c�t� de la valeur)', '(Will be display front of value)');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (419, 'polymod', NOW(), 'Unit� : "%s"', 'Unit : "%s"');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (420, 'polymod', NOW(), 'Affichage des r�sultats c�t� admin', 'Backoffice search results display');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (421, 'polymod', NOW(), 'Syntaxe pour l\'objet "%s"', 'Syntax for "%s" object');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (422, 'polymod', NOW(), 'Recherchable', 'Searchable');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (423, 'polymod', NOW(), 'Hauteur maximum de la vignette en pixels', 'Maximum height of the thumbnail in pixels');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (424, 'polymod', NOW(), 'Index�', 'Indexed');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (425, 'polymod', NOW(), 'Largeur de la fen�tre popup', 'Popup window width');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (426, 'polymod', NOW(), 'Hauteur de la fen�tre popup', 'Popup window height');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (427, 'polymod', NOW(), 'message(s) envoy�(s)', 'message(s) sent');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (428, 'polymod', NOW(), 'Ne recherche que les objets associ�s � la(aux) cat�gorie(s) �ditable(s) fournie(s) en param�tre', 'Search only objects associated to the category(ies) in parameter');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (429, 'polymod', NOW(), 'Ne recherche que les objets qui ne sont pas associ�s � la cat�gorie en param�tre', 'Search only objects which are not associated to the category in parameter');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (430, 'polymod', NOW(), 'Ne recherche que les objets qui ne sont pas associ�s � la cat�gorie en param�tre, de fa�on stricte (les sous-cat�gories ne sont plus prises en compte)', 'Search only objects which are not associated to the category in parameter, by strict search (sub-categories are not used)');

#V4 labels starts to id 500
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (500, 'polymod', NOW(), 'Les cat�gories sont employ�es pour le(s) champ(s) : ', 'Cat�gories are used for fields: ');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (501, 'polymod', NOW(), 'R�sultats : {0} %s sur {1}', 'Results : {0} %s of {1}');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (502, 'polymod', NOW(), 'R�sultats : Aucun r�sultat pour votre recherche ...', 'Results: No result for your search...');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (503, 'polymod', NOW(), 'R�sultats', 'Results');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (504, 'polymod', NOW(), '{0} %s sur {1}', '{0} %s of {1}');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (505, 'polymod', NOW(), 'Supprime le ou les �l�ments %s s�lectionn�s. ', 'Remove the or these selected %s elements. ');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (506, 'polymod', NOW(), 'Cette action est soumise � une validation ult�rieure.', 'This action is subject to later validation.');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (507, 'polymod', NOW(), 'Cette action n\'est pas soumise � une validation et est effective directement.', 'This action is not subject to later validation and take effect immediatly.');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (508, 'polymod', NOW(), 'Annule la demande de suppression du ou des �l�ments %s s�lectionn�s.', 'Cancel the deletion of the or these %s selected elements.');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (509, 'polymod', NOW(), 'D�v�rouille le ou les �l�ments %s s�lectionn�s. Attention, si une personne est actuellement en train de modifier cet �l�ment, il pourrait perdre ses modifications.', 'Unlock the or these %s selected elements. Attention, if somebody is currently editing the element, he may lose it\'s modifications.');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (510, 'polymod', NOW(), 'Aper�u avant validation du ou des �l�ments %s s�lectionn�s.', 'Preview of the or these %s selected elements.');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (511, 'polymod', NOW(), 'Modification du ou des �l�ments %s s�lectionn�s.', 'Modification of the or these %s selected elements.');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (512, 'polymod', NOW(), 'Cr�ation d\'un nouvel �l�ment %s.', 'Create a new %s element.');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (513, 'polymod', NOW(), 'Recevez un email pour toute validation en attente dans ce module.', 'Receive an email for validation pending in this module.');
INSERT INTO `I18NM_messages` (`id`, `module`, `timestamp`, `fr`, `en`) VALUES (514, 'polymod', NOW(), 'Validations', 'Validations');

#
# Contenu de la table `I18NM_messages` module News
#

DELETE FROM I18NM_messages WHERE module='pnews';

INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1, 'pnews', NOW(), 'Actualit�s', 'News');

#
# Contenu de la table `I18NM_messages` module Docs
#

DELETE FROM I18NM_messages WHERE module='pdocs';

INSERT INTO I18NM_messages (id, module, timestamp, fr, en) VALUES (1, 'pdocs', NOW(), 'Gestion documentaire', 'Documents management');