<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"
	import="kr.ac.jbnu.entity.dao.*" import="kr.ac.jbnu.entity.model.*"
	import="jsp.util.DBConnection"%>


<!DOCTYPE html>
<html>
<%
	String[] pnum = request.getParameterValues("pnum");
try {
	Class.forName("com.mysql.cj.jdbc.Driver");

	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String loginid = (String)session.getAttribute("userId");

	DBConnection dbc = new DBConnection();
	conn = DriverManager.getConnection(dbc.getDataUrl(), dbc.getUser(), dbc.getPassword());
	
	String sql = "DELETE FROM note WHERE id=? and userid='" + loginid + "';";
	pstmt = conn.prepareStatement(sql);
	
	int i;
	for (i = 0; i < pnum.length; i++) {
		pstmt.setString(1,pnum[i]);
		pstmt.executeUpdate();
	}

pstmt.close();
conn.close();
} catch (ClassNotFoundException e) { // TODO Auto-generated catch block
e.printStackTrace();
}
%>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:forward page="../list/notelist.jsp" />
</body>
</html>