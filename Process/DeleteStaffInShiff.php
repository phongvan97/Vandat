<?php
require_once("../connect.php");
$id=$_GET[id];
$sql="DELETE FROM staffworkshiff WHERE staffworkshiff.Id=".$id;
if ($conn->query($sql) === TRUE) {
    echo "Record deleted successfully";
} else {
    echo "Error deleting record: " . $conn->error;
}