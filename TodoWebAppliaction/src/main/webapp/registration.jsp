 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
	<%@page import="com.todo.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 	<title>Registration TodoApp</title>
    <link rel="stylesheet" href="./style.css">
   <link rel="icon" href="./checklist2.png">
     <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link href="CSS/Style.css" rel="stylesheet">

 <style>
       
         footer {
            background-color: #0339; /* Dark Gray */
            color: #fff; /* White */
           
        
            position:relative;
            bottom:0%;
            left:0%;
            width: 100%;
           display: flex;
          align-items:center;
          align-content:center;
          
           justify-content: center;     
        }
        footer p{
        padding-top:10px;
       align-self: center;
        }
         
         
         .social{
    background-color: #000000;
    display: flex;
    align-items: center;
    align-content: flex-start;
    justify-content: center;
    
   
   padding-bottom: 25px;  
}
.social a{
    text-decoration: none;
    margin: 0px 20px;
}
.social a img{
    height: 40px;
    width: 40px;
    transition: all .5ms;
    
}
.social img:hover{
    transform: scale(1.2);

}
.hori{
    background-color: #000000;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
  color: rgb(9, 179, 222);
     
    
}
.hori hr{
    width: 20vw;
     size: 10;
     height: 2px;
     margin-bottom: 20px; 
     color: #e10808;
     
      
 }
  .pic{
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    margin-top: 20px;
    background-color: black;
    align-content: center;
 }
 .pic h1{
    margin-top: 10px;
    margin-left: 10px;
    color: white;
 }
       .aa{
        width:400px ;
        height:500px;
          
        }
        .btn a{
        color: white;
        text-decoration: none;
        font-weight: bold; 
        }
         
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg bg-body-tertiary">
		<div class="container-fluid">
			<a class="navbar-brand" href="home.jsp">TODO</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">

				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="home.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/TodoWebAppliaction/home.jsp#about">About</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/TodoWebAppliaction/home.jsp#service">Services</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#contact">Contact</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="login.jsp">Login</a></li>
				</ul>
			</div>

		</div>

	</nav>
 
 
 <div class="container-fluid pt-5">
  <div class="card mb-3" style="max-width: 2040px;">
  <div class="row g-0">
    <div class="col-md-4">
      <img src="./Images/todoimage.jpg"   class="img-fluid rounded-start" alt="todo image">
    </div>
    <div class="col-md-8">
            <h1 class="card-title  text-dark" style="text-align: center;">Registration for TODO Application</h1>
    
      <div class="card-body">
         
       
       
       <form action="RegisterJsp.jsp" class="row g-3">
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Name</label>
    <input type="text" required  name="name" placeholder="Arun Kumar" class="form-control" id="">
  </div>
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Email</label>
    <input type="email" required  name="email" placeholder="arun@gmail.com" class="form-control" id="">
  </div>
   <div class="col-md-6">
    <label for="inputPassword4" class="form-label">Phone Number</label>
    <input type="number" required name="phone" placeholder="1234567890" class="form-control" id="inputPassword4">
  </div>
    <div class="col-md-6">
    <label for="inputPassword4" class="form-label">Username</label>
    <input type="text" required name="username" placeholder="arun123" class="form-control" id="inputPassword4">
  </div>
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">Password</label>
    <input type="password" required name="password" placeholder="Arun@123" class="form-control" id="inputPassword4">
  </div>
   <div class="col-md-4">
    <label for="inputZip"  class="form-label">Date Of Birth</label>
    <input type="date" required name="dob" class="form-control" id="">
  </div>
 <div class="  col-md-2 d-flex align-items-center justify-content-center align-content-center">
  <span class="form-check ">
  <input class="form-check-input" type="radio" name="gender" value="Male" id="flexRadioDefault1">
  <label class="form-check-label" for="flexRadioDefault1">
   Male
  </label>
</span>
<span class="form-check">
  <input class="form-check-input" type="radio" name="gender" value="Female" id="flexRadioDefault2">
  <label class="form-check-label" for="flexRadioDefault2">
     Female
  </label>
</span>
 </div>
  <div class="col-12">
    <div class="form-check">
      <input class="form-check-input" required type="checkbox" id="gridCheck">
      <label class="form-check-label" for="gridCheck">
         Accept terms and Conditions
      </label>
    </div>
  </div>
 <div class="container d-flex">
  <div class="col-12 mt-3 mr-2">
    <button type="submit" style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: 1rem;" class="btn btn-primary">Submit</button><br>
  <div role="button"  style="font-size: .75rem"tabindex="0"><a  href="./login.jsp" >Already having Account</a></div>
  </div>
 </div>
</form>
        
</div>
      </div>
    </div>
  </div>
</div>
 	
 	<div class="pic"><img class="mt-2" width="150px" height="50px" src="./Images/aklogo.png" alt="logo">
    <h1>ARUN KUMAR</h1>
</div>
     <div id="contact" class="hori"><h2>Contact me</h2> <br>
    <hr></div>
 <div class="social">
     
    <a href="https://github.com/arunsak04">
        <img src="./github2.png" alt="">
    </a>
    <a href="https://www.linkedin.com/in/arun-kumar-3b8353192/">
        <img src="./linked in.png" alt="">
    </a>
    <a href="https://twitter.com/ArunSAk90498332?t=JKbGXmeyQgnn6BngsI1I0A&s=09">
        <img src="./twitter2.png" alt="">
    </a>
    <a href="https://www.facebook.com/nagaraj.nagraj.3133">
        <img src="./fb.png" alt="">
    </a>
    <a href="arunsakka4@gmail.com">
        <img  src="./email2.png" alt="">
    </a>   
</div>
    <footer>
         <p>
    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This TODO APP is made by Arun Kumar
    </p>
    </footer>     
</body>
</html>
        
          
           
            
            
     
        
    