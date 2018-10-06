<?php
require_once ("../connect.php");
$dem=$_GET['dem'];
$day=$_GET['day'];
$idshiff=$_GET['idshiff'];
$sql="SELECT DISTINCT shiffdaystaff.Staff,staff.StaffName FROM staff,shiffdaystaff WHERE ";
$sql.=" shiffdaystaff.Staff=Staff.Id AND shiffdaystaff.DaysOfWeek=".$day." and shiffdaystaff.Shiff= ".$dem;
$sql.=" and shiffdaystaff.Staff not in (SELECT staffworkshiff.Staff FROM staffworkshiff WHERE staffworkshiff.ShiffWorkIn=".$idshiff.")";
$result=$conn->query($sql);
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        ?>
        <li onclick="AddStaffToShiff(<?php    echo $idshiff;   ?>,<?php    echo $row['Staff'];   ?>)"> <?php    echo $row['StaffName'];   ?></li>

        <?php
    }
}
else{
    echo "<h1>Không Có Ai Khác Đăng Ký Ca Này</h1>";
}
?>