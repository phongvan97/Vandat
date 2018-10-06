<?php require("connect.php"); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="assets/css/icons/icomoon/styles.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="style/style2.css">
    <link rel="stylesheet" href="">
    <script type="text/javascript" src="Script/jquery.min.js"></script>
    <script type="text/javascript" src="assets/js/core/libraries/bootstrap.min.js"></script>
    <script src="Script/Staff.js"></script>
</head>
<body>
<div class="container">
    <div style="height: 50px" class="row">
        <div class="col-md-1">
            <a href="http://localhost/vandat/">
                <button class="btn btn-success">Back</button>
            </a>

        </div>
        <div class="col-md-2 text-right"><label for="" class="control-label">Name : </label></div>
        <div class="col-md-3">
                <input name="name" type="text" class="form-control" autocomplete="off" id="Data_name_staff" placeholder="Enter Name Here ....">
        </div>
        <div class="col-md-3">
            <button onclick="AddOneStaff();" class="btn btn-primary">Add Staff</button>
        </div>

    </div>
    <div class="row">
        <div class="col-md-2">
            <ul>
                <?php
                $sql = "Select * from staff";
                $result = $conn->query($sql);
                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                        ?>
                        <li class="listStaff" id="listStaffItem<?php echo $row['Id'] ?>"
                            onclick="GetStaffDetail(<?php echo $row['Id'] ?>)"><?php echo $row['StaffName'] ?></li>
                        <?php
                    }
                }
                ?>
            </ul>
        </div>
        <div class="col-md-10">
            <h1>Nhân Viên</h1>
            <div class="grid-container">
                <div class="grid-item"></div>
                <div class="grid-item">Thứ 2</div>
                <div class="grid-item">Thứ 3</div>
                <div class="grid-item">Thứ 4</div>
                <div class="grid-item">Thứ 5</div>
                <div class="grid-item">Thứ 6</div>
                <div class="grid-item">Thứ 7</div>
                <div class="grid-item">Chủ Nhật</div>
                <div class="grid-item">Ca 1</div>
                <div class="grid-item" id="1-1">1-1</div>
                <div class="grid-item" id="1-2">1-2</div>
                <div class="grid-item" id="1-3">1-3</div>
                <div class="grid-item" id="1-4">1-4</div>
                <div class="grid-item" id="1-5">1-5</div>
                <div class="grid-item" id="1-6">1-6</div>
                <div class="grid-item" id="1-7">1-7</div>
                <div class="grid-item">Ca 2</div>
                <div class="grid-item" id="2-1">2-1</div>
                <div class="grid-item" id="2-2">2-2</div>
                <div class="grid-item" id="2-3">2-3</div>
                <div class="grid-item" id="2-4">2-4</div>
                <div class="grid-item" id="2-5">2-5</div>
                <div class="grid-item" id="2-6">2-6</div>
                <div class="grid-item" id="2-7">2-7</div>
                <div class="grid-item">Ca 3</div>
                <div class="grid-item" id="3-1">3-1</div>
                <div class="grid-item" id="3-2">3-2</div>
                <div class="grid-item" id="3-3">3-3</div>
                <div class="grid-item" id="3-4">3-4</div>
                <div class="grid-item" id="3-5">3-5</div>
                <div class="grid-item" id="3-6">3-6</div>
                <div class="grid-item" id="3-7">3-7</div>
                <div class="grid-item">Ca 4</div>
                <div class="grid-item" id="4-1">4-1</div>
                <div class="grid-item" id="4-2">4-2</div>
                <div class="grid-item" id="4-3">4-3</div>
                <div class="grid-item" id="4-4">4-4</div>
                <div class="grid-item" id="4-5">4-5</div>
                <div class="grid-item" id="4-6">4-6</div>
                <div class="grid-item" id="4-7">4-7</div>

            </div>
        </div>
    </div>
</div>
</body>
</html>