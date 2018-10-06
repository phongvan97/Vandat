<?php
require_once("../connect.php");
$shiff = $_GET['shiff'];
$sql = "SELECT staff.StaffName,staffworkshiff.Id FROM staff,staffworkshiff ";
$sql .= " WHERE  staffworkshiff.ShiffWorkIn=" . $shiff . " and staff.Id=staffworkshiff.Staff";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        ?>
        <tr>
            <td><?php echo $row['StaffName'] ?></td>
            <td><a href="#" onclick="DeleteStaffWork(<?php echo $row['Id'] ?>)">Delete</a></td>
        </tr>
        <?php
    }
}
?>

