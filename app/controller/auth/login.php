<?php
$conn = OpenCon();
$rows  = mysqli_query($conn,"SELECT * FROM `users_info` ");

while($data = mysqli_fetch_assoc($rows)){

$return[] = $data;

}

CloseCon($conn);

?>
