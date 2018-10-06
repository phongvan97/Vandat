<?php
require_once ("../connect.php");
$staff=$_GET['staff'];
$shiff=$_GET['shiff'];
$day=$_GET['day'];

$sql="DELETE FROM shiffdaystaff WHERE Staff=".$staff."  AND DaysOfWeek =".$day."  AND Shiff=".$shiff;
$result=$conn->query($sql);
echo "x";