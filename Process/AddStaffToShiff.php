<?php
require_once ("../connect.php");
$idshiff=$_GET['idshiff'];
$Staff=$_GET['Staff'];
$sql="INSERT INTO staffworkshiff(Staff,ShiffWorkIn)   VALUES (".$Staff.",".$idshiff.")";
$conn->query($sql);
echo "";