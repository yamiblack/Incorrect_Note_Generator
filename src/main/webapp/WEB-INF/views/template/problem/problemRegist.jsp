<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>ING : 문제 등록</title>
<meta content="" name="descriptison">
<meta content="" name="keywords">

<!-- Favicons -->
<link
	href="${pageContext.request.contextPath}/resources/img/favicon.png"
	rel="icon">
<link
	href="${pageContext.request.contextPath}/resources/img/apple-touch-icon.png"
	rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Raleway:400,500,700|Roboto:400,900"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link
	href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/vendor/venobox/venobox.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet">

<!-- bootstrap icon -->

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/problem.css">

<style type="text/css">
ul {
	list-style: none;
	padding-left: 0px;
}

h3 {
	padding-bottom: 20px;
}

.form-group {
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

.wronganswer {
	width: 500px;
}

.description {
	width: 500px;
}

#listbutton {
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
						<li><a href="${pageContext.request.contextPath}/main">Home</a></li>
						<li>오답노트</li>
					</ol>
				</div>
			</div>
		</section>
		<!-- End Breadcrumbs Section -->

        <!-- 각자 제작한 것 추가해주세요 -->
        


		<div class="container">
			<form name="regist" action="save_do" method="get">
				<!-- 문제 등록 폼 -->
				<h3>객관식 문제 등록</h3>
				<h4>문제 정보</h4>
				<!-- 제목, 난이도 -->
				<div class="form-group">
					<div class="row">
						<div class="col">
							<label for="formGroupExampleInput">제목</label> <input type="text"
								class="form-control" name="name" id="formGroupExampleInput"
								placeholder="제목을 입력해 주세요" required>
						</div>
						<div class="col"> 
							<label for="formGroupExampleInput">난이도</label> </br>
							<div class="startRadio">
								<label class="startRadio__box"> <input type="radio"
									name="star" id="" value="1"> <span class="startRadio__img"><span
										class="blind">별 1개</span></span>
								</label> <label class="startRadio__box"> <input type="radio"
									name="star" id=""  value="2"> <span class="startRadio__img"><span
										class="blind">별 2개</span></span>
								</label> <label class="startRadio__box"> <input type="radio"
									name="star" id=""  value="3"> <span class="startRadio__img"><span
										class="blind">별 3개</span></span>
								</label> <label class="startRadio__box"> <input type="radio"
									name="star" id=""  value="4"> <span class="startRadio__img"><span
										class="blind">별 4개</span></span>
								</label> <label class="startRadio__box"> <input type="radio"
									name="star" id="" value="5" > <span class="startRadio__img"><span
										class="blind">별 5개</span></span>
								</label>
							</div>
						</div>
					</div>
				</div>
				<!-- 객관식 주관식 라디오버튼 -->
				<!-- 				<div class="form-group">
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio"
							name="inlineRadioOptions" id="inlineRadio1" value="option1">
						<label class="form-check-label" for="inlineRadio1">객관식</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio"
							name="inlineRadioOptions" id="inlineRadio2" value="option2">
						<label class="form-check-label" for="inlineRadio2">주관식</label>
					</div>
				</div> -->
				<!-- 카테고리 -->
				<!-- <div class="form-group">
					<div class="category">
						<label for="inputState">카테고리</label> <select id="inputState"
							class="form-control" name="cate">
							<option value="카테고리" selected>카테고리</option>
							<option value="카테고리">...</option>
						</select>
					</div>
				</div> -->
				<!-- 문제입력 -->
				<div class="form-group">
					<label for="formGroupExampleInput">문제</label> <input type="text"
						name="content" class="form-control" id="formGroupExampleInput"
						placeholder="문제를 입력해 주세요." required>
				</div>
				<!-- 사진 추가 -->
				<!-- <div class="form-group">
					<div class="problem-picture">
						<div class="custom-file">
							<input type="file" class="custom-file-input" id="customFile">
							<label class="custom-file-label" for="customFile">사진 추가</label>
						</div>
					</div>
				</div> -->


				<!-- 오답 -->
				<!-- 	<div class="form-group">
					<label for="formGroupExampleInput">오답 보기</label>
					<ul>
						<li class="answer">
							<div class="row">
								<div class="col">
									<input type="text" class="form-control"
										id="formGroupExampleInput" placeholder="오답 보기를 입력해 주세요" required>
								</div>
								버튼 onclick 속성 만들어야 함
								<button type="button" class="btn btn-circle" id="listbutton" onClick="class='form-group'">+</button>
								<button type="button" class="btn btn-circle" id="listbutton">-</button>
							</div>
						</li>
					</ul>
				</div> -->

				<div class="form-group">
					<label for="formGroupExampleInput">보기</label>
					<ul>
						<li class="wronganswer">
							<div class="row">
								<div class="col">
									<p>
										<input type="text" class="form-control" name="choice1"
											id="formGroupExampleInput" placeholder="보기1을 입력해 주세요."
											required>
									</p>
									<p>
										<input type="text" class="form-control" name="choice2"
											id="formGroupExampleInput" placeholder="보기2를 입력해 주세요."
											required>
									</p>
									<p>
										<input type="text" class="form-control" name="choice3"
											id="formGroupExampleInput" placeholder="보기3을 입력해 주세요."
											required>
									</p>
									<p>
										<input type="text" class="form-control" name="choice4"
											id="formGroupExampleInput" placeholder="보기4를 입력해 주세요."
											required>
									</p>
									<p>
										<input type="text" class="form-control" name="choice5"
											id="formGroupExampleInput" placeholder="보기5를 입력해 주세요."
											required>
									</p>
								
								</div>
							</div>
						</li>
					</ul>
				</div>
				<!-- 나의 오답 -->
				<!-- 				<div class="form-group">
					<div class="wronganwer">
						<label for="formGroupExampleInput">나의 오답</label> <input
							type="text" class="form-control" id="formGroupExampleInput"
							placeholder="오답을 입력해주세요" required>
					</div>
				</div> -->

				<!-- 문제입력 -->
				<div class="form-group">
					<div class="answer">
						<label for="formGroupExampleInput">정답</label> <input type="text"
							name="answer" class="form-control" id="formGroupExampleInput"
							placeholder="정답을 입력해 주세요." required>
					</div>
				</div>

				<!-- 오답 입력 -->
				<div class="form-group">
					<div class="wronganswer">
						<label for="formGroupExampleInput">작성했던 오답</label> <input
							type="text" name="wronganswer" class="form-control" id="formGroupExampleInput"
							placeholder="본인이 작성했던 오답을 입력해 주세요." required>
					</div>
				</div>
				
				<!-- 문제 설명 -->
				<div class="form-group">
					<div class="description">
						<label for="formGroupExampleInput">문제 설명</label> <input
							type="text" name="description" class="form-control" id="formGroupExampleInput"
							placeholder="설명을 입력해 주세요." required>
					</div>
				</div>
				<!-- 뒤로, 등록 버튼 -->
				<div class="d-flex justify-content-between"
					style="margine-bottom: 3px;">
					<div class="form-row float-left">
						<a class="btn btn-small" href="${pageContext.request.contextPath}/list/notelist" id="advanced-set-submit">뒤로</a>
					</div>
					<div class="form-row float-right">
						<input type="submit" class="btn btn-small form-control" value = "등록"></input>
					</div>
				</div>
			</form>
		</div>
	</main>

	<jsp:include page="../../static/footer.jsp"></jsp:include>
	<a class="scrolltop" href="#"><span class="fa fa-angle-up"></span></a>

	<!-- Vendor JS Files -->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/jquery.easing/jquery.easing.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/php-email-form/validate.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/counterup/counterup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/tether/js/tether.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/jquery-sticky/jquery.sticky.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/venobox/venobox.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/lockfixed/jquery.lockfixed.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/waypoints/jquery.waypoints.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/superfish/superfish.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/hoverIntent/hoverIntent.js"></script>

	<!-- Template Main JS File -->
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

</body>

</html>