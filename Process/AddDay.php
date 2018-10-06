<?php
require_once ("../connect.php");
$name=$_GET['name'];
$id=$_GET['id'];
$day=$_GET['day'];
$sql="INSERT INTO days(Name,month,DaysOfWeek)  VALUES('".$name."',".$id.",".$day.")";
$conn->query($sql);
for ($x = 1; $x <= 4; $x++) {
    $sql="INSERT into shiffofday(Shiff,Day) VALUES (".$x.",(SELECT  days.Id FROM days ORDER BY days.Id desc LIMIT 1))";
    $conn->query($sql);
}


echo $id;
//if($conn->query($sql)=== TRUE){
//    echo "Thêm Ngày Thành Công Thành Công";
//}