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

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/search.css">

<style type="text/css">
li {
	list-style: none;
	padding: 5px;
}

ul {
	padding: 0px;
}

.test {
	column-count: 2;
	column-gap: 16px;
	column-rule-color: gray;
	column-rule-style: dotted;
	column-rule-width: 2px;
	border-top: 1px solid gray;
}

.comment {
	overflow: hidden;
	padding: 6px;
}

.progress {
	width: 300px;
	margin-right: 20px;
	margin-top: 20px;
}

.pageend {
	border-top: 1px solid black;
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
			<div class="comment">
				<div class="form-row float-left">
					<h3>테스트</h3>
				</div>
				<div class="form-row float-right align-self-center">
					<div class="progress">
						<p>진행률</p>
						<div
							class="progress-bar progress-bar-striped progress-bar-animated"
							role="progressbar" aria-valuenow="75" aria-valuemin="0"
							aria-valuemax="100" style="width: 75%"></div>
					</div>
				</div>
			</div>
			<div class="test">
				<ul>
					<li>
						<div class="question">1.아래의 선택지 중에서 어떤 것이 단일 비트 오류에 대해 가장 잘
							설명하였는가?</div>
						<div class="answer">
							<input type="radio" value="v1">보기 1<br> <input
								type="radio" value="v2">보기 2<br> <input
								type="radio" value="v3">보기 3<br> <input
								type="radio" value="v4">보기4<br> <input type="radio"
								value="v4">보기 5<br>
						</div>
					</li>
					<li>
						<div class="question">2.아래의 선택지 중에서 어떤 것이 단일 비트 오류에 대해 가장 잘
							설명하였는가?</div>
						<div class="answer">
							<input type="text" class="form-control"
								id="formGroupExampleInput" placeholder="답을 입력하세요.">
						</div>
					</li>
				</ul>
			</div>
			<div class="pageend ">
				<ul class="pagination justify-content-center">
					<li class="page-item"><a class="page-link" href="#">Previous</a></li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#">Next</a></li>
				</ul>
				<div align="right" style="margin-bottom:3px;">
					<button class="btn btn-middle" id="advanced-set-submit">제출하기</button>
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