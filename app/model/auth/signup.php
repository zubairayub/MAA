<?php
if($error == false){

$query = "INSERT INTO `users_info` (`id`, `username`, `first_name`, `last_name`, `email`, `number`, `gender`, `dob`, `password`, `isActive`, `user_type_id`, `ip_address`, `os_version`, `device_id`, `create_at`, `updated_at`) VALUES (NULL, '$username', 'first_name', 'last_name', '$email', '$number', '', '0000-00-00', '$password', '', '1', '', '', '', current_timestamp(), current_timestamp());";

$result = insert($query);

if($result){


	$myJSON = json_encode(['status' => 'true' , 'data' => 'Data Inserted Successfully' , 'result' => 'Success']); 
   

}
else{
	$myJSON = json_encode(['status' => 'false' , 'data' => 'Something Went wrong while inserting data' , 'result' => 'fail']); 
    
}

print_r($myJSON);

}
?>