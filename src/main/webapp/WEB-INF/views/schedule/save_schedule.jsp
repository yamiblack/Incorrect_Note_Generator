<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"
    import="jsp.util.*"%>

<%
	request.setCharacterEncoding("utf-8");
	
	String subject = request.getParameter("subject");
	String startDate = request.getParameter("startDate");
	String endDate = request.getParameter("endDate");
	String memo = request.getParameter("memo");
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		DBConnection dbc = new DBConnection();
		Connection con = DriverManager.getConnection(dbc.getDataUrl(), dbc.getUser(), dbc.getPassword());
		
		String sql = "INSERT INTO schedule(subject,startDate,endDate,memo) VALUES(?,?,?,?)";
		
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1,subject);
		pstmt.setString(2,startDate);
		pstmt.setString(3,endDate);
		pstmt.setString(4,memo);
		
		pstmt.executeUpdate();
		
		pstmt.close();
		con.close();
	}
	catch(ClassNotFoundException e){
		out.println(e);
	}
	catch(SQLException e){
		out.println("SQL EXEP");
		out.println(e);
	}
%>
<script>
window.open('','_self').close();     
</script>
<!DOCTYPE html> 
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	
</body>
</html>