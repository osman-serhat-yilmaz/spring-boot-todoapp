<html>

<head>
    <title>This is register page</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/register.css" media="screen"/>
</head>

<%--<form action="/create" method="POST">
    <label for="name">Name:</label><br>
    <input type="text" id="name" name="name" ><br>
    <label for="password">Password:</label><br>
    <input type="password" id="password" name="password" ><br><br>
    <input type="submit" value="Submit">
</form>--%>



<!------ Include the above in your HEAD tag ---------->

<div class="container">

        <!-- Login Form -->
        <form action="/create" method="POST">
            <%--@declare id="password"--%><label for="name">Name:</label>
            <input type="text" id="name" name="name" placeholder="username"><br>
            <label for="password">Password:</label>
            <input type="password" id="password " name="password" placeholder="password"><br>
            <input type="submit" value="Register">
        </form>

    <div class="col-sm-offset-2 col-sm-10">
        <a href="login" type="button">Back to Login Page</a>
    </div>

</div>

</html>