<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.store.model.StoreService"%>
<%@ page import="com.store.model.StoreVO"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="<%=request.getContextPath() %>/resources/icon/pngkey.com-gps-icon-png-5131691.png" type="image/x-icon" />
    <title>Family Rent || 後台管理系統</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/1d9dcf12aa.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/bootstrap.min.css"> <!-- 測試用路徑 進專案要改 -->
    <script src="<%=request.getContextPath() %>/resources/js/bootstrap.bundle.min.js"></script> <!-- 測試用路徑 進專案要改 -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/Background_Home.css"> <!-- 首頁CSS 測試用路徑 進專案要改 -->

</head>

<body>
    <jsp:useBean id = "dao" class="com.store.model.StoreService" />
    <!--     上面header欄位 -->
    <nav class="header">
        <h1>Family Rent 後台管理系統</h1>
        <ul class="store nav " id="emp">
            <label for=""></label>
            <c:forEach items="${dao.all}" var="store">
            	 <c:if test="${store.st_no == employee.st_no}" >
                 	<li>${store.st_name}</li>
                 </c:if>
            </c:forEach>
            <li>${employee.emp_name}<a href="<%=request.getContextPath() %>/EmployeeLogin" style="display: inline;"><i class="fa-solid fa-right-from-bracket"></i></a></li>
        </ul>
    </nav>
    <!-- <iframe src="back_end_Header.jsp" frameborder="0" style="width: 100%;" class="header"></iframe> -->
    <!-- 左側功能欄位 -->
    <main class="main">
        <aside class="aside;">
            <!-- 訂單管理 -->
            <nav class="nav-list1">
                <ul>
                    <li class="lss"><i class="fa-solid fa-file-circle-plus"></i>訂單管理
                        <div class="div2" style="display:none;">
                            <a href=""><i class="fa-solid fa-circle-arrow-right"></i>查詢訂單</a><br>
                            <a href=""><i class="fa-solid fa-circle-arrow-right"></i>取消訂單</a><br>
                            <a href=""><i class="fa-solid fa-circle-arrow-right"></i>查詢訂單</a>
                        </div>
                    </li>

                    <!-- 會員資料管理 -->
                    <li class="lss"><i class="fa-solid fa-users"></i>會員資料管理
                        <div class="div2" style="display:none;">
                            <a href=""><i class="fa-solid fa-circle-arrow-right"></i></i>新增會員</a><br>
                            <a href=""><i class="fa-solid fa-circle-arrow-right"></i>修改會員資料</a><br>
                            <a href=""><i class="fa-solid fa-circle-arrow-right"></i>查詢會員資料</a>
                        </div>
                    </li>
                    <!-- 出車還車管理 -->
                    <li class="lss"><i class="fa fa-taxi" aria-hidden="true"></i>出車還車管理
                        <div class="div2" style="display:none;">
                            <a href=""><i class="fa-solid fa-circle-arrow-right"></i>出車</a><br>
                            <a href=""><i class="fa-solid fa-circle-arrow-right"></i>還車</a><br>
                            <a href=""><i class="fa-solid fa-circle-arrow-right"></i>未結案查詢</a>
                        </div>
                    </li>
                    <!-- 調車管理 -->
                    <li class="lss"><i class="fa-solid fa-arrow-right-arrow-left"></i>車輛調度管理
                        
                        <div class="div2">
                            <a href="cardispatchrecord.html"><i class="fa-solid fa-circle-arrow-right"></i>調度作業</a><br>
                        </div>
                    </li>
                    <!-- 門市車輛管理-->
                    <li class="lss"><i class="fa-solid fa-shop"></i>門市車輛管理
                        <div class="div2" style="display:none;">
                            <a href=""><i class="fa-solid fa-circle-arrow-right"></i>車輛管控</a><br>
                        </div>
                    </li>
                    <!-- 配車管理 -->
                    <li class="lss"><i class="fa-solid fa-car-side"></i>配車管理
                        <div class="div2" style="display:none;">
                            <a href="../car_distribution/back_cardistribution.html"><i
                                    class="fa-solid fa-circle-arrow-right"></i>車輛配車表</a><br>
                            <a href="../otherCarOrder/othercarorder.html"><i
                                    class="fa-solid fa-circle-arrow-right"></i>外站車輛</a><br>
                        </div>
                    </li>
                    <!-- 行銷管理 -->
                    <li class="lss"><i class="fa-solid fa-person-rays"></i>行銷管理
                        <div class="div2" style="display:none;">
                            <a href=""><i class="fa-solid fa-circle-arrow-right"></i>網站新增活動</a><br>
                            <a href=""><i class="fa-solid fa-circle-arrow-right"></i>活動上下架</a><br>
                        </div>
                    </li>
                    <!-- 員工管理 -->
                    <li class="lss"><i class="fa fa-user" aria-hidden="true"></i>員工管理
                        <div class="div2" style="display:none;">
                            <a href=""><i class="fa-solid fa-circle-arrow-right"></i>新增員工資料</a><br>
                            <a href=""><i class="fa-solid fa-circle-arrow-right"></i>修改員工資料</a><br>
                            <a href=""><i class="fa-solid fa-circle-arrow-right"></i>查詢員工資料</a>
                        </div>
                    </li>
                    <!-- 客服管理 -->
                    <li class="lss"><i class="fa-solid fa-comment-dots"></i>客服管理
                        <div class="div2" style="display:none;">
                            <a href=""><i class="fa-solid fa-circle-arrow-right"></i>客服回覆</a><br>
                            <a href=""><i class="fa-solid fa-circle-arrow-right"></i>查詢過往客服紀錄</a><br>
                        </div>
                    </li>
                    <!-- 總公司車輛管理 -->
                    <li class="lss"><i class="fa-solid fa-car-tunnel"></i>總公司車輛管理
                        <div class="div2" style="display:none;">
                            <a href=""><i class="fa-solid fa-circle-arrow-right"></i>車輛汰售</a><br>
                            <a href=""><i class="fa-solid fa-circle-arrow-right"></i>所有車輛現況查詢</a><br>
                            <a href=""><i class="fa-solid fa-circle-arrow-right"></i>車輛級距管理</a>
                        </div>

                    </li>
                    <!-- 中古車競拍紀錄 -->
                    <li class="lss"><i class="fa-solid fa-receipt"></i>中古車競拍紀錄
                        <div class="div2" style="display:none;">
                            <a href=""><i class="fa-solid fa-circle-arrow-right"></i>中古車得標紀錄</a><br>
                        </div>
                    </li>
                    <!-- 中古車拍賣管理 -->
                    <li class="lss"><i class="fa-solid fa-gavel"></i>中古車拍賣管理
                        <div class="div2" style="display:none;">
                            <a href=""><i class="fa-solid fa-circle-arrow-right"></i>中古車上架</a><br>
                            <a href=""><i class="fa-solid fa-circle-arrow-right"></i>中古車下架</a><br>
                            <a href=""><i class="fa-solid fa-circle-arrow-right"></i>中古車修改車輛資訊</a><br>
                            <a href=""><i class="fa-solid fa-circle-arrow-right"></i>查詢中古車輛</a><br>
                        </div>
                    </li>
                    <!-- 中古車上下架管理 -->
                    <li class="lss"><i class="fa-solid fa-arrow-down-up-across-line"></i>中古車上下架管理
                        <div class="div2" style="display:none;">
                            <a href=""><i class="fa-solid fa-circle-arrow-right"></i>中古車上架</a><br>
                            <a href=""><i class="fa-solid fa-circle-arrow-right"></i>中古車下架</a><br>
                            <a href=""><i class="fa-solid fa-circle-arrow-right"></i>中古車修改車輛資訊</a><br>
                            <a href=""><i class="fa-solid fa-circle-arrow-right"></i>查詢中古車輛</a><br>
                            <a href=""><i class="fa-solid fa-circle-arrow-right"></i>查詢中古車預約紀錄</a><br>
                            <a href=""><i class="fa-solid fa-circle-arrow-right"></i>查詢中古車取消紀錄</a><br>
                        </div>
                    </li>
                </ul>
            </nav>
        </aside>

        <div class="content">

            
        </div>
    </main>
    <script src="<%=request.getContextPath() %>/resources/js/Background_Home.js"></script>
    <script src="<%=request.getContextPath() %>/backgroundHome.js"></script>
    <script>
        
       sessionStorage.setItem('employee',`${employeejson}`)
        
    </script>
</body>

</html>