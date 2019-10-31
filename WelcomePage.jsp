<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script>
function addUser()
{
    if(document.user.username.value=="")
    {
      alert("empty username field");
      document.user.username.focus();
      return false;
    } else if (document.user.username.value.length < 8){
    	alert("username needs to be at least 8 characters");
        document.user.username.focus();
        return false;
    } else {
    	return true;
    }
    
    
} </script>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
	<form name="user" method="post" action="WelcomePage.jsp">
		<fieldset>
			<legend>Welcome</legend>
			<p>This is Search4Housing, where we match you to our best listing
				to find you a place to stay.</p>
		</fieldset>
		<fieldset>
			<legend>Sign In</legend>
			<label for="username">Username:</label> <input type='text'
				name='username' size='20' required> <br> <label
				for="password">Password:</label> <input type='text' name='password'
				size='20' required> <br> <input type='submit'
				name='signIn' value='Sign In'>
		</fieldset>
		<fieldset>
			<legend>Sign Up</legend>
			<label for="fullName">Full Name:</label> <input type='text'
				name='fullName' size='20' required> <br> <label
				for="email">Email:</label> <input type='text' name='email' size='20'
				required> <br> <label for="phoneNumber">Phone
				Number:</label> <input type='number' min="10000000000" name='phoneNumber'
				size='20'> <br> <label for="age">Age:</label> <input
				type='number' min="0" name='age' size='20'> <br> <label
				for="username">Username:</label> <input type='text' min="0"
				name='username' size='20' required> <br> <label
				for="password">Password:</label> <input type='text' name='password'
				size='20' required> <br> <input type='submit'
				name='signUp' value='Sign Up'>
		</fieldset>
		<fieldset>
			<legend>Just Browsing</legend>
			<label for="place">Country:</label> <input type='text' name='place'
				size='20' required> <br> <input type='submit'
				name='browse' value='Browse'>
		</fieldset>
	</form>
</body>
</html>