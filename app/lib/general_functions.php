<?php



function get($name, $def= '')
{
	 return isset($_REQUEST[$name]) ? $_REQUEST[$name] : $def;
}

function verify_token (){

$token = '12341234';

if(isset($_POST['key']) && $_POST['key'] == $token){

  return true;

}else{

	return true;

}

	
}




function verify_post($data = []){

foreach ($data as $key => $value) {
    $return[$key] =    htmlentities($value) ; 
}


foreach ($data as $key=> $value){

if(empty($value)){

return false;
}

}

return $return;
	
}




function validateEmail($email) {
	$error = null;
    if(filter_var($email, FILTER_VALIDATE_EMAIL)) {
       $error = null;
    }
    else {
        $error = "{$email}: Not a valid email"."<br>";
    }

    if($error ==  null){

    	return true;

    }else{
    	return $error;
    }



}


function checkemail_available($email) {

if(!empty($email)){

$conn = OpenCon();
$rows  = mysqli_num_rows(mysqli_query($conn,"SELECT * FROM `users_info` where email = '$email' "));

if($rows > 0){
return false;
}else{
CloseCon($conn);
	return true;
}


}else{
	return false;
}



    
}




function checkusername_available($username) {

if(!empty($username)){

$conn = OpenCon();
$rows  = mysqli_num_rows(mysqli_query($conn,"SELECT * FROM `users_info` where username = '$username' "));

if($rows > 0){
return false;
}else{
CloseCon($conn);
	return true;
}


}else{
	return false;
}



    
}




function login_auth($username,$password) {

if(!empty($username)){

$conn = OpenCon();
$rows  = mysqli_num_rows(mysqli_query($conn,"SELECT * FROM `users_info` WHERE `username` = '$username' or email = '$username' or `number` = '$username' "));

if($rows > 0){


echo 'found' ;

}else{

CloseCon($conn);
    return true;
}


}else{
    return false;
}



    
}




function insert($query) {

if(!empty($query)){

$conn = OpenCon();
$query  = mysqli_query($conn,$query);

if($query){
return true;
}else{
CloseCon($conn);
    return false;
}


}else{
    return false;
}



    
}




function verify_password($password,$confirm_password){

$error = null;

if($password != $confirm_password){

$error = "Password Doesnot Match";

}
else{

if (strlen($password) < 8) {
        $error = "Password too short!";
    }

    if (!preg_match("#[0-9]+#", $password)) {
        $error = "Password must include at least one number!";
    }

    if (!preg_match("#[a-zA-Z]+#", $password)) {
        $error = "Password must include at least one letter!";
    }   
    if (!preg_match('@[A-Z]@', $password)) {
        $error = "Password must contain at least one upper case letter!";
    }   
    if (!preg_match('@[a-z]@', $password)) {
        $error = "Password must contain at least one lower case letter!";
    }  
    if (!preg_match('@[^\w]@', $password)) {
        $error = "Password must contain at least one special character!";
    }    

}


if($error == null){
return true;
}else{
	return $error;
}


	
}




function get_countries_list (){


$conn = OpenCon();
$rows  = mysqli_query($conn,"SELECT * FROM `countries`");
while($data = mysqli_fetch_array($rows)){

$return[] = $data;
}

CloseCon($conn);
return $return;

	
}


function jsonencode ($data, $message = 'Not Found'){



	if(!empty($data)){
$myJSON = json_encode(['status' => 'true' , 'data' => $data , 'message' => 'Found']);
}else{
$myJSON = json_encode(['status' => 'true' , 'data' => 'No Data Found' , 'message' => $message ]);
}




	

print_r($myJSON);


}




?>