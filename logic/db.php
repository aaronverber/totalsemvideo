<?php

require_once 'logic/local.php';

function db_connect(){
	mysql_connect($db_host, $db_user, $db_password) or die(mysql_error());
	mysql_select_db($db_name) or die(mysql_error());

}

function db_check_user($username, $password){
	$users = mysql_query("SELECT * FROM users") or die(mysql_error());
	while($user = mysql_fetch_array($users)){
		$dbuser = $user['username'];
		$dbpass = $user['password'];
		if($dbuser == $username && $dbpass == $password){
			return true;
		}
	}
	return false;
}

db_connect();