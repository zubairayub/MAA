<?php
$data = get_json_data();
$error = false;
$data = verify_post($data);

if($data != false){

$session_id = $data['session_id'];



}else{
	$error = true;
	jsonencode(Null,'Request data not found');	
	exit();
}



?>
