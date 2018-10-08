var x;
var y;
var z;
var curentMonth;
function GetDay(id) {
    var http = new XMLHttpRequest();
    http.onreadystatechange = function () {
        if (http.readyState == 4 && http.status == 200) {
            var kq = http.responseText;
            $("#" + id).html(kq);
            curentMonth=id;
        }
    }
    http.open('GET', 'Process/GetDay.php?id=' + id, true);
    http.send();
};
function GetShiff(ele, id) {
    $("#WhatDay").text($(ele).text());

    var http = new XMLHttpRequest();
    http.onreadystatechange = function () {
        if (http.readyState == 4 && http.status == 200) {
            var kq = http.responseText;
            $("#ShiffList").html(kq);
            // alert(kq);
            GetStaff("#ListStaff1", $("#btnShiff1").attr("value"));
            GetStaff("#ListStaff2", $("#btnShiff2").attr("value"));
            GetStaff("#ListStaff3", $("#btnShiff3").attr("value"));
            GetStaff("#ListStaff4", $("#btnShiff4").attr("value"));
        }
    }
    http.open('GET', 'Process/GetShiff.php?id=' + id, true);
    http.send();
};
function GetStaff(ele, id) {
    var http = new XMLHttpRequest();
    http.onreadystatechange = function () {
        if (http.readyState == 4 && http.status == 200) {
            var kq = http.responseText;
            $(ele).html(kq);
        }
    }
    http.open('GET', 'Process/GetStaffWorkInshiff.php?shiff=' + id, true);
    http.send();
}
function DeleteStaffWork(id) {
    var http = new XMLHttpRequest();
    http.onreadystatechange = function () {
        if (http.readyState == 4 && http.status == 200) {
            var kq = http.responseText;
            GetStaff("#ListStaff1", $("#btnShiff1").attr("value"));
            GetStaff("#ListStaff2", $("#btnShiff2").attr("value"));
            GetStaff("#ListStaff3", $("#btnShiff3").attr("value"));
            GetStaff("#ListStaff4", $("#btnShiff4").attr("value"));
            GetListStaffTochoose(x, y, z);
        }
    }
    http.open('GET', 'Process/DeleteStaffInShiff.php?id=' + id, true);
    http.send();
}

function GetListStaffTochoose(dem, dayshiff, idshiff) {
    var http = new XMLHttpRequest();
    http.onreadystatechange = function () {
        if (http.readyState == 4 && http.status == 200) {
            var kq = http.responseText;
            // alert(kq);
            $("#HasLi" + dem).html(kq);
            // $(".title1").text("Nhân Viên Đăng Ký Ca " + dem);
            x = dem;
            y = dayshiff;
            z = idshiff;
        }
    }
    http.open('GET', 'Process/GetListStaffTochoose.php?dem=' + dem + "&day=" + dayshiff + "&idshiff=" + idshiff, true);
    http.send();
}
function ColapseAll() {
    $(".collapse").removeClass("in")
}
function AddStaffToShiff(idshiff, Staff) {
    // alert(idshiff+" "+Staff);
    // return;
    var http = new XMLHttpRequest();
    http.onreadystatechange = function () {
        if (http.readyState == 4 && http.status == 200) {
            var kq = http.responseText;
            // alert(kq);
            GetStaff("#ListStaff1", $("#btnShiff1").attr("value"));
            GetStaff("#ListStaff2", $("#btnShiff2").attr("value"));
            GetStaff("#ListStaff3", $("#btnShiff3").attr("value"));
            GetStaff("#ListStaff4", $("#btnShiff4").attr("value"));
            GetListStaffTochoose(x,y,z);
        }
    }
    http.open('GET', 'Process/AddStaffToShiff.php?idshiff='+idshiff+"&Staff="+Staff, true);
    http.send();
}
function AddDay(id) {
    if ($("#DataForAll").val() == "")
        alert("Chưa Nhập Dữ Liệu");
    else {
        var http = new XMLHttpRequest();
        http.onreadystatechange = function () {
            if (http.readyState == 4 && http.status == 200) {
                var kq = http.responseText;
                GetDay(kq);
                $("#DataForAll").val("")
            }
        }
        http.open('GET', 'Process/AddDay.php?name=' + $("#DataForAll").val() + "&id=" + id+"&day="+$("#DayofWeek"+id).val(), true);
        http.send();
    }
}
function AddWeek() {
    if ($("#DataForAll").val() == "")
        alert("Chưa Nhập Dữ Liệu");
    else {
        var http = new XMLHttpRequest();
        http.onreadystatechange = function () {
            if (http.readyState == 4 && http.status == 200) {
                var kq = http.responseText;
                alert(kq);
                location.reload();
            }
        }
        http.open('GET', 'Process/AddWeek.php?name=' + $("#DataForAll").val(), true);
        http.send();
    }
}
function DeleteDay(id) {
    if(confirm("Xóa Ngày Này ???"))
    {
        var http = new XMLHttpRequest();
        http.onreadystatechange = function () {
            if (http.readyState == 4 && http.status == 200) {
                var kq = http.responseText;

                GetDay(curentMonth);
            }
        }
        http.open('GET', 'Process/DeleteDay.php?id=' + id, true);
        http.send();
    }else {
        return;
    }

}