<%--<html>

<head>
	<title>First Web Application</title>
</head>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/register.css" media="screen"/>

<body>

<div class="wrapper fadeInDown">

	<!-- Login Form -->
	<form action="/create" method="POST">
		<font color="red">${errorMessage}</font>
		<input type="text" id="name" class="fadeIn second" name="name" placeholder="login">
		<input type="text" id="password" class="fadeIn third" name="password" placeholder="password">
		<input type="submit" class="fadeIn fourth" value="Log In">
	</form>

</div>

<a href="create-form" type="button">Register</a>
</body>

</html>--%>

<html lang="en">
<head>
	<title>ToDoApp Login</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
		<font color="red">${errorMessage}</font>
		<h2>Log In</h2>
		<form class="form-horizontal" action="/login" method="POST">
			<div class="form-group">
				<label class="control-label col-sm-2" for="name">Username:</label>
				<div class="col-sm-10">
					<input type="text" id="name" class="form-control" name="name" placeholder="login">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="password">Password:</label>
				<div class="col-sm-10">
					<input type="password" id="password" class="form-control" name="password" placeholder="password">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="fadeIn fourth" value="Log In">
				</div>
			</div>
		</form>
</div>

<div class="container">

	<h2>Don't have an account? Click link down below to register</h2>

		<div class="col-sm-offset-2 col-sm-10">
			<a href="create-form" type="button">Register</a>
		</div>

</div>

</body>
</html>

<%--
<html>

<head>
	<title>First Web Application</title>
</head>

<body>
<font color="red">${errorMessage}</font>
<form method="post">
	Name : <input type="text" name="name" />
	Password : <input type="password" name="password" />
	<input type="submit" />
</form>

<a href="create-form" type="button">Register</a>
</body>

</html>--%>
