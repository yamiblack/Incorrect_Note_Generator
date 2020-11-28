<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
				<h2>�����Ʈ</h2>
					<ol>
						<li><a href="main">Home</a></li>
						<li>�����Ʈ</li>
					</ol>
				</div>
			</div>
		</section>
		<!-- End Breadcrumbs Section -->

		<!-- ���� ������ �� �߰����ּ��� -->
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
							<th scope="col text-center ml-6 ">����</th>
							<th scope="col text-center ml-4 ">��� ��¥</th>
						</tr>
					</thead>
					<tbody>
					
	<%-- 				<%
						for(){{
							
						}
					%> --%>
					
						<tr>
							<th scope="row">1</th>
							<td><a href="http://www.naver.com"/>������ ���</a></td>
							<td>2020.11.28</td>
						</tr>
					</tbody>
				</table>
				<!-- <button class="btn btn-small" type="submit">�߰�</button> -->
				<input class ="btn btn-small" onclick="add_note();" type="button" value="�߰�"/>
				<button class="btn btn-small" type="submit">����</button>
			</div>
		</div>
		
		
	</main>
	
	<jsp:include page="../static/footer.jsp"></jsp:include>
	<a class="scrolltop" href="#"><span class="fa fa-angle-up"></span></a>
	
	<script> 
	function press(f){ 
		if(f.keyCode == 13){ 
			//javascript������ 13�� enterŰ�� �ǹ��� 
			formname.submit(); 
			//formname�� ����ڰ� ������ form�� name�Է� 
		} 
	}
	</script>
	
<!-- 	<input onclick="popup();" type="button" value="�˾�"/>
	<script>
	
	function popup(){
		window.open("main", "a", "width=1000, height=1000, toolbar=1000,toolbar=no,status=no,location=no,scrollbars=yes,menubar=no,resizable=yes,left=50,right=50")
	}
	
	</script> -->
	
	<script>
		function add_note(){
			
			Note note = new Note("���� 1��", "5", "����", "�� ������ ������!?", "�Ϲ�", "�̹�", "���", "���", "����", "3��", "2��", "3���� ���̴� �˸�û��.");
		}
	</script>

</body>
</html>