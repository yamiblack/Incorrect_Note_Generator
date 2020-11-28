<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 
<html>
<head>
    <title>로그아웃 처리</title>
</head>
<body>
    <%
        session.invalidate(); // 모든세션정보 삭제
        response.sendRedirect("../view/LoginForm.jsp"); // 로그인 화면으로 다시 돌아간다.
    %>
</body>
</html>