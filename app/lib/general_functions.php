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

	return false;

}

	
}




function get_countries_list (){


$conn = OpenCon();
$rows  = mysqli_query($conn,"SELECT * FROM `country`");
while($data = mysqli_fetch_array($rows)){

$return[] = $data;
}

return $return;

	
}


function jsonencode ($data){


if(!verify_token()){
	if(!empty($data)){
$myJSON = json_encode(['status' => 'true' , 'data' => $data , 'result' => 'Found']);
}else{
$myJSON = json_encode(['status' => 'true' , 'data' => 'No Data Found' , 'result' => 'Not Found']);
}
}else{
$myJSON = json_encode(['status' => 'true' , 'data' => 'Tokem Mismatch' , 'result' => 'Not Found']);	
}



	

print_r($myJSON);


}




?>