<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	import= "java.sql.Connection"
    import= "java.sql.ResultSet"
    import= "java.sql.Statement"
    import= "java.sql.DriverManager"
    import= "jsp.util.*"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>ING</title>
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


</head>

<body>

	<jsp:include page="static/hero.jsp"></jsp:include>
	<jsp:include page="static/nav.jsp"></jsp:include>
	<main id="main">
		<main id="main">
<%
	Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
	DBConnection dbc = new DBConnection();
	Connection conn = DriverManager.getConnection(dbc.getDataUrl(), dbc.getUser(), dbc.getPassword());
	Statement st = conn.createStatement();
	ResultSet rs = null;
    try {
   
    String strNoteQuery;
    String strUserQuery;
    String Countrow;
    %>
			<!-- ======= About Section ======= -->
			<section class="about" id="about">

				<div class="container text-center">
					<h2>About Your Wrong Answer Notes</h2>

					<p>this graph shows how many you have wrong answer notes.</p>

					<div class="row stats-row">
						<div class="stats-col text-center col-md-4 col-sm-4">
							<div class="circle">
								<span class="stats-no" data-toggle="counter-up"><%
    
								    strNoteQuery = "SELECT COUNT(*) FROM note";
								    rs = st.executeQuery(strNoteQuery);
								    Countrow = "";
								    while (rs.next()) {
								       Countrow = rs.getString(1);
								       out.println(Countrow);
								    }
								
								 %></span> 오답노트</br>문제
								수
							</div>
						</div>

						<div class="stats-col text-center col-md-4 col-sm-4">
							<div class="circle">
								<span class="stats-no" data-toggle="counter-up"><%
                              
                              strUserQuery = "SELECT COUNT(*) FROM user";
                              rs = st.executeQuery(strUserQuery);
                              Countrow = "";
                              while (rs.next()) {
                                 Countrow = rs.getString(1);
                                 out.println(Countrow);
                              }
                           } catch (Exception e) {
                              e.printStackTrace();
                           }
							rs.close();
							st.close();
							conn.close();
                           %></span> ING</br>회원
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- End About Section -->

			<!-- ======= Welcome Section ======= -->
			<section class="welcome text-center">
				<h2>Welcom to Ing</h2>
				<p>This is the most powerful Website making your wrong answer
					notes</p>
				<img alt="Ing - A perfect theme" class="gadgets-img hidden-md-down"
					src="${pageContext.request.contextPath}/resources/img/gadgets.png">
			</section>
			<!-- End Welcome Section -->

			<!-- ======= Features Section ======= -->
			<section class="features" id="features">

				<div class="container">
					<h2 class="text-center">Features</h2>

					<div class="row">
						<div class="feature-col col-lg-4 col-xs-12">
							<div class="card card-block text-center">
								<div>
									<div class="feature-icon">
										<span class="fa fa-rocket"></span>
									</div>
								</div>

								<div>
									<h3>Free</h3>

									<p></p>
								</div>
							</div>
						</div>

						<div class="feature-col col-lg-4 col-xs-12">
							<div class="card card-block text-center">
								<div>
									<div class="feature-icon">
										<span class="fa fa-envelope"></span>
									</div>
								</div>

								<div>
									<h3>Responsive Layout</h3>

									<p></p>
								</div>
							</div>
						</div>

						<div class="feature-col col-lg-4 col-xs-12">
							<div class="card card-block text-center">
								<div>
									<div class="feature-icon">
										<span class="fa fa-bell"></span>
									</div>
								</div>

								<div>
									<h3>Innovative Ideas</h3>

									<p></p>
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="feature-col col-lg-4 col-xs-12">
							<div class="card card-block text-center">
								<div>
									<div class="feature-icon">
										<span class="fa fa-database"></span>
									</div>
								</div>

								<div>
									<h3>Good Documentation</h3>

									<p></p>
								</div>
							</div>
						</div>

						<div class="feature-col col-lg-4 col-xs-12">
							<div class="card card-block text-center">
								<div>
									<div class="feature-icon">
										<span class="fa fa-cutlery"></span>
									</div>
								</div>

								<div>
									<h3>Excellent Features</h3>

									<p></p>
								</div>
							</div>
						</div>

						<div class="feature-col col-lg-4 col-xs-12">
							<div class="card card-block text-center">
								<div>
									<div class="feature-icon">
										<span class="fa fa-dashboard"></span>
									</div>
								</div>

								<div>
									<h3>Retina Ready</h3>
									<p></p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- End Features Section -->
		</main>
		<!-- End #main -->
		<jsp:include page="static/footer.jsp"></jsp:include>
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