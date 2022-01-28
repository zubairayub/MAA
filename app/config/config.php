<?php
$config = [
'MODEL_PATH' => APPLICATION_PATH . DS . 'model' . DS,   
'VIEW_PATH' => APPLICATION_PATH . DS . 'view' . DS,
'CONTROLLER_PATH' =>   APPLICATION_PATH . DS . 'controller' . DS,
'LIB_PATH' =>   APPLICATION_PATH . DS . 'lib' . DS,
'$_404' =>   APPLICATION_PATH . DS . 'view' . DS . '404.phtml',



];

$directory  = [
'login' => 'auth/login',
'countries_list' => 'general_data/countries_list',
'signup' => 'auth/signup',
'logout' => 'auth/logout',
'updateprofile' =>'auth/updateprofile'

];


require $config['LIB_PATH'] . 'general_functions.php';