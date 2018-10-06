<?php require("connect.php"); ?>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Văn Đạt Manager</title>

    <!-- Global stylesheets -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900" rel="stylesheet"
          type="text/css">
    <link href="assets/css/icons/icomoon/styles.css" rel="stylesheet" type="text/css">
    <link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="assets/css/core.css" rel="stylesheet" type="text/css">
    <link href="assets/css/components.css" rel="stylesheet" type="text/css">
    <link href="assets/css/colors.css" rel="stylesheet" type="text/css">
    <!-- /global stylesheets -->

    <!-- Core JS files -->
    <script type="text/javascript" src="assets/js/plugins/loaders/pace.min.js"></script>
    <script type="text/javascript" src="Script/jquery.min.js"></script>
    <script type="text/javascript" src="assets/js/core/libraries/bootstrap.min.js"></script>
    <script type="text/javascript" src="assets/js/plugins/loaders/blockui.min.js"></script>
    <!-- /core JS files -->
    <script type="text/javascript" src="assets/js/core/app.js"></script>
    <script type="text/javascript" src="assets/js/pages/dashboard.js"></script>

    <script type="text/javascript" src="assets/js/plugins/ui/ripple.min.js"></script>
    <!-- /theme JS files -->
    <link rel="stylesheet" href="style/style.css">
</head>

<body class="navbar-bottom  pace-done">

<div class="pace  pace-inactive">
    <div class="pace-progress" data-progress-text="100%" data-progress="99"
         style="transform: translate3d(100%, 0px, 0px);">
        <div class="pace-progress-inner"></div>
    </div>
    <div class="pace-activity"></div>
</div>

<!-- Main navbar -->
<div class="navbar navbar-inverse bg-indigo">
    <div class="navbar-header">
        <a class="navbar-brand" href="#"><img src="assets/images/logo_light.png" alt=""></a>

        <ul class="nav navbar-nav visible-xs-block">
            <li><a data-toggle="collapse" data-target="#navbar-mobile" class="legitRipple"><i
                            class="icon-tree5"></i></a></li>
            <li><a class="sidebar-mobile-main-toggle legitRipple"><i class="icon-paragraph-justify3"></i></a></li>
        </ul>
    </div>

    <div class="navbar-collapse collapse" id="navbar-mobile">
        <ul class="nav navbar-nav">
            <li><a class="sidebar-control sidebar-main-toggle hidden-xs legitRipple"><i
                            class="icon-paragraph-justify3"></i></a></li>


        </ul>

        <p class="navbar-text"><span class="label bg-success-400">Online</span></p>
    </div>
</div>
<!-- /main navbar -->


<!-- Page header -->
<div class="page-header">

    <div class="page-header-content">
        <div class="page-title">
            <div class="col-md-4">
                <label for="data"><h3>Nhập Tên Ngày / Tên Tháng  Vào Đây</h3></label>
                <input type="text" name="data" class="form-control" placeholder="Write Something here" id="DataForAll">
            </div>
        </div>
        <div class="heading-elements">
            <div class="heading-btn-group">
                <a href="#" onclick="ColapseAll();" class="btn btn-link btn-float text-size-small has-text legitRipple"><i
                            class="icon-calendar5 text-indigo-400"></i><span>ColapseAll</span></a>
                <a href="Staff.php" class="btn btn-link btn-float text-size-small has-text legitRipple"><i
                            class="icon-calculator text-indigo-400"></i><span>Edit Staff</span></a>
            </div>
        </div>


    </div>
</div>
<!-- /page header -->
<?php
$sql = "SELECT * FROM month ORDER BY Id desc";
$result = $conn->query($sql);
?>

<!-- Page container -->
<div class="page-container" style="min-height:179.97499084472656px">

    <!-- Page content -->
    <div class="page-content">

        <!-- Main sidebar -->
        <div class="sidebar sidebar-main sidebar-default">
            <div class="sidebar-content">

                <!-- Main navigation -->
                <div class="sidebar-category sidebar-category-visible">

                    <div class="category-content no-padding">
                        <ul class="navigation navigation-main navigation-accordion">

                            <!-- Main -->
                            <li class="navigation-header"><span>Main</span> <i class="icon-paragraph-left2" title=""
                                                                               data-original-title="Main pages"></i>
                            </li>
                            <li class=""><a href="#" class="legitRipple" onclick="AddMonth()"><i class="icon-plus3"></i>
                                    <span>ADD MONTH</span></a>
                            </li>
                            <li><a href="#" style="text-align: center;font-size: 16px" class="legitRipple"><i class="icon-home4" style="font-size: 20px;"></i>
                                    <span>Tháng</span></a></li>
                            <!-- Layout -->
                            <?php
                            if ($result->num_rows > 0) {
                                while ($row = $result->fetch_assoc()) {
                                    ?>
                                    <li style="border-top: 2px solid cornflowerblue;border-bottom: 2px solid cornflowerblue;border-collapse: collapse">
                                        <a href="#" class="has-ul legitRipple"
                                           onclick="GetDay(<?php echo $row['Id'] ?>);"><i class="icon-sort"></i>
                                            <span><?php echo $row['Name']; ?></span></a>
                                        <ul class="hidden-ul" id="<?php echo $row['Id'] ?>">


                                        </ul>
                                    </li>
                                    <?php
                                }
                            }
                            ?>
                        </ul>
                    </div>
                </div>
                <!-- /main navigation -->

            </div>
        </div>
        <!-- /main sidebar -->


        <!-- Main content -->
        <div class="content-wrapper">
            <div class="col-md-12">
                <div class="row" style="text-align: center">
                    <h1 id="WhatDay">Ngày Nào đó</h1>
                </div>
            </div>
            <div id="ShiffList">
            </div>
            <div id="tog">
                <div class="panel" style="position: fixed;left:0px;top:50px;z-index: 999">
                    <div class="col-md-5 collapse" id="collapse1"
                         style="width: 300px;background-color: white;min-height: 600px;max-height: 700px;overflow: scroll">
                        <h2 class="title1">Các Nhân Viên Đăng Ký Ca Này</h2>
                        <ul id="HasLi1">
                            <li>ádas</li>
                            <li>ádasd</li>
                        </ul>
                    </div>
                </div>
                <div class="panel" style="position: fixed;left:0px; z-index: 999;top:50px">
                    <div class="col-md-5 collapse" id="collapse2"
                         style="width: 300px;background-color: white;min-height: 600px;max-height: 700px;overflow: scroll">
                        <h2 class="title1">Các Nhân Viên Đăng Ký Ca Này</h2>
                        <ul id="HasLi2">
                            <li>ádas</li>

                        </ul>
                    </div>
                </div>
                <div class="panel" style="position: fixed;left:0px; z-index: 999;top:50px">
                    <div class="col-md-5 collapse" id="collapse3"
                         style="width: 300px; background-color: white;min-height: 600px;max-height: 700px;overflow: scroll;">
                        <h2 class="title1">Các Nhân Viên Đăng Ký Ca Này</h2>
                        <ul id="HasLi3">
                            <li>ádas</li>

                        </ul>
                    </div>
                </div>
                <div class="panel" style="position: fixed;left:0px; z-index: 999;top:50px">
                    <div class="col-md-5 collapse" id="collapse4"
                         style="width: 300px; background-color: white;min-height: 600px;max-height: 700px;overflow: scroll">
                        <h2 class="title1">Các Nhân Viên Đăng Ký Ca Này</h2>
                        <ul id="HasLi4">
                            <li>ádas</li>

                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- /main content -->

    </div>
    <!-- /page content -->

</div>
<!-- /page container -->


<!-- Footer -->
<div class="navbar navbar-default navbar-fixed-bottom footer">
    <ul class="nav navbar-nav visible-xs-block">
        <li><a class="text-center collapsed legitRipple" data-toggle="collapse" data-target="#footer"><i
                        class="icon-circle-up2"></i></a></li>
    </ul>

    <div class="navbar-collapse collapse" id="footer">
        <div class="navbar-text">
            © 2015. <a href="#" class="navbar-link">Limitless Web App Kit</a> by <a
                    href="#" class="navbar-link" target="_blank">Eugene Kopyov</a>
        </div>

        <div class="navbar-right">
            <ul class="nav navbar-nav">
                <li><a href="#" class="legitRipple">About</a></li>
                <li><a href="#" class="legitRipple">Terms</a></li>
                <li><a href="#" class="legitRipple">Contact</a></li>
            </ul>
        </div>
    </div>
</div>
<!-- /footer -->
<script src="Script/myscript.js"></script>
</body>
</html>