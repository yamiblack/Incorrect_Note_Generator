<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 
<html>
<head>
    <title>로그아웃 처리</title>
</head>
<body>
    <%
        session.invalidate(); // 모든세션정보 삭제
        %>
        <jsp:forward page="../../main.jsp"></jsp:forward>
   
</body>
</html>