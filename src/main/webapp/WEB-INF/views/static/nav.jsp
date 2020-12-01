<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=utf-8"
session = "true"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>ING</title>
<meta content="" name="descriptison">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="${pageContext.request.contextPath}/resources/img/favicon.png" rel="icon">
<link href="${pageContext.request.contextPath}/resources/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
   href="https://fonts.googleapis.com/css?family=Raleway:400,500,700|Roboto:400,900"
   rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css"
   rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/vendor/venobox/venobox.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/vendor/font-awesome/css/font-awesome.min.css"
   rel="stylesheet">

<!-- Template Main CSS File -->
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">

<!-- bootstrap icon -->


</head>

<body>
<%
/* String userId = ; */

%>

   <!-- ======= Header ======= -->
   <header id="header">
      <div class="container">

         <div id="logo" class="pull-left">
            <a href="${pageContext.request.contextPath}/main"><img src="${pageContext.request.contextPath}/resources/img/logo-nav.png" alt=""></a>
            <!-- Uncomment below if you prefer to use a text image -->
            <!--<h1><a href="#hero">Bell</a></h1>-->
         </div>

         <nav id="nav-menu-container">
            <ul class="nav-menu">
               <li class="menu-has-children"><a href="${pageContext.request.contextPath}/list/notelist">오답노트</a>
                  <ul>                     
                     <li class="menu"><a href="${pageContext.request.contextPath}/template/problem/problemRegist">문제 등록</a>
                     <li class="menu"><a href="${pageContext.request.contextPath}/list/notelist">문제 리스트</a>                        
                  </ul></li>
               <li class="menu"><a href="${pageContext.request.contextPath}/list/select">테스트</a>                  
               <li class="menu"><a href="${pageContext.request.contextPath}/schedule/schedule">플래너</a>   
            </ul>
         </nav>
         <!-- #nav-menu-container -->
<%
if((session.getAttribute("userId") == null)){
	
	%>
         <nav class="nav social-nav pull-right d-none d-lg-inline">
            <a href="${pageContext.request.contextPath}/template/login/LoginForm">로그인</a> 
            <% }else{
            	%>
            	<nav class="nav social-nav pull-right d-none d-lg-inline">
                <a href="${pageContext.request.contextPath}/template/pro/LogoutPro">로그아웃</a>
            	<%
            }
%>
      </div>
   </header>
   <!-- End Header -->

   <a class="scrolltop" href="#"><span class="fa fa-angle-up"></span></a>

   <!-- Vendor JS Files -->
   <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/vendor/jquery.easing/jquery.easing.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/vendor/php-email-form/validate.js"></script>
   <script src="${pageContext.request.contextPath}/resources/vendor/counterup/counterup.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/vendor/tether/js/tether.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/vendor/jquery-sticky/jquery.sticky.js"></script>
   <script src="${pageContext.request.contextPath}/resources/vendor/venobox/venobox.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/vendor/lockfixed/jquery.lockfixed.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/vendor/waypoints/jquery.waypoints.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/vendor/superfish/superfish.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/vendor/hoverIntent/hoverIntent.js"></script>

   <!-- Template Main JS File -->
   <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

</body>

</html>