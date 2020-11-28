<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"
	import="kr.ac.jbnu.entity.dao.*"
	import="kr.ac.jbnu.entity.model.*"%>


<!DOCTYPE html>
<html>
<%
    request.setCharacterEncoding("utf-8");
	
    String title = request.getParameter("name");
    Integer level = 5;
    String category = "category";
    String content = request.getParameter("문제");
    String choice1 = request.getParameter("1번");
    String choice2 = request.getParameter("2번");
    String choice3 = request.getParameter("3번");
    String choice4 = request.getParameter("4번");
    String choice5 = request.getParameter("5번");
    String answer = request.getParameter("답");
    String wrongAnswer = request.getParameter("오답");
    String description = request.getParameter("설명");
    
    NoteDao dao = new NoteDao();
    Note note = new Note(title, level, category, content, choice1, choice2, choice3, choice4, choice5, answer, wrongAnswer, description);
    dao.saveNote(note);
    
%>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:forward page="../../list/notelist.jsp"/>
</body>
</html>