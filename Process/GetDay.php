<?php
require_once ("../connect.php");

$id= $_GET['id'];

$sql="SELECT days.Id,days.Name,DaysOfWeek.NameDay FROM days,daysofweek WHERE days.week= ".$id." and days.DaysOfWeek=DaysOfWeek.Id";
$result=$conn->query($sql);
?>
<br>

<?php
if($result->num_rows>0){

    while ($row=$result->fetch_assoc()) {
        ?>
        <li><a href="#" style="border-top: 0.5px solid gainsboro;border-collapse: collapse" onclick="GetShiff(this,<?php    echo $row['Id'];   ?>)" class="legitRipple"><?php    echo $row['NameDay'];   ?></a></li>
        <?php
    }
}
?>
