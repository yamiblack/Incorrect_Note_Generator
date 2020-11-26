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
ul {
	list-style: none;
	padding-left: 0px;
}

h3 {
	margine-bottom: 20px;
	border-bottom: 1px solid black;
}

h5 {
	margine-top: 20px;
	margine-bottom: 30px;
}

.show {
	border-bottom: 1px solid black;
	padding: 10px;
}

.category {
	width: 150px
}

.problem-picture {
	width: 200px;
}

.answer {
	width: 500px;
}

.wronganwer {
	width: 500px;
}

#listbutton {
	margin: 3px;
}

#comment {
	background-color: #c0c0c0;
	min-height: 130px;
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

		<!-- 각자 제작한 것 추가해주세요 -->
		<div class="container">
			<h3>오답노트</h3>
			<h5>연습문제 8번</h5>
			<!-- 난이도 -->
			<div class="show">
				<h6>난이도</h6>

			</div>
			<!-- 카테고리 -->
			<div class="show">
				<h6>카테고리</h6>
				<h6>데이터통신 10단원</h6>
			</div>
			<!-- 문제입력 -->
			<div class="show">
				<h6>문제</h6>
				<h6>7번 3+2는?</h6>
			</div>
			<!-- 사진 추가 -->
			<div class="show">
				<h6>문제 사진</h6>
				<img src="" alt="" class="img-thumbnail">
			</div>
			<!-- 답 -->
			<div class="show">
				<h6>답</h6>
				<h6>5</h6>
			</div>
			<!-- 나의 오답 -->
			<div class="show">
				<h6>나의 오답</h6>
				<h6>4</h6>
			</div>
			<!-- 문제 설명 -->
			<div class="show">
				<h6>문제 설명</h6>
				<h6 id="comment">상식임둥</h6>
			</div>
			<!-- 뒤로, 등록 버튼 -->
			<div class="d-flex justify-content-between" style="margine: 3px;">
				<div class="form-row float-left">
					<button class="btn btn-small" id="advanced-set-submit">뒤로</button>
				</div>
				<div class="form-row float-right">
					<button class="btn btn-small" id="advanced-set-submit">등록</button>
				</div>
			</div>
		</div>
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