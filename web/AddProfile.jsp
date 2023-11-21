<%-- 
    Document   : AddProfile
    Created on : Oct 15, 2023, 6:04:16 PM
    Author     : DanPC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Thêm nhân viên | Quản trị Admin</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Main CSS-->
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
        <!-- or -->
        <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
        <!-- Font-icon css-->
        <link rel="stylesheet" type="text/css"
              href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="http://code.jquery.com/jquery.min.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">
        <script>
            function getSelectedValue() {
                var selectedValue = document.getElementById("exampleSelect2").value;
                console.log("Selected gender: " + selectedValue);
                // Do something with the selected value here
            }

            function readURL(input, thumbimage) {
                if (input.files && input.files[0]) { //Sử dụng  cho Firefox - chrome
                    var reader = new FileReader();
                    reader.onload = function (e) {
                        $("#thumbimage").attr('src', e.target.result);
                    }
                    reader.readAsDataURL(input.files[0]);
                } else { // Sử dụng cho IE
                    $("#thumbimage").attr('src', input.value);

                }
                $("#thumbimage").show();
                $('.filename').text($("#uploadfile").val());
                $('.Choicefile').css('background', '#14142B');
                $('.Choicefile').css('cursor', 'default');
                $(".removeimg").show();
                $(".Choicefile").unbind('click');

            }
            $(document).ready(function () {
                $(".Choicefile").bind('click', function () {
                    $("#uploadfile").click();

                });
                $(".removeimg").click(function () {
                    $("#thumbimage").attr('src', '').hide();
                    $("#myfileupload").html('<input type="file" id="uploadfile"  onchange="readURL(this);" />');
                    $(".removeimg").hide();
                    $(".Choicefile").bind('click', function () {
                        $("#uploadfile").click();
                    });
                    $('.Choicefile').css('background', '#14142B');
                    $('.Choicefile').css('cursor', 'pointer');
                    $(".filename").text("");
                });
            })
        </script>
    </head>

    <body class="app sidebar-mini rtl">
        <style>
            .Choicefile {
                display: block;
                background: #14142B;
                border: 1px solid #fff;
                color: #fff;
                width: 150px;
                text-align: center;
                text-decoration: none;
                cursor: pointer;
                padding: 5px 0px;
                border-radius: 5px;
                font-weight: 500;
                align-items: center;
                justify-content: center;
            }

            .Choicefile:hover {
                text-decoration: none;
                color: white;
            }

            #uploadfile,
            .removeimg {
                display: none;
            }

            #thumbbox {
                position: relative;
                width: 100%;
                margin-bottom: 20px;
            }

            .removeimg {
                height: 25px;
                position: absolute;
                background-repeat: no-repeat;
                top: 5px;
                left: 5px;
                background-size: 25px;
                width: 25px;
                /* border: 3px solid red; */
                border-radius: 50%;

            }

            .removeimg::before {
                -webkit-box-sizing: border-box;
                box-sizing: border-box;
                content: '';
                border: 1px solid red;
                background: red;
                text-align: center;
                display: block;
                margin-top: 11px;
                transform: rotate(45deg);
            }

            .removeimg::after {
                /* color: #FFF; */
                /* background-color: #DC403B; */
                content: '';
                background: red;
                border: 1px solid red;
                text-align: center;
                display: block;
                transform: rotate(-45deg);
                margin-top: -2px;
            }
        </style>
        <!-- Navbar-->
        <header class="app-header">
            <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar"
                                            aria-label="Hide Sidebar"></a>
            <!-- Navbar Right Menu-->
            <ul class="app-nav">


                <!-- User Menu-->
                <li><a class="app-nav__item" href="logout"><i class='bx bx-log-out bx-rotate-180'></i> </a>

                </li>
            </ul>
        </header>
        <!-- Sidebar menu-->
        <div class="app-sidebar__overlay" data-toggle="sidebar"></div>
        <aside class="app-sidebar">
            <div class="app-sidebar__user"><img class="app-sidebar__user-avatar" src="https://scontent.fhan14-2.fna.fbcdn.net/v/t39.30808-6/329798906_148372241455792_6461458303001770253_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=5f2048&_nc_ohc=Rh7Ty7JJjVgAX9iGCyy&_nc_ht=scontent.fhan14-2.fna&oh=00_AfCDdCaReLuUhpYhuoiuvPtrUQwr0ylyiaf91i-5IcJ_kQ&oe=652D6C27" width="50px"
                                                alt="User Image">
                <div>
                    <p class="app-sidebar__user-name"><b>${sessionScope.acc.username}</b></p>
                    <p class="app-sidebar__user-designation">Welcome back</p>
                </div>
            </div>
            <hr>
            
        </aside>
        <main class="app-content">
            <div class="app-title">
                <ul class="app-breadcrumb breadcrumb">
                    <li class="breadcrumb-item"></li>
                    <li class="breadcrumb-item"><a href="addNewProfile">Add account</a></li>
                </ul>
            </div>
            <div class="row">
                <div class="col-md-12">

                    <div class="tile">

                        <h3 class="tile-title">Add account</h3>
                        <div class="tile-body">
                            <div class="row element-button">
                                <div class="col-sm-2">
                                    <a href="allAccount" class="btn btn-add btn-sm"><b><i
                                                class="fas fa-backward"></i> Back</b></a>
                                </div>

                            </div>

                            <form class="row" method="POST" action="addNewProfile">
<!--                                <div class="form-group col-md-4">
                                    <label class="control-label">ID</label>
                                    <input name="profile_id" class="form-control" type="text" required>
                                </div>-->
                                <div class="form-group col-md-4">
                                    <label class="control-label">Full name</label>
                                    <input name="full_name" class="form-control" type="text" required>
                                </div>
                                <div class="form-group col-md-4">
                                    <label class="control-label">Email</label>
                                    <input  name="email" class="form-control" type="text" required>
                                </div>
                                <div class="form-group col-md-4">
                                    <label class="control-label">Address</label>
                                    <input name = "address" class="form-control" type="text" required>
                                </div>
                                <div class="form-group  col-md-4">
                                    <label class="control-label">Phone</label>
                                    <input name = "phone" class="form-control" type="number" required>
                                </div>
                                <div class="form-group col-md-4">
                                    <label class="control-label">Gender</label>
                                    <select name="gender" class="form-control" id="exampleSelect2" required onchange="getSelectedValue()">
                                        <option>-- Choose gender --</option>
                                        <option value="1">Male</option>
                                        <option value="0">Female</option>
                                    </select>
                                </div>

                                <div class="form-group col-md-4">
                                    <label class="control-label">Date of birth</label>
                                    <input name="dob" class="form-control" type="date">
                                </div>
                                <div class="form-group col-md-4">
                                    <label class="control-label">Username</label>
                                    <input name="username" class="form-control" type="text">
                                </div>
                                <div class="form-group col-md-4">
                                    <label class="control-label">Password</label>
                                    <input name="password" class="form-control" type="password">
                                </div>


                                <div class="form-group col-md-4">
                                    <label for="exampleSelect1" class="control-label">Role</label>
                                    <select class="form-control" id="exampleSelect1" name="role_id">
                                        <option value="">-- Choose Role --</option>
                                        <c:forEach items="${list}" var="o">                   
                                            <option value="${o.role_id}">${o.role_name}</option>
                                        </c:forEach>
                                    </select>
                                </div> 
                                <!--                                <div class="form-group col-md-4">
                                                                    <label class="control-label">Image</label>
                                                                    <input name="image" class="form-control" type="text">
                                                                </div>-->

<!--                                <div class="form-group col-md-12">
                                    <label class="control-label">Image</label>
                                    <div id="myfileupload">
                                        <input type="file" id="uploadfile" name="image" onchange="readURL(this);" />
                                    </div>
                                    <div id="thumbbox">
                                        <img height="350" width="350" alt="Thumb image" id="thumbimage" style="display: none" />
                                        <a class="removeimg" href="javascript:"></a>
                                    </div>
                                    <div id="boxchoice">
                                        <a href="javascript:" class="Choicefile"><i class='bx bx-upload'></i></a>
                                        <p style="clear:both"></p>
                                    </div>
                                </div>-->
                                <br>
                                <button class="btn btn-save" type="submit" style="margin-right: 30px">Save</button>
                                <a class="btn btn-cancel" href="/onlineshopping/allAccount">Cancer</a>
                            </form>
                        </div>

                    </div>
                </div>
            </div>

        </main>


        <!--
        MODAL
        -->
        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
             data-backdrop="static" data-keyboard="false">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">

                    <div class="modal-body">
                        <div class="row">
                            <div class="form-group  col-md-12">
                                <span class="thong-tin-thanh-toan">
                                    <h5>Tạo chức vụ mới</h5>
                                </span>
                            </div>
                            <div class="form-group col-md-12">
                                <label class="control-label">Nhập tên chức vụ mới</label>
                                <input class="form-control" type="text" required>
                            </div>
                        </div>
                        <BR>
                        <button class="btn btn-save" type="button">Lưu lại</button>
                        <a class="btn btn-cancel" data-dismiss="modal" href="#">Hủy bỏ</a>
                        <BR>
                    </div>
                    <div class="modal-footer">
                    </div>
                </div>
            </div>
        </div>
        <!--
        MODAL
        -->


        <!-- Essential javascripts for application to work-->
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/main.js"></script>
        <!-- The javascript plugin to display page loading on top-->
        <script src="js/plugins/pace.min.js"></script>


    </body>

</html>
