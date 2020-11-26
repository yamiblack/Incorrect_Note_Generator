<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ page session="false"%>
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
<style type="text/css">
.form-control {
	margin-bottom: 30px;
}

.img-profile {
	display: block;
	min-width: 20%;
	height: 250px;
	max-width: 80%;
}

.btn-profilechange {
	display: block;
	width: 90%;
	margin: 5px;
}

.btn-chage {
	width: 45%;
	font-size: 25px;
	padding: 13px 25px;
	margin: 3px;
}
</style>

</head>

<body>
	<jsp:include page="../../static/nav.jsp"></jsp:include>
	<main id="main">

		<!-- ======= Breadcrumbs Section ======= -->
		<section class="breadcrumbs">
			<div class="container">

				<div class="d-flex justify-content-between align-items-center">
					<h2>문제 풀기</h2>
					<ol>
						<li><a href="index.html">Home</a></li>
						<li>오답노트</li>
					</ol>
				</div>
			</div>
		</section>
		<!-- End Breadcrumbs Section -->

		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-5 col-md-5 col-sm-5">
					<form>
						<h3>이름</h3>
						<input class="form-control" type="text" placeholder="이름" readonly>
						<h3>닉네임</h3>
						<input class="form-control" type="text" placeholder="닉네임">
						<h3>이메일</h3>
						<input class="form-control" type="text" placeholder="이메일@이메일">
						<h3>학교/직장</h3>
						<input class="form-control" type="text" placeholder="학교">
						<div class="d-flex justify-content-center">
							<button class="btn btn-profilechange">프로필 변경</button>
						</div>
						<div class="d-flex justify-content-center">
							<button class="btn btn-chage">비밀번호 변경</button>
							<button class="btn btn-chage">회원탈퇴</button>
						</div>
					</form>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4">
					<img src="${pageContext.request.contextPath}/resources/img/porf-1.jpg" class="img-profile rounded"
						alt="프로필 이미지">
				</div>
			</div>
		</div>

		<!-- 각자 제작한 것 추가해주세요 -->
	</main>
	<jsp:include page="../../static/footer.jsp"></jsp:include>
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