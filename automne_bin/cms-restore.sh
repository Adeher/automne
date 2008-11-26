#!/bin/bash

## 
## +----------------------------------------------------------------------+
## | Automne (TM)                                                         |
## +----------------------------------------------------------------------+
## | Copyright (c) 2000-2005 WS Interactive                               |
## +----------------------------------------------------------------------+
## | This source file is subject to version 2.0 of the GPL license,       |
## | or (at your discretion) to version 3.0 of the PHP license.           |
## | The first is bundled with this package in the file LICENSE-GPL, and  |
## | is available at through the world-wide-web at                        |
## | http://www.gnu.org/copyleft/gpl.html.                                |
## | The later is bundled with this package in the file LICENSE-PHP, and  |
## | is available at through the world-wide-web at                        |
## | http://www.php.net/license/3_0.txt.                                  |
## +----------------------------------------------------------------------+
## | Author: C�dric Soret <cedric.soret@ws-interactive.fr>                |
## +----------------------------------------------------------------------+
##
## $Id: cms-restore.sh,v 1.1.1.1 2008/11/26 17:12:35 sebastien Exp $

## +----------------------------------------------------------------------+
## | Vars and Parameters                                                  |
## +----------------------------------------------------------------------+

##
## R�pertoire contenant les 3 sous-r�pertoires cd1, cd2 et cd3
## vers lesquels d�placer les archives cr�ees par ce script de sauvegarde
## 
BACKUP_DIR="/home/backups"

##
## Programmes
##
BIN_TAR=/bin/tar
BIN_MYSQL=/usr/bin/mysql
BIN_MYSQLDUMP=/usr/bin/mysqldump

## External sources and functions
## Use external file to get main constants and funcs
FUNCS_FILE="./automne_bin/cms-constants.sh"
if [ ! -f ${FUNCS_FILE} ]; then
	echo ""
	echo " [EE] File not found : ${FUNCS_FILE} "
	echo "      Be sure to run this from Automne website root dir"
	exit 1
else
	source ${FUNCS_FILE}
fi

## 
## Getting vars from script parameters
## And proceed to some tests
while getopts ":qhd:" opt; do
	case $opt in
		d ) BACKUP_DIR="${OPTARG}";;
		q ) QUIET=true;;
		h ) echo ""
			echo "  [USAGE]: $0 [-q] destination_dir"
			echo "      -q :                Script keeps quiet, except for errors"
			echo "      destination_dir :   Where to let the archive file when done"
			echo "                          Default : ${TARBALLS_DESTINATION_DIR}"
			echo ""
			exit 1;;
		\? ) QUIET=false;;
	esac
done
shift $(($OPTIND - 1))

## Emplacement du r�pertoire contenant les fichiers du site � sauvegarder
## Par d�faut, le script est ex�cut� depuis la racine du site lui-m�me
##
HTDOCS_DIR="`pwd`"

## +----------------------------------------------------------------------+
## | Runs                                                                 |
## +----------------------------------------------------------------------+

## 1. V�rifications d'usage
##
if [ ! -x ${BIN_TAR} ] ; then
	echo ""
	echo " V�rifiez la pr�sence et les permissions de l'ex�cutable tar :"
	echo " ${BIN_TAR}"
	exit 1
fi
if [ ! -x ${BIN_MYSQL} ] ; then
	echo ""
	echo " V�rifiez la pr�sence et les permissions de l'ex�cutable mysql :"
	echo " ${BIN_MYSQL}"
	exit 1
fi
if [ ! -d ${HTDOCS_DIR} ] ; then
	echo ""
	echo " V�rifiez l'existance du r�pertoire de base du site internet :"
	echo " ${HTDOCS_DIR}"
	exit 2
fi
if [ ! -d ${TARBALL_PATH} ] ; then
	echo ""
	echo " V�rifiez l'existance de l'archive :"
	echo " ${TARBALL_PATH}"
	exit 2
fi

## 2. Commencer la sauvegarde
##
cd ${HTDOCS_DIR}

## Main archive
TARBALL_NAME="${APPLICATION_DB_NAME}.tar.gz"

# Restore all files
${BIN_TAR} -xzf ${BACKUP_DIR}/${TARBALL_NAME}

# Backup de la base de donn�es
SQL_FILE="sql/${APPLICATION_DB_NAME}.backup.sql"
if [ -f ${SQL_FILE} ] ; then
	${BIN_MYSQL} -u${APPLICATION_DB_USER} -p${APPLICATION_DB_PASSWORD} ${APPLICATION_DB_NAME} < ${SQL_FILE}
	
	# Update files perms
	PERMS_SCRIPT="./automne_bin/cms-reset-files-perms.sh"
	if [ -f ${PERMS_SCRIPT} ] ; then
		chmod u+x ${PERMS_SCRIPT} >/dev/null
		${PERMS_SCRIPT}
	else
		echo ""
		echo " [WARN] Aucun fichier permettant de restaurer les permissions "
		echo " sur les fichiers n'a �t� trouv�"
	fi
	echo ""
	echo " ++ Le site Automne est install� � nouveau"
	exit 0
else
	echo ""
	echo " [EE] Aucune dump SQL (${SQL_FILE}) de la base n'a �t� trouv� dans l'archive"
	exit 1
fi

exit 0