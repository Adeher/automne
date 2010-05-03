<?php
/* vim: set expandtab sw=4 ts=4 sts=4: */
/**
 * @version $Id: setup.php,v 1.1 2009/03/02 12:33:10 sebastien Exp $
 */
if (! defined('PHPMYADMIN')) {
    exit;
}

/**
 * checks for DBG extension
 *
 * allways use $GLOBALS here, as this script is included by footer.inc.hp
 * which can also be included from inside a function
 */
if ($GLOBALS['cfg']['DBG']['php']) {
    /**
     * Loads the DBG extension if needed
     */
    if (! @extension_loaded('dbg') ) {
        $message = PMA_Message::error('strCantLoad');
        $message->addParam('DBG');
        $message->addMessage('<a href="./Documentation.html#faqdbg" target="documentation">', false);
        $message->addString('strDocu');
        $message->addMessage('</a>', false);
        $message->display();
    } else {
        $GLOBALS['DBG'] = true;
    }
}
?>
