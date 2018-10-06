<?php
require_once("../connect.php");
$id = $_GET['id'];
$sql = "SELECT shiffofday.Id,shiffofday.Shiff,Shiff.Name as NameOfShiff, days.Name as NameOfDay,days.DaysOfWeek,DaysOfWeek.NameDay FROM Shiff,shiffofday,days,DaysOfWeek ";
$sql .= " WHERE shiffofday.Day=" . $id . " AND shiffofday.Day=days.Id and days.DaysOfWeek=DaysOfWeek.Id AND shiffofday.Shiff=Shiff.Id ORDER BY shiffofday.Shiff asc";
$result = $conn->query($sql);
$dem = 1;
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        ?>
        <div class="col-md-3">
            <div class="row ShiffItem">
                <button type="button" id="btnShiff<?php echo $dem; ?>" onclick="GetListStaffTochoose(<?php echo $dem; ?>,<?php echo $row['DaysOfWeek']; ?>,<?php echo $row['Id']; ?>)" class="btn btn-success" data-parent="#tog" data-toggle="collapse" data-target="#collapse<?php echo $dem; ?>"
                        value="<?php echo $row['Id']; ?>">
                    <?php echo $row['NameOfShiff'] ?>
                </button>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
            </div>
            <div class="row">
                <table class="table table-bordered" style="width: 80%;margin-left: 10% ;text-align: center">
                    <thead>
                    <tr>
                        <th style="text-align: center">Name</th>
                        <th style="text-align: center">AcTion</th>
                    </tr>
                    </thead>
                    <tbody id="ListStaff<?php echo $dem; ?>">
                    <tr>
                        <td>ádas</td>
                        <td>ádas</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <?php
        $dem++;
    }
}