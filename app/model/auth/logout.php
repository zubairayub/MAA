<?php
if(!empty($session_id)){

if(logout($session_id)){


	echo 'ok';
}else{
	echo 'false';
}



}

?>