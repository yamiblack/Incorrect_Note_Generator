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


</head>

<body>
	<jsp:include page="../../static/nav.jsp"></jsp:include>
	<main id="main">
	<main id="main">

		<!-- ======= Breadcrumbs Section ======= -->
		<section class="breadcrumbs">
			<div class="container">

				<div class="d-flex justify-content-between align-items-center">
					<h2>카테고리</h2>
					<ol>
						<li><a href="index.html">오답노트</a></li>
						<li>카테고리</li>
					</ol>
				</div>
			</div>
		</section>
		<!-- End Breadcrumbs Section -->

		<!-- 각자 제작한 것 추가해주세요 -->

		<div class="container">
			<div>
				<div class="form-row float-left">
					<h3>카테고리</h3>
				</div>
				<div class="form-row float-right">
					<!-- Search form -->
					<form class="form-inline">
						<i class="fas fa-search" aria-hidden="true"></i> <input
							class="form-control form-control-sm ml-3 w-75" type="text"
							placeholder="Search" aria-label="Search">

					</form>
				</div>
			</div>
			<!-- table -->
			<div>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th scope="col" style="width: 10%"><input type="checkbox"
								aria-label="Checkbox for following text input"></th>
							<th scope="col" style="width: 60%">제목</th>
							<th scope="col" style="width: 30%">학습률</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row"><input type="checkbox"
								aria-label="Checkbox for following text input"></th>
							<td>데이터통신</td>
							<td><div class="progress">
									<div
										class="progress-bar progress-bar-striped progress-bar-animated"
										role="progressbar" aria-valuenow="75" aria-valuemin="0"
										aria-valuemax="100" style="width: 75%"></div>
								</div></td>
						</tr>
					</tbody>
				</table>
				<button class="btn btn-small " type="submit">선택완료</button>
			
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