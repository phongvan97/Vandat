function GetStaffDetail(id) {
    $(".listStaff").css("background-color","white");
    $("#listStaffItem"+id).css("background-color","#5391EE");
    for (var i = 1; i <= 2; i++) {
        for (var j = 1; j <= 7; j++) {
            GetStatus(id, i, j);
        }
    }
}
function GetStatus(id, i, j) {
    var http = new XMLHttpRequest();
    http.onreadystatechange = function () {
        if (http.readyState == 4 && http.status == 200) {
            var kq = http.responseText;
            if (kq == "yes") {
                $("#" + i + "-" + j).html("<h1 class='icon-checkmark-circle' onclick='UnSign(" + id + "," + i + "," + j + ")' style='font-size:35px '></h1>");
            }
            else {
                $("#" + i + "-" + j).html("<h1 class=' icon-plus2' onclick='SignUp(" + id + "," + i + "," + j + ")' style='font-size:35px '></h1>");
            }
        }

    }
    http.open('GET', 'Process/GetStatus.php?staff=' + id + "&shiff=" + i + "&day=" + j, true);
    http.send();
}
function UnSign(id, i, j) {

    var http = new XMLHttpRequest();
    http.onreadystatechange = function () {
        if (http.readyState == 4 && http.status == 200) {
            var kq = http.responseText;
            // alert(kq);
            GetStaffDetail(id);

        }
    }
    http.open('GET', 'Process/UnSign.php?staff=' + id + "&shiff=" + i + "&day=" + j, true);
    http.send();

}
function SignUp(id, i, j) {
    var http = new XMLHttpRequest();
    http.onreadystatechange = function () {
        if (http.readyState == 4 && http.status == 200) {
            var kq = http.responseText;
            GetStaffDetail(id);
        }
    }
    http.open('GET', 'Process/SignUp.php?staff=' + id + "&shiff=" + i + "&day=" + j, true);
    http.send();

}
function AddOneStaff() {
    if($("#Data_name_staff").val()=="")
        alert("Hãy Nhập Tên Để Thêm !!!");
    else {
        var http = new XMLHttpRequest();
        http.onreadystatechange = function () {
            if (http.readyState == 4 && http.status == 200) {
                var kq = http.responseText;
                alert(kq);
                location.reload();
            }
        }
        http.open('GET', 'Process/AddOneStaff.php?staffname='+$("#Data_name_staff").val(), true);
        http.send();
    }
}