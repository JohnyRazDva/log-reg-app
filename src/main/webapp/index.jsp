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
		<h1>Registration</h1>
	
	
		<form  action="Controller"   method="get" >
	
			<input type="hidden" name="form" value="register">
			
			<div class="wrapper">
			<label for="name">Name: </label>
			<input type="text" id="name" name="name" >  
			</div>
			<div class="wrapper">
			<label for="surname">Surname: </label>
			<input type="text" id="surname" name="surname"> 
			</div>
			<div class="wrapper">
			<label for="born">Birthday: </label>
			<input type="date" id="born" name="born"> 
			</div>
				
			
	
			
			<input class="button" type="submit" value="send">
				
		</form>
	</section>

</body>
</html>
