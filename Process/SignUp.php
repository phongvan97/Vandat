<?php
require_once ("../connect.php");
$staff=$_GET['staff'];
$shiff=$_GET['shiff'];
$day=$_GET['day'];
$sql="INSERT into shiffdaystaff(Staff,DaysOfWeek,Shiff) VALUES (".$staff.",".$day.",".$shiff.")";
$result=$conn->query($sql);
echo "x";