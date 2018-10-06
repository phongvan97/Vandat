<?php
require_once ("../connect.php");

$staff=$_GET['staff'];
$shiff=$_GET['shiff'];
$day=$_GET['day'];
$sql="SELECT * FROM shiffdaystaff WHERE Staff=".$staff."  AND DaysOfWeek=".$day."  and Shiff =".$shiff;
$result=$conn->query($sql);
if($result->num_rows>0)
    echo "yes";
else
    echo "no";