 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script >
function validateForm() {
    var uname = document.getElementsByName("uname")[0].value;
    var uMob = document.getElementsByName("uMob")[0].value;
    var upass = document.getElementsByName("upass")[0].value;

    var nameRegex = /^[a-zA-Z\s]+$/;
    var uMobRegex = /^\d{10}$/;
    var upassRegex = /^(?=.*[!@#$%^&])(?=.*[A-Z]).{8,}$/;
    if (!nameRegex.test(uname)) {
        alert("Name should contain only alphabets.");
        return false;
    }

    if (!uMobRegex.test(uMob)) {
        alert("Please enter a 10-digit mobile number.");
        return false;
    }

    if (!upassRegex.test(upass)) {
        alert("Password must be at least 8 characters long, contain at least one special symbol (!@#$%^&*), and at least one uppercase letter.");
        return false;
    }

    return true;
}


 </script>

</head>

  <body>
    <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script
      src="https://kit.fontawesome.com/64d58efce2.js"
      crossorigin="anonymous">
    </script>
    <link rel="stylesheet" href="style_s.css" />
    <title>Sign in & Sign up Form </title>
  </head>
  <body>
  
    <div class="container">
      <div class="forms-container">
        <div class="signin-signup">
        
        <form action="login" class="sign-in-form" onsubmit="return validateForm()">
            <h2 class="title">Login</h2>
            
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="text" placeholder="Username"  name="uname" required="required"/>
            </div>
            
             <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="text" placeholder="Address"  name="uadd" required="required"/>
            </div>
            
             <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="number" placeholder="MobNo" name="uMob" required="required" />
            </div>
             
            <div class="input-field">
             <i class="fas fa-eye-slash" id="togglePassword"></i>
  <input type="password" placeholder="Password" name="upass" id="upass" required="required"/>
       </div>     
                         
            <input type="submit" class="btn" value="Sign in" />
            <p class="social-text">Or Sign up with social platforms</p>
            <div class="social-media">
              <a href="#" class="social-icon">
                <i class="fab fa-facebook-f"></i>
              </a>
              <a href="#" class="social-icon">
                <i class="fab fa-twitter"></i>
              </a>
              <a href="#" class="social-icon">
                <i class="fab fa-google"></i>
              </a>
              <a href="#" class="social-icon">
                <i class="fab fa-linkedin-in"></i>
              </a>
            </div>
          </form>
          
          
        </div>
      </div>

      <div class="panels-container">
        <div class="panel left-panel">
         
          <img src="img/log.svg" class="image" alt="" />
        </div>
        <div class="panel right-panel">
          <div class="content">
            <h3>One of us ?</h3>
            <p>
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum
              laboriosam ad deleniti.
            </p>
            <button class="btn transparent" id="sign-in-btn">
              Add_User
            </button>
          </div>
          <img src="img/register.svg" class="image" alt="" />
        </div>
      </div>
    </div>

    <script src="app.js"></script>
    <script >
    document.getElementById("togglePassword").addEventListener("click", function() {
    	  var passwordField = document.getElementById("upass");
    	  if (passwordField.type === "password") {
    	    passwordField.type = "text";
    	    this.classList.remove("fa-eye-slash");
    	    this.classList.add("fa-eye");
    	  } else {
    	    passwordField.type = "password";
    	    this.classList.remove("fa-eye");
    	    this.classList.add("fa-eye-slash");
    	  }
    	});
    </script>
   </body>
</html>
	
 