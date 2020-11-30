<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import= "kr.ac.jbnu.entity.model.*"
    import= "kr.ac.jbnu.entity.dao.NoteDao"
    import= "java.util.List"
    import= "java.sql.Connection"
    import= "java.sql.ResultSet"
    import= "java.sql.Statement"
    import= "java.sql.DriverManager"
    import= "jsp.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="../static/nav.jsp"></jsp:include>
	
	<main id="main">

		<!-- ======= Breadcrumbs Section ======= -->
		<section class="breadcrumbs">
			<div class="container">

				<div class="d-flex justify-content-between align-items-center">
				<h2>오답노트</h2>
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
			<div>
				<div class="form-row float-left">
				</div>
				<div class="form-row float-right">
					<!-- Search form -->
					<form class="form-inline">
					<i class="fas fa-search" aria-hidden="true"></i>
					<img class="gadgets-img hidden-md-down" width=25px, height=25px src="${pageContext.request.contextPath}/resources/img/search.png">
					 <input
						class="form-control form-control-sm ml-3 w-75" type="text"
						placeholder="Search" aria-label="Search" onkeypress="JavaScript:press(this.form)">
					</form>
				</div>
			</div>
			<!-- table -->
			<div>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th scope="col text-center ml-2 ">No.</th>
							<th scope="col text-center ml-6 ">제목</th>
							<th scope="col text-center ml-4 ">등록 날짜</th>
						</tr>
					</thead>
					<tbody>
					<%
					try {
						Class.forName("com.mysql.cj.jdbc.Driver");
						
						Connection conn = null;
						Statement stmt = null;
						ResultSet rs = null;
						
						DBConnection dbc = new DBConnection();
						conn = DriverManager.getConnection(dbc.getDataUrl(), dbc.getUser(), dbc.getPassword());
						stmt = conn.createStatement();
						
						rs = stmt.executeQuery("select * from note;");
						
						while(rs.next()){
							%><tr>
							<td><%=rs.getString("id")%></td>
							<td><a href="${pageContext.request.contextPath}/template/problem/showProblem?id=<%=rs.getString("id")%>"> <%=rs.getString("content")%> </a></td>
							<td><%=rs.getString("date")%></td>
						<% }
						
						rs.close();
						stmt.close();
						conn.close();

					} catch (ClassNotFoundException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}

					%>
					</tbody>
				</table>
				<!-- <button class="btn btn-small" type="submit">추가</button> -->
				
				<button class="btn btn-small" onclick= "location.href='${pageContext.request.contextPath}/template/problem/problemRegist'" type="submit">추가</button>
				<button class="btn btn-small" onclick= "location.href='${pageContext.request.contextPath}/list/select'" type="submit">삭제</button>
			</div>
		</div>
		
		
	</main>
	
	<jsp:include page="../static/footer.jsp"></jsp:include>
	<a class="scrolltop" href="#"><span class="fa fa-angle-up"></span></a>
	
	<script> 
	function press(f){ 
		if(f.keyCode == 13){ 
			//javascript에서는 13이 enter키를 의미함 
			formname.submit(); 
			//formname에 사용자가 지정한 form의 name입력 
		} 
	}
	</script>
	
<!-- 	<input onclick="popup();" type="button" value="팝업"/>
	<script>
	
	function popup(){
		window.open("main", "a", "width=1000, height=1000, toolbar=1000,toolbar=no,status=no,location=no,scrollbars=yes,menubar=no,resizable=yes,left=50,right=50")
	}
	
	</script> -->

<!-- 	<script>
	function click_add(){
		var url = "${pageContext.request.contextPath}/template/problem/problemRegist";
		var name = "regist";
		/* var option = "width = 600, height = 600 left = 100,top=50,location=no"; */
		window.open(url,name,option)
	}
	</script> -->
</body>
</html>