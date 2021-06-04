<html>

<head>
    <title>This is create todo page</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/register.css" media="screen"/>
</head>
<div class="container">
    Enter the description and the target date of your ToDo below: <br/> <br/>
<form action="/createtodo" method="POST">
    <label for="desc">Description:</label><br>
    <input type="text" id="desc" name="desc" ><br><br>
    <label for="targetDate">Target Date:</label><br>
    <input type="date" id="targetDate" name="targetDate" ><br><br>
    <input type="submit" value="Submit">
</form>

</div>
</html>