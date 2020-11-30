<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="kr.ac.jbnu.member.model.*"
	session = "true"%>

<%-- 자바빈 클래스 import --%>
<%@ page import="kr.ac.jbnu.member.model.MemberBean"%>
<%-- DAO import --%>
<%@ page import="kr.ac.jbnu.member.model.MemberDAO"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
<%@page import="java.util.*" import="jsp.util.DBConnection"%>

<%
	String id = request.getParameter("userId"); /* 로그인 페이지에서 아이디, 비밀번호 정보를 받아온다 */
	System.out.println(id);
String password = request.getParameter("password");

Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;/*디비 값 불러올떄  */

try {/*디비와 연결한다.  */
	Context init = new InitialContext();
	DBConnection dbc = new DBConnection();
	conn = DriverManager.getConnection(dbc.getDataUrl(), dbc.getUser(), dbc.getPassword());

	String sql = "SELECT * FROM user WHERE ID=?"; /* 쿼리문 */
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	rs = pstmt.executeQuery();

	if (rs.next()) {
		if (password.equals(rs.getString("password"))) {
			session.setAttribute("userId", id);
		}
	}
} catch (Exception e) {
	e.printStackTrace();
} finally {
	try {/* 전부 닫고 끝 */
		rs.close();
		pstmt.close();
		conn.close();
		
	} catch (Exception e) {
		e.printStackTrace();
	}
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:forward page="../../main.jsp"/>
</body>
</html>