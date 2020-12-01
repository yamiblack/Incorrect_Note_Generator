<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="kr.ac.jbnu.entity.model.*"
	import="kr.ac.jbnu.entity.dao.NoteDao" import="java.util.List"
	import="java.sql.Connection" import="java.sql.ResultSet"
	import="java.sql.Statement" import="java.sql.DriverManager"
	import="jsp.util.*"
	%>
<!DOCTYPE html>
<html>
<head>
<meta>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../static/nav.jsp"></jsp:include>

	<main id="main">

		<!-- ======= Breadcrumbs Section ======= -->
		<section class="breadcrumbs">
			<div class="container">

				<div class="d-flex justify-content-between align-items-center">
					<h2>문제 선택</h2>
					<ol>
						<li><a href="main">Home</a></li>
						<li>테스트</li>
					</ol>
				</div>
			</div>
		</section>
		<!-- End Breadcrumbs Section -->

		<!-- 각자 제작한 것 추가해주세요 -->
		<div class="container">
			<div>
				<div class="form-row float-left"></div>
				<div class="form-row float-right">
					<!-- Search form -->
					<form class="form-inline">
						<!-- <i class="fas fa-search" aria-hidden="true"></i> --> <img
							class="gadgets-img hidden-md-down" width=25px, height=25px
							src="${pageContext.request.contextPath}/resources/img/search.png">
						<input
						class="form-control form-control-sm ml-3 w-75" type="text" name="search"
						placeholder="Search" aria-label="Search" onkeypress="JavaScript:press(this.form)">
					</form>
				</div>
			</div>
			<!-- table -->
			<div>
				<form name="problems"
					action="${pageContext.request.contextPath}/list/delete_do"
					method="get">
					<table class="table table-bordered">
						<thead>
							<tr>
								<th scope="col text-center ml-2 "><input type='checkbox'
									name='checkAll' id="checkAll" onclick="check();" value='selected' /></th>
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

								String loginid = (String)session.getAttribute("userId");
								
								DBConnection dbc = new DBConnection();
								conn = DriverManager.getConnection(dbc.getDataUrl(), dbc.getUser(), dbc.getPassword());
								stmt = conn.createStatement();

								String listSearch;
								String searchsql;
								listSearch = (String)request.getParameter("search");
								if(listSearch == null){
									searchsql = "select * from note where userid='" + loginid + "';";
								}else{
									System.out.println(listSearch);
									searchsql = "select * from note where userid='" + loginid + "' and name LIKE '%" + listSearch + "%';";
								}
								
								rs = stmt.executeQuery(searchsql);

								while (rs.next()) {
							%><tr>
								<td><input type='checkbox' name='pnum'
									value='<%=rs.getString("id") %>' /></td>
								<td><%=rs.getString("name")%></td>
								<td><%=rs.getString("date")%></td>
								<%
									}

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
					 <input type="submit" class="btn bnt-small form-control"
                  value="삭제하기">
				</form>
			</div>
		</div>


	</main>

	<jsp:include page="../static/footer.jsp"></jsp:include>
	<a class="scrolltop" href="#"><span class="fa fa-angle-up"></span></a>

	<script>
		function press(f) {
			if (f.keyCode == 13) {
				//javascript에서는 13이 enter키를 의미함 
				formname.submit();
				//formname에 사용자가 지정한 form의 name입력 
			}
		}
		
		function check(){
			if (problems.checkAll.checked){
				check_all();
			}else{
				uncheck_all();
			}
		}

		function check_all() {
			for (i = 0; i < problems.pnum.length; i++) {
				problems.pnum[i].checked = true;
			}
		}
		function uncheck_all() {
			for (i = 0; i < problems.pnum.length; i++) {
				problems.pnum[i].checked = false;
			}
		}
	</script>

</body>
</html>