<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일정 추가</title>

  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
	<!-- datepicker -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- custom -->
	<link href="${pageContext.request.contextPath}/resources/custom/css/schedule.css" rel="stylesheet" />	
	<script src="${pageContext.request.contextPath}/resources/custom/js/schedule.js" type="text/javascript"></script>

</head>
<body>
<div class = "group" id = "popupGroup">	
	<div class = "group-head">
		<h1 class = "zTree-h1"> 일정 추가 </h1>
	</div>
	<div class = "group-body">
	<form id = "scheduleData" action="save_schedule" method="post">
		<div class = "top">
			<input class = "subject" id = "subject" type = "text" name = "subject" placeholder="제목을 입력해주세요">
		</div>
		<div class = "domain">
			<h3 class = "zTree-h3"> 시작 </h3>
		</div>
		<div class = "domain">
			<input class = "date" id = "startDate" type = "text" name = "startDate" id = "startDate">
		</div>
		<div class = "domain">
			<h3 class = "zTree-h3"> 종료 </h3>
		</div>
		<div class = "domain">
			<input class = "date" id = "endDate" type = "text" name = "endDate" id = "endDate">
		</div>
		<div class = "domain">
			<h3 class = "zTree-h3"> 메모 </h3>
		</div>
		<div class = "domain">
			<textarea class = "memo" id = "memo" name = "memo" rows = "5" cols = "20" placeholder="100글자까지 입력 가능합니다"></textarea> 
		</div>
		<input class="ok-button" type="submit" value="확인">
	</form>
	</div>	
	
	
</div>
</body>
</html>