<?php
$data = get_json_data();

 $error = false;
$data = verify_post($data);

if($data != false){



$username = $data['username'];
$password = $data['password'];



$result = login_auth($username,$password);

echo $result;



}

?>
