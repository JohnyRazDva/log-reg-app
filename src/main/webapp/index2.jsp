<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
html,body{
height: 100%;
}
body{
background-image: url("2.webp");
}
.form-section {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    height: 100%;
}
form{
width: 250px;
}
.wrapper{
	display: flex;
    margin-bottom: 15px;
    justify-content: space-between;
    align-items: center; 
}
.button{
display: block;
margin: 0 auto;
}
</style>
</head>


<body>
	<section class="form-section">
		<h1>Log in</h1>
	
	
		<form  action="Controller"   method="get" >
	
			<input type="hidden" name="form" value="login">
			
			<div class="wrapper">
			<label>Enter your login</label><br>
			<input type="text" id="name" name="login"> 
			</div>
			<div class="wrapper">
			<label>Enter your password</label><br>
			<input type="password" id="password" name="password">
			</div>
			
				
		
			
			<input class="button" type="submit" value="send">
				
		</form>
	</section>

</body>
</html>