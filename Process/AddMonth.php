<?php
require_once ("../connect.php");
$name=$_GET['name'];
$sql="INSERT into month(Name) VALUES('".$name."')";
if($conn->query($sql)===TRUE){
    echo "Thêm Tháng Thành Công";
}