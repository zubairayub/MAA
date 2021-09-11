<?php
$error = false;
$data = verify_post($_POST);



if($data != false){



$username = $data['username'];
$email = $data['email'];
$number = $data['number'];
$password = $data['password'];
$confirm_password = $data['confirm_password'];
$terms_and_condition = $data['terms_and_condition'];





$password_result = verify_password($password,$confirm_password);
$email_result = validateEmail($email);


if($password_result != 1){
	$error = true;
	jsonencode(Null,$password_result);	
}else{

	$password = password_hash($password, PASSWORD_DEFAULT);
}

if($email_result != 1){
	$error = true;
	jsonencode(Null,$email_result);	

}
else{


$email_available = checkemail_available($email);


if($email_available != 1){
	$error = true;
	jsonencode(Null,'Email already registered');	
}



}




$username_available = checkusername_available($username);

if($username_available != 1){
	$error = true;
	jsonencode(Null,'Username already registered');	
}


}else{

jsonencode(Null,'Cannot Veirfy Post Request');


}







?>