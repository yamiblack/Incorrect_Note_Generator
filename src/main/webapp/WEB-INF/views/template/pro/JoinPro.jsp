<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="kr.ac.jbnu.member.model.*"%>

<%-- 자바빈 클래스 import --%>
<%@ page import="kr.ac.jbnu.member.model.MemberBean"%>
<%-- DAO import --%>
<%@ page import="kr.ac.jbnu.member.model.MemberDAO"%>

<html>
<head>
<title>회원가입 처리 JSP</title>

<!-- css 파일 분리 -->
<link href='../../css/join_style.css' rel='stylesheet' style='text/css' />

</head>
<body>
	<%-- JoinForm.jsp에서 입력한 정보를 넘겨 받아 처리한다. --%>
	<% 
        // 한글 깨짐을 방지하기 위한 인코딩 처리
        request.setCharacterEncoding("euc-kr"); 

    String id = request.getParameter("id");
    String password  = request.getParameter("password");
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String birthyy = request.getParameter("birthyy");
    String birthmm = request.getParameter("birthmm");
    String birthdd = request.getParameter("birthdd");
    String mail1 = request.getParameter("mail1");
    String mail2 = request.getParameter("mail2");       
    String phone = request.getParameter("phone");         
    String address = request.getParameter("address"); 

        MemberDAO dao = MemberDAO.getInstance();
    MemberBean mem = new MemberBean(id, password, name, gender, birthyy, birthmm, birthdd, mail1, mail2, phone, address);
        // 회원정보를 담고있는 memberBean을 dao의 insertMember() 메서드로 넘긴다.
        // insertMember()는 회원 정보를 JSP_MEMBER 테이블에 저장한다.
        dao.join(mem);
    %>

	<div id="wrap">
		<br> <br> <b><font size="5" color="gray">회원가입 정보를
				확인하세요.</font></b> <br> <br> <font color="blue"><%=name %></font>님 가입을
		축하드립니다. <br> <br>

		<%-- 자바빈에서 입력된 값을 추출한다. --%>
		<table>
			<tr>
				<td id="title">아이디</td>
				<td><%=id %></td>
			</tr>

			<tr>
				<td id="title">비밀번호</td>
				<td><%=password %></td>
			</tr>

			<tr>
				<td id="title">이름</td>
				<td><%=name %></td>
			</tr>

			<tr>
				<td id="title">성별</td>
				<td><%=gender%></td>
			</tr>

			<tr>
				<td id="title">생일</td>
				<td><%=birthyy %>년 <%=birthmm %>월 <%=birthdd %>일</td>
			</tr>

			<tr>
				<td id="title">이메일</td>
				<td><%=mail1 %>@<%=mail2 %></td>
			</tr>

			<tr>
				<td id="title">휴대전화</td>
				<td><%=phone %></td>
			</tr>
			<tr>
				<td id="title">주소</td>
				<td><%=address %></td>
			</tr>
		</table>

		<br> <input type="button" value="확인"
			onclick="location='${pageContext.request.contextPath}/main'" />
	</div>
</body>
</html>