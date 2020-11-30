<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"
	import="kr.ac.jbnu.entity.dao.*"
	import="kr.ac.jbnu.entity.model.*"%>


<!DOCTYPE html>
<html>
<%
    request.setCharacterEncoding("utf-8");
	
    String title = request.getParameter("title");
    Integer level = Integer.parseInt(request.getParameter("star"));
    /* String category = request.getParameter("content"); */
    String content = request.getParameter("content");
    String choice1 = request.getParameter("choice1");
    String choice2 = request.getParameter("choice2");
    String choice3 = request.getParameter("choice3");
    String choice4 = request.getParameter("choice4");
    String choice5 = request.getParameter("choice5");
    String answer = request.getParameter("answer");
    String wrongAnswer = request.getParameter("wronganswer");
    String description = request.getParameter("description");
    
    NoteDao dao = new NoteDao();
    Note note = new Note(title, level, "", content, choice1, choice2, choice3, choice4, choice5, answer, wrongAnswer, description);
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