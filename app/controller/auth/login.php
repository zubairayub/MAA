<?php
$data = get_json_data();

 $error = false;
 $data = verify_post($data);

if($data != false){



$username = $data['username'];
$password = $data['password'];
$device_id = $data['device_id'];
$version = $data['version'];
$ip_address = $data['ip_address'];



$result = login_auth($username,$password,$device_id,$version,$ip_address);

echo $result;



}

?>
