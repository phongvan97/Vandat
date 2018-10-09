<?php
require_once ("../connect.php");
$idshiff=$_GET['idshiff'];
$Staff=$_GET['Staff'];
$pos=$_GET['pos'];
$sql="INSERT INTO staffworkshiff(Staff,ShiffWorkIn,Pos)   VALUES (".$Staff.",".$idshiff.",".$pos.")";
$conn->query($sql);
echo "";