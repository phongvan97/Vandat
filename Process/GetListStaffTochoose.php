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
    ?>
    <select class="form-control" style="font-size: 22px" id="lisPos<?php echo $dem?>">
        <option value="1">Runner</option>
        <option value="2">Tầng 1</option>
        <option value="3">Tầng 2</option>
        <option value="4">Rửa Bát</option>
        <option value="5">Thu Ngân</option>
        <option value="6">Bếp</option>
    </select>
    <?php
    while ($row = $result->fetch_assoc()) {
        ?>
        <li onclick="AddStaffToShiff(<?php    echo $idshiff;   ?>,<?php    echo $row['Staff'];   ?>,<?php echo $dem?>)"> <?php    echo $row['StaffName'];   ?></li>

        <?php
    }
}
else{
    echo "<h1>Không Có Ai Khác Đăng Ký Ca Này</h1>";
}
?>