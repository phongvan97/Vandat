<?php
require_once ("../connect.php");
$name=$_GET['name'];
$sql="INSERT into week(Name) VALUES('".$name."')";
$conn->query($sql);

for ($x=1;$x<=7;$x++){
    $sql="INSERT INTO days(days.Week,days.DaysOfWeek) VALUES ((SELECT week.Id FROM week ORDER BY week.Id DESC LIMIT 1),".$x.")";
    $conn->query($sql);
    for ($y=1;$y<=2;$y++){
        $sql="INSERT INTO shiffofday(Shiff,Day) VALUES(".$y.",(SELECT days.Id FROM days ORDER BY days.Id DESC LIMIT 1 ))";
        $conn->query($sql);
    }
}
echo "Thêm Tháng Thành Công";

//if($conn->query($sql)===TRUE){
//    echo "Thêm Tháng Thành Công";
//}