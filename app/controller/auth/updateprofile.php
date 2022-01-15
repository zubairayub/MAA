<?php
$data = get_json_data();

 $error = false;
 $data = verify_post($data);

if($data != false){



$user_id = $data['user_id'];
$cnic_number = $data['cnic_number'];
$passport_number = $data['passport_number'];
$sess_key = $data['session_id'];




$result = updateprofile($user_id,$cnic_number,$passport_number,$sess_key);

echo $result;



}

?>
