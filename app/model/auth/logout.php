<?php
if(!empty($session_id)){

if(logout($session_id)){

 jsonencode($session_id,'Successfully logout');
exit();
}else{
	 jsonencode(null,'Something went wrong');
	 exit();
}



}

?>