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
            <td><select name="" class="form-control" id=""style="font-size: 20px;font-weight: bolder">
                    <option value=""style="font-size: 25px;font-weight: bolder"><h1>Runner</h1></option>
                    <option value=""style="font-size: 25px;font-weight: bolder"><h1>Tầng 1</h1></option>
                    <option value=""style="font-size: 25px;font-weight: bolder"><h1>Tầng 2</h1></option>
                    <option value=""style="font-size: 25px;font-weight: bolder"><h1>Rửa Bát</h1></option>
                    <option value=""style="font-size: 25px;font-weight: bolder"><h1>Bếp</h1></option>
                </select></td>
            <td><a href="#" onclick="DeleteStaffWork(<?php echo $row['Id'] ?>)">Delete</a></td>
        </tr>
        <?php
    }
}
?>

