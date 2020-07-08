<?php require('./controller/CallListController.php');?>
<?php

/**
 * GET URL ID VALUE's
 */
$get_grpid = $_GET['grpid']; // group id
$get_id = $_GET['id']; // call list id
$get_level = $_GET['level']; // call list level
$get_action = $_GET['trigger']; // button action

echo update($get_grpid, $get_id, $get_level, $get_action);