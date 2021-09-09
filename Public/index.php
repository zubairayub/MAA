<?php
session_start(); 
defined('APPLICATION_PATH') || define('APPLICATION_PATH', realpath( dirname(__FILE__) . '/../app'));
const DS = DIRECTORY_SEPARATOR; 
require APPLICATION_PATH . DS . 'config' . DS . 'conn.php';
require APPLICATION_PATH . DS . 'config' . DS . 'config.php';


if(isset($_REQUEST['page'])){
 $page = get ('page','home');

if(isset($directory[$page])){
$model = $config['MODEL_PATH'] . $directory[$page] . '.php';
$controller = $config['CONTROLLER_PATH'] . $directory[$page] . '.php';

}else{
	$model = null;
	$controller = null;
}


$main_content = $config['$_404'];
if (file_exists($model)) {

 $main_controller = $controller;
 $main_model = $model;
}


require($main_controller);
require($main_model);


if(!verify_token()){
$myJSON = json_encode(['status' => 'true' , 'data' => 'Token Mismatch' , 'result' => 'Not Found']); 
print_r($myJSON);
}













}








?>