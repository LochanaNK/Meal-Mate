<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

	<head>
	    <meta charset="UTF-8">
	    <title>Admin Login</title>
	
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
	
	    <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900'>
	    <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Montserrat:400,700'>
	    <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
	
	    <link rel="stylesheet" href="css/login.css">
	
	
	</head>

    <body>


        <div class="container">
            <div class="info">
                <h1>Admin Panel </h1>
            </div>
        </div>
        <div class="form">
            <div class="thumbnail"><img src="images/manager.png" /></div>

            <form class="login-form" action="LoginController" method="post">
                <input type="text" placeholder="Email" name="email" />
                <input type="password" placeholder="Password" name="password" />
                <input type="submit" name="submit" value="Login" />

            </form>

        </div>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script src='js/index.js'></script>
    </body>

</html>
