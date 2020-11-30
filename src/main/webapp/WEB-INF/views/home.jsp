<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="kr.ac.jbnu.entity.model.*"
	import="kr.ac.jbnu.entity.dao.NoteDao" import="java.sql.Connection"
	import="java.sql.ResultSet" import="java.sql.Statement"
	import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ING</title>
</head>
<body>
<%
	NoteDao dao = new NoteDao();
	Note note1 = new Note("오답노트 1", 3, "category1", "문제1", "1번보기", "2번보기", "3번보기", "4번보기", "5번보기", "1번", "3번", "이 문제는_____으로 1번이다.");
	Note note2 = new Note("오답노트 2", 3, "category1", "문제2", "1번보기", "2번보기", "3번보기", "4번보기", "5번보기", "3번", "2번", "이 문제는_____으로 3번이다.");
	dao.saveNote(note1);
	dao.saveNote(note2);
	
	%>
	<!-- 각자 제작한 파일 올려서 테스트 해보세요 -->
	<jsp:include page="main.jsp" />

</body>
</html>
