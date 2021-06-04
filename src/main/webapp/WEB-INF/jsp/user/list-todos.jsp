<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
<title>First Web Application</title>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/register.css" media="screen"/>
</head>

<body>
<div class="container">
	Your name is : ${name}
	<BR/>

	Here are the list of your todos:
	<div class="col-sm-10">
	<table class="">
		<c:forEach items="${todolist}" var="t">
			<tr>
				<td style="line-height: 16px; font-size: 16px; color: #468847;">${t.desc}</td>
				<td style="line-height: 16px; font-size: 13px; color: #468847;">${t.targetDate}</td>
				<td>
					<form action="/deletetodo" method="POST">
						<input type="hidden" name="id" value="${t.id}">
						<input type="submit" value="Delete">
					</form>
				</td>
			</tr>
		</c:forEach>
	</table>
	</div>
	<BR/>

	<a href="create-todoform">Add ToDo</a>

	<BR/>
	<div class="col-sm-offset-2 col-sm-10">
		<a href="login" type="button">Back to Login Page</a>
	</div>
</div>
</body>

</html>