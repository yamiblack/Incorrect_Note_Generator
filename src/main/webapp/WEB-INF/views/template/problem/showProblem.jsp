<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false"
    import= "java.sql.Connection"
    import= "java.sql.ResultSet"
    import= "java.sql.Statement"
    import= "java.sql.DriverManager"
    import="jsp.util.*"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>ING : 문제 조회</title>
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
					<h2>문제 조회</h2>
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
		
		<%
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			
			DBConnection dbc = new DBConnection();
			conn = DriverManager.getConnection(dbc.getDataUrl(), dbc.getUser(), dbc.getPassword());
			stmt = conn.createStatement();
			
			String id = request.getParameter("id");
			
			rs = stmt.executeQuery("select * from note where id=" + id + ";");
			
			while(rs.next()){
				%><tr>
				<td><%=rs.getString("id") + "."%></td>
				<td><%=rs.getString("content")%></td><br>
				<td><%=rs.getString("date")%></td>
				</tr>
				
				
			<br>
			<h3>오답노트</h3>
			<!-- 난이도 -->
			<div class="show">
				<h6>난이도</h6>
				<%
					for(int i = 0; i < Integer.parseInt(rs.getString("level")); i++){
						%><img src="${pageContext.request.contextPath}/resources/img/star.png" width="30" height="30"><%
					}
				%>
 
			</div>
			<!-- 문제입력 -->
			<div class="show">
				<h6>문제</h6>
				<h6><%=rs.getString("content") %></h6>
			</div>
			<!-- 사진 추가 -->
<!-- 			<div class="show">
				<h6>문제 사진</h6>
				<img src="" alt="" class="img-thumbnail">
			</div> -->
			<!-- 보기 -->
			<div class="show">
				<h6>보기</h6>
				<h6>1. <%=rs.getString("choice1") %></h6>
				<h6>2. <%=rs.getString("choice2") %></h6>
				<h6>3. <%=rs.getString("choice3") %></h6>
				<h6>4. <%=rs.getString("choice4") %></h6>
				<h6>5. <%=rs.getString("choice5") %></h6>
			</div>
			
			<!-- 답 -->
			<div class="show">
				<h6>답</h6>
				<h6><%=rs.getString("answer") %></h6>
			</div>
			
			<!-- 나의 오답 -->
			<div class="show">
				<h6>나의 오답</h6>
				<h6><%=rs.getString("mywrong") %></h6>
			</div>
			<!-- 문제 설명 -->
			<div class="show">
				<h6>문제 설명</h6>
				<h6 id="comment"><%=rs.getString("description") %></h6>
			</div>
						<% }
			
			rs.close();
			stmt.close();
			conn.close();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		%>
			<!-- 뒤로, 등록 버튼 -->
			<div class="d-flex justify-content-between" style="margine: 3px;">
				<div class="form-row float-left">
					<a class="btn btn-small" href="${pageContext.request.contextPath}/list/notelist">뒤로</a>
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