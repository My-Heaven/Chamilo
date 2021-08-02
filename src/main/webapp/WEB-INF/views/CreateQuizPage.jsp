<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Quiz</title>
</head>
<body>

	New exercise
	<hr>
	<form action="saveQuiz" method="get">
		<label>*Name exercise</label> <input type="text" name="title">
		<br> <label>Questions per page</label> 
		<input type="radio" id="On one page"
           name="type" value="true" checked="checked">
    <label for="On one page">On one page</label>
    <input type="radio" id="One page per question (consecutive)"
           name="type" value="false">
    <label for="One page per question (consecutive)">One page per question (consecutive)</label>
		<br> 
		<label>Random question</label> 
		<select name="random">
			<c:forEach var ="i" begin ="1" end ="10">
			<option value="${i}">${i}</option>
			</c:forEach>
			<option value="all">All</option>
		</select> 
		<br> 
		<label>Shuffle answers</label> 
		<input type="radio" id="Yes"
           name="stuff_answes" value="true" checked="checked">
    <label for="Yes">Yes</label>
    <input type="radio" id="No"
           name="stuff_answes" value="false">
    <label for="No">No</label>
		<br>
		<label>Max
			number of attempts</label> <input type="number" name="max_attempt"> <br>
			<label>Start time</label> 
		<input type="Date" name="start_time"> 
		<br> 
		<label>End Time</label> 
		<input type="Date" name="end_time"> 
		<br> 
		<label>Total duration in minutes of the test</label> 
		<input type="number" name="expired_time"> 
		<br> 
		<input type="submit" value="Processd to questions" />
	</form>
</body>
</html>