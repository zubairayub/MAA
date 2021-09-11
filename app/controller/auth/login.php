<?php
$error = false;
$data = verify_post($_GET);

if($data != false){



$username = $data['username'];
$password = $data['password'];



$result = login_auth($username,$password);

echo $result;



}

?>
