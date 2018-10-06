<?php
require_once ('../connect.php');
$id=$_GET['id'];
$sql="DELETE FROM staffworkshiff WHERE staffworkshiff.ShiffWorkIn in(";

$sql.= " SELECT shiffofday.Id FROM shiffofday WHERE shiffofday.Day=".$id.")";

$conn->query($sql);
$sql="DELETE FROM shiffofday WHERE shiffofday.Day=".$id;
$conn->query($sql);
$sql="DELETE FROM days WHERE days.Id=".$id;
$conn->query($sql);