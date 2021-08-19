<?php
$conn = OpenCon();
$rows  = mysqli_fetch_assoc(mysqli_query($conn,"SELECT * FROM `users_info` WHERE 1"));



?>
