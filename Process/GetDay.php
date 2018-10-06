<?php
require_once ("../connect.php");

$id= $_GET['id'];

$sql="SELECT days.Id,days.Name,DaysOfWeek.NameDay FROM days,daysofweek WHERE days.Month= ".$id." and days.DaysOfWeek=DaysOfWeek.Id";
$result=$conn->query($sql);
?>
<li><a href='#'class='legitRipple' onclick='AddDay(<?php    echo $id;   ?>)' >Add Day</a>
</li>
<li><select name="" class="form-control legitRipple" id="DayofWeek<?php    echo $id;   ?>">
        <option value="1">Thứ Hai</option>
        <option value="2">Thứ Ba</option>
        <option value="3">Thứ Tư</option>
        <option value="4">Thứ Năm</option>
        <option value="5">Thứ Sáu</option>
        <option value="6">Thứ 7</option>
        <option value="7">Chủ Nhật</option>
    </select>
</li>

<br>

<?php
if($result->num_rows>0){

    while ($row=$result->fetch_assoc()) {
        ?>
        <li><a href="#" style="border-top: 0.5px solid gainsboro;border-collapse: collapse" onclick="GetShiff(this,<?php    echo $row['Id'];   ?>)" class="legitRipple"><?php    echo $row['Name']."-".$row['NameDay'];   ?><span onclick="DeleteDay(<?php    echo $row['Id'];   ?>)" class=" icon-cancel-square2" style="float: right;font-size: 20px"></span></a></li>
        <?php
    }
}
?>
