<%-- 
    Document   : ManagerStore
    Created on : Oct 17, 2023, 10:32:16 PM
    Author     : DanPC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">

    <head>
        <title>Danh sách đơn hàng | Quản trị Admin</title>
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">

    </head>

    <body onload="time()" class="app sidebar-mini rtl">
        <!-- Navbar-->
        <header class="app-header">
            <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar"
                                            aria-label="Hide Sidebar"></a>
            <!-- Navbar Right Menu-->
            <ul class="app-nav">

                <li><a class="app-nav__item" style="margin-right: 10px" href="profile"><i class='bx bx-upload bx-rotate-180'></i> </a>
                    <!-- User Menu-->
                <li><a class="app-nav__item" href="logout"><i class='bx bx-log-out bx-rotate-180'></i> </a>

                </li>
            </ul>
        </header>
        <!-- Sidebar menu-->
        <div class="app-sidebar__overlay" data-toggle="sidebar"></div>
        <aside class="app-sidebar">
            <div class="app-sidebar__user"><img class="app-sidebar__user-avatar" src="sessionScope.pcc.image" width="50px"
                                                alt="User Image">
                <div>
                    <p class="app-sidebar__user-name"><b>${sessionScope.acc.username}</b></p>
                    <p class="app-sidebar__user-designation">Wellcome back</p>
                </div>
            </div>
            <hr>
            <ul class="app-menu">
                <li><a class="app-menu__item haha" href="#"><i class='app-menu__icon bx bx-cart-alt'></i>
                        <span class="app-menu__label">POS </span></a></li>

                <li><a class="app-menu__item" href="http://localhost:9999/onlineshopping/manageProduct"><i
                            class='app-menu__icon bx bx-purchase-tag-alt'></i><span class="app-menu__label">Manage Product</span></a>
                </li>
                <li><a class="app-menu__item" href="http://localhost:9999/onlineshopping/managerImportProduct"><i class='app-menu__icon bx bx-task'></i><span
                            class="app-menu__label">Manage Provider</span></a></li>
                <li><a class="app-menu__item active" href="http://localhost:9999/onlineshopping/managerStoreProduct"><i class='app-menu__icon bx bx-run'></i><span
                            class="app-menu__label">Manage Store
                        </span></a></li>
            </ul>
        </aside>
        <main class="app-content">
            <div class="app-title">
                <ul class="app-breadcrumb breadcrumb side">
                    <li class="breadcrumb-item active"><a href="#"><b>List Product</b></a></li>
                </ul>
                <div id="clock"></div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="tile">
                        <div class="tile-body">
                            <!--                            <div class="row element-button">
                                                            <div class="col-sm-2">
                            
                                                                <a class="btn btn-add btn-sm" href="form-add-bi-cam.html" title="Thêm"><i class="fas fa-plus"></i>
                                                                    Tạo mới</a>
                                                            </div>
                                                        </div>-->
                      

                        <table class="table table-hover table-bordered" id="sampleTable">
                            <thead>
                                <tr>
                                    <th width="10"><input type="checkbox" id="all"></th>
                                    <th>ID</th>
                                    <th>Product Name</th>
                                    <th>Quantity</th>
                                    <th>Size</th>
                                    <!--                                    <th>In Stock</th>-->
                                    <th>Check</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${listStore}" var="o" varStatus="loop">
                                    <tr>
                                        <td width="10"><input type="checkbox" name="check1" value="1"></td>
                                        <td id="idRow${loop.index}"></td>
                                        <td>
                                            <c:forEach items="${listProduct}" var="product">
                                                <c:if test="${o.product_id eq product.product_id}">
                                                    ${product.product_name}
                                                </c:if>
                                            </c:forEach>
                                        </td>
                                        <td>${o.total_import_quantity}</td>
                                        <td>${o.product_import_size}</td>

                                        <!--                                        <td>
                                        <%-- Get total_import_quantity value --%>
                                        <c:set var="totalImportQuantity" value="${o.total_import_quantity}" />

                                        <%-- Loop through listProductSize to find the matching quantity --%>
                                        <c:forEach items="${listProductSize}" var="product_size">
                                            <c:if test="${product_size.product_id eq o.product_id && product_size.size eq o.product_import_size}">
                                                <c:choose>
                                                    <c:when test="${not empty product_size.quantity}">
                                                        <%-- Subtract the quantity from total_import_quantity --%>
                                                        <c:set var="result" value="${totalImportQuantity - product_size.quantity}" />
                                                        <c:out value="${result}" />
                                                    </c:when>
                                                    <c:otherwise>
                                                        <c:out value="${totalImportQuantity}" />
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:if>
                                        </c:forEach>
                                    </td>-->

                                        <td>
                                            <c:forEach items="${listProductSize}" var="product_size">
                                                <c:if test="${product_size.product_id eq o.product_id && product_size.size eq o.product_import_size}">
                                                    <c:choose>
                                                        <c:when test="${not empty product_size.quantity}">
                                                            <c:choose>
                                                                <c:when test="${product_size.quantity > 0}">
                                                                    <span class="badge bg-success">In stock</span>
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <span class="badge bg-danger">Out of stock</span>
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <span class="badge bg-danger">Out of stock</span>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </c:if>
                                            </c:forEach>
                                        </td>

                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <!-- Essential javascripts for application to work-->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="src/jquery.table2excel.js"></script>
    <script src="js/main.js"></script>
    <!-- The javascript plugin to display page loading on top-->
    <script src="js/plugins/pace.min.js"></script>
    <!-- Page specific javascripts-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>
    <!-- Data table plugin-->
    <script type="text/javascript" src="js/plugins/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="js/plugins/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript">$('#sampleTable').DataTable();</script>
    <script>
        jQuery(function () {
            jQuery(".trash").click(function () {
                var import_id = jQuery(this).data('import-id');
                swal({
                    title: "Cảnh báo",
                    text: "Bạn có chắc chắn muốn xóa đơn hàng này?",
                    buttons: ["Hủy bỏ", "Đồng ý"],
                }).then((willDelete) => {
                    if (willDelete) {
                        $.ajax({
                            type: "GET",
                            url: `deleteImport?import_id=${import_id}`,
                            success: function (response) {
                                // Xử lý phản hồi thành công ở đây nếu cần
                                // Ví dụ: reload trang để cập nhật dữ liệu
                                location.reload();
                            },
                            error: function (xhr, status, error) {
                                // Xử lý lỗi ở đây nếu cần
                            }
                        });
                    }
                });
            });
        });

        oTable = $('#sampleTable').dataTable();
        $('#all').click(function (e) {
            $('#sampleTable tbody :checkbox').prop('checked', $(this).is(':checked'));
            e.stopImmediatePropagation();
        });
        //Thời Gian
        function time() {
            var today = new Date();
            var weekday = new Array(7);
            weekday[0] = "Chủ Nhật";
            weekday[1] = "Thứ Hai";
            weekday[2] = "Thứ Ba";
            weekday[3] = "Thứ Tư";
            weekday[4] = "Thứ Năm";
            weekday[5] = "Thứ Sáu";
            weekday[6] = "Thứ Bảy";
            var day = weekday[today.getDay()];
            var dd = today.getDate();
            var mm = today.getMonth() + 1;
            var yyyy = today.getFullYear();
            var h = today.getHours();
            var m = today.getMinutes();
            var s = today.getSeconds();
            m = checkTime(m);
            s = checkTime(s);
            nowTime = h + " giờ " + m + " phút " + s + " giây";
            if (dd < 10) {
                dd = '0' + dd
            }
            if (mm < 10) {
                mm = '0' + mm
            }
            today = day + ', ' + dd + '/' + mm + '/' + yyyy;
            tmp = '<span class="date"> ' + today + ' - ' + nowTime +
                    '</span>';
            document.getElementById("clock").innerHTML = tmp;
            clocktime = setTimeout("time()", "1000", "Javascript");

            function checkTime(i) {
                if (i < 10) {
                    i = "0" + i;
                }
                return i;
            }
        }
        //In dữ liệu
        var myApp = new function () {
            this.printTable = function () {
                var tab = document.getElementById('sampleTable');
                var win = window.open('', '', 'height=700,width=700');
                win.document.write(tab.outerHTML);
                win.document.close();
                win.print();
            }
        }
        //Modal
        $("#show-emp").on("click", function () {
            $("#ModalUP").modal({backdrop: false, keyboard: false})
        });
    </script>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            var table = document.getElementById("sampleTable");
            var rowCount = table.rows.length;
            for (var i = 1; i < rowCount; i++) {
                var cell = table.rows[i].cells[1];
                cell.textContent = i;
            }
        });
    </script>
</body>
</html>
