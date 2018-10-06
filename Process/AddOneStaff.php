<?php
require_once ("../connect.php");
$name=$_GET['staffname'];
$sql="INSERT INTO staff(StaffName)  VALUES ('".$name."')";
$conn->query($sql);
echo "Thêm THành Công";