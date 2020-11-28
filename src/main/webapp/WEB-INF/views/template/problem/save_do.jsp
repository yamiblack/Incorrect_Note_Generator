<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>

<%
    request.setCharacterEncoding("utf-8");

    String id = "test";
    String title = request.getParameter("title");
    String level = "test";
    String category = "test";
    String content = request.getParameter("content");
    String choice1 = request.getParameter("choice1");
    String choice2 = request.getParameter("choice2");
    String choice3 = request.getParameter("choice3");
    String choice4 = request.getParameter("choice4");
    String choice5 = request.getParameter("choice5");
    String answer = request.getParameter("answer");
    String wrongAnswer = request.getParameter("wronganswer");
    String description = request.getParameter("description");
    String date = "test";

    try {
        <!-- 환경에 맞게 수정 -->
        Class.forName("com.mysql.jdbc.Driver");
        String DE_URL = "jdbc:mysql://localhost:3306/web01?useUnicode=true&characterEncoding=utf8"

        Connection con = DriverManager.getConnection(DB_URL, "root", "1234");

        String sql = "Insert INTO note(id, title, level, category, content, choice1, choice2, choice3, choice4, choice5, answer, wrongAnswer, description, date) VALUE(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setString(1,id);
        pstmt.setString(2,title);
        pstmt.setString(3,level);
        pstmt.setString(4,category);
        pstmt.setString(5,content);
        pstmt.setString(6,choice1);
        pstmt.setString(7,choice2);
        pstmt.setString(8,choice3);
        pstmt.setString(9,choice4);
        pstmt.setString(10,choice5);
        pstmt.setString(11,answer);
        pstmt.setString(12,wronganswer);
        pstmt.setString(13,description);
        pstmt.setString(14,date);

        pstmt.executeUpdate();

        pstmt.close();
        con.close();
    } catch(ClassNotFoundException e) {
        out.println(e);
    } catch(SQLException e) {
        out.println(e);
    } 
%>

<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


</body>
</html> -->