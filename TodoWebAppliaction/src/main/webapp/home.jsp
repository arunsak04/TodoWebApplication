<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
	<%@page import="com.todo.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 	<title>TodoApp HOME</title>
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
       .aa{
        width:400px ;
        height:500px;
          
        }
         .btn a{
        color: white;
        text-decoration: none;
        font-weight: bold; 
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

				<ul class="navbar-nav d-flex me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="home.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#about">About</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#service">Services</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#contact">Contact</a></li>
					  <li class="nav-item"><a class="nav-link active"
						aria-current="page" href="./logout.jsp">Logout</a></li> 
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
    <% try{
	
String name=TodoLogin.name;
if(name.equals("xyz123")){ %>
		  <div class="card-body">
         
        <h1 class="card-title fw-bold text-dark" style="text-align: center;">Welcome to TODO Application</h1>
        <p class="fs-3 text-info-emphasis fw-semibold card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
        
     <div class="btnspace d-grid gap-2  d-flex justify-content-center">
  <button class="btn btn-primary" type="button"><a href="./login">Login</a></button>
  <button class="btn btn-primary" type="button">Sign Up</button>
</div>
      </div>
	
	<%}else {
		%> 
		 <div class="card-body">
         
        <h1 class="card-title fw-bold text-dark" style="text-align: center;">Welcome <%= TodoLogin.name %> to TODO Application</h1>
         <div class="container">
                 <p class="fs-3 text-info-emphasis fw-semibold card-text"> "Unlock Your Potential with TODO App Where Task Management Meets Simplicity. We're dedicated to streamlining your day, making productivity effortless, and ensuring you stay organized with ease."</p>
         
         </div>
     <div class="btnspace d-grid gap-2 mt-4  d-flex justify-content-center">
  
  <button type="button" class="btn btn-primary"
        style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .95rem;">
 <a href="./todoDisplay.jsp">View Todo</a>
</button>
  <button class="btn btn-primary" type="button"   style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .95rem;">
  <a href="./todo.jsp">Add Todo</a></button>
  
</div>
      </div>
		
		<%} }catch(Exception e){}%> 
    
     
    </div>
  </div>
</div>
 </div>

	<div class="container overflow-hidden text-center">
	
	<div id="service" class="container  text-center"><h1 style="color: #009999">SERVICES</h1></div>
  <div class="row gy-5">
    <div class="col-10">
      <div class="p-3">
      <div class="card border-info  mb-3" style="max-width: 840px;">
  <div class="row g-0">
    <div class="col-md-4">
      <img src="./to-do-list-apps.png" class="img-fluid rounded-start" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body container">
        <h2 style="color: #8c65e6; class="card-title">Task Organization</h2>
        <p style="color: #2c233d;" class="card-text fs-5">Elevate your planning with streamlined to-do lists, ensuring effortless organization. Our user-friendly approach makes task management a breeze, enhancing your productivity effortlessly.</p>
       <!--  <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p> -->
      </div>
    </div>
  </div>
</div>
      </div>
    </div>
  </div>
  
  
  
  <div>
  
  <div class="row gy-5">
    <div class="col-6">
      <div class="p-3"> 
      </div>
    </div>
   
    <div class="col-6">
      <div class="p-3">
      <div class="card border-info  mb-3" style="max-width: 840px;">
  <div class="row g-1">
   
    <div class="col-md-8">
      <div class="card-body">
        <h2 style="color: #8c65e6; class="card-title">Deadline Management</h2>
        <p style="color: #2c233d;" class="card-text fs-5">Never miss a deadline with our helpful alerts. Stay effortlessly organized, in control, and focused on your tasks.</p>
       <!--  <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p> -->
      </div>
    </div>
     <div class="col-md-4">
      <img src="./deadlineManagment.png" style="width:300px; height:220px" class="img-fluid rounded-end" alt="...">
    </div>
  </div>
</div>
 
      </div>
    </div>
  </div>
  
  
   <div class="row gy-5">
    <div class="col-10">
      <div class="p-3">
      <div class="card border-info  mb-3" style="max-width: 840px;">
  <div class="row g-0">
    <div class="col-md-4">
      <img src="./datasecurity.jpeg" style="width:450px; height:220px" class="img-fluid rounded-start" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h2 style="color: #8c65e6; class="card-title">Data Security</h2>
        <p style="color: #2c233d;" class="card-text fs-5">Seamless task management meets data fortress. Your tasks, your privacy rest easy with our robust security measures, ensuring your information stays guarded and confidential.</p>
       <!--  <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p> -->
      </div>
    </div>
  </div>
</div>
      </div>
    </div>
    
  </div>
    <div class="row gy-5">
    <div class="col-6">
      <div class="p-3"> 
      </div>
    </div>
   
    <div class="col-6">
      <div class="p-3">
      <div class="card border-info  mb-3" style="max-width: 840px;">
  <div class="row g-0">
   
    <div class="col-md-8">
      <div class="card-body">
        <h2 style="color: #8c65e6;" class="card-title">User-Friendly Interface</h2>
        <p style="color: #2c233d;" class="card-text fs-5">Experience seamless efficiency with our user-friendly interface: an intuitive design ensuring a flawlessly smooth user experience.</p>
       <!--  <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p> -->
      </div>
    </div>
     <div class="col-md-4">
      <img src="./userfriendly.jpg" style="width:450px; height:220px" class="img-fluid rounded-end" alt="...">
    </div>
  </div>
</div>
 
      </div>
    </div>
  </div>
  
</div>
</div>	 
		 
	<div id="about" class="container   text-center"><h1 style="color: #009999">ABOUT US</h1></div>
<div class="container-fluid pt-5 d-flex aligin-items-center align-content-center justify-content-center">
  <div class="card mb-3" style="max-width: 1040px;">
  <div class="row g-0">
    <div class="col-md-4">
      <img src="./aboutus.jpg" style="width: 450px;height:300px"   class="img-fluid rounded-start" alt="todo image">
    </div>
    <div class="col-md-8">
      <div class="card-body">
         
        
        
  
  <ul class="feature-list" type="none">
    <li style="color: #2c233d;" class="feature-list-item fw-bold fs-4 pt-2">
      <span  class="feature-icon">&#127919;</span> <!-- Target or Bullseye Icon -->
      Crafting Seamless Task Management Experiences.
    </li>
    <li style="color: #2c233d;" class="feature-list-item fw-bold fs-4 pt-1">
      <span class="feature-icon">&#128214;</span> <!-- Book or Storybook Icon -->
      From Concept to Productivity Partner.
    </li>
    <li style="color: #2c233d;" class="feature-list-item fw-bold fs-4 pt-1">
      <span class="feature-icon">&#127974;</span> <!-- Team or Unity Symbol Icon -->
      Passionate Minds, Productive Solutions.
    </li>
    <li style="color: #2c233d;" class="feature-list-item fw-bold fs-4 pt-1">
      <span class="feature-icon">&#128172;</span> <!-- Heart and User Symbol Icon -->
      Designing for Intuitive Task Handling.
    </li>
    
    <li style="color: #2c244d;" class="feature-list-item fw-bold fs-4 pt-1">
       <span class="feature-icon">&#127918;</span> <!-- Lightbulb or Innovation Icon -->
Pioneering continuous innovation for  solutions.
    </li>
    <li style="color: #2c233d;" class="feature-list-item fw-bold fs-4 pt-1" >
      <span class="feature-icon">&#128187;</span> <!-- Handshake or Collaboration Icon -->
      Fostering collaboration with reliability at its core.
    </li>
  </ul>

  <!-- Other sections... -->

</div>
        
      </div>
    </div>
  </div>
</div>
 
         
	
	
	
	
		
   
    <div class="pic"><img class="mt-2" width="150px" height="50px" src="./Images/aklogo.png" alt="logo">
    <h1>ARUN KUMAR</h1>
</div>
     <div id="contact" class="hori"><h2>Contact Us</h2> <br>
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
    </p>    </footer>     
	 
 

 
	
	

</body>
</html>