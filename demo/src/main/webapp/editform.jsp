<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.example.board.BoardDAO, com.example.board.BoardVO"%><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

<%
	BoardDAO boardDAO = new BoardDAO();
	String id=request.getParameter("id");	
	BoardVO u=boardDAO.getBoard(Integer.parseInt(id));
%>

<h1>Edit Form</h1>
<form action="editpost.jsp" method="post">
<input type="hidden" name="seq" value="<%=u.getSeq() %>"/>
<table>
	<tr><td>Name:</td><td><input type="text" name="name"/></td></tr>
	<tr><td>Gender:</td><td><input type="text" name="gender"/></td></tr>
	<tr><td>StudentId:</td><td><input type="text" name="studentId"/></td></tr>
	<tr><td>PhoneNum:</td><td><input type="text" name="phoneNum"/></td></tr>
	<tr><td>Age:</td><td><input type="text" name="age"/></td></tr>
	<tr><td>Birthday:</td><td><input type="text" name="birthday"/></td></tr>
	<tr><td>Major:</td><td><input type="text" name="major"/></td></tr>
	<tr><td>Part:</td><td><input type="text" name="part"/></td></tr>
	<tr><td>Bonus:</td><td><input type="text" name="bonus"/></td></tr>
	<tr><td>Minus:</td><td><input type="text" name="minus"/></td></tr>
	<tr><td>Particulars:</td><td><textarea cols="50" rows="5" name="particulars"></textarea></td></tr>
<tr><td colspan="2"><input type="submit" value="Edit Post"/>
<input type="button" value="Cancel" onclick="history.back()"/></td></tr>
</table>
</form>

</body>
</html>