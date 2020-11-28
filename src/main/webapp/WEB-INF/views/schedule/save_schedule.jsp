<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"%>
<script>

/* 퀵메뉴 창닫기 기능 */ 

function WinClose()

 {

   window.open('','_self').close();     

}

</script>
<%
	request.setCharacterEncoding("utf-8");
	
	String subject = request.getParameter("subject");
	String startDate = request.getParameter("startDate");
	String endDate = request.getParameter("endDate");
	String memo = request.getParameter("memo");
	System.out.print(subject);
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		String DB_URL = "jdbc:mysql://localhost:3306/company?useUnicode=true&characterEncoding=utf8";
		Connection con = DriverManager.getConnection(DB_URL,"root","jwon4930");
		
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
<!DOCTYPE html> 
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="javascript:WinClose();">
	</a>
</body>
</html>