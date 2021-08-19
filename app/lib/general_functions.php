<?php

function get($name, $def= '')
{
	 return isset($_REQUEST[$name]) ? $_REQUEST[$name] : $def;
}

function jsonencode ($data){


	$myJSON = json_encode($data);

print_r($myJSON);
}

?>