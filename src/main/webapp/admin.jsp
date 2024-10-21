<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style>
    /* General Styles */
    body {
        background-color: #f8f9fa;
        padding: 20px;
        font-family: 'Poppins', sans-serif;
    }

    .center-div {
        background: #fff;
        padding: 40px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
                    border-radius: 5%; /* Completely circular */
        
    }

    .btn-space {
        margin-bottom: 10px;
    }

.btn{
margin-top: 10px;
}
    .popup {
        display: none;
        position: fixed;
        z-index: 1;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.4);
    }

    .popup-content {
        background-color: #006hhh;
        margin: 5% auto;
        padding: 5px;
        border: 1px solid #888;
        width: 90%;
        max-width: 600px;
        text-align: center;
        border-radius: 10px;
    }

    .close {
        color: #aaa;
        float: right;
        font-size: 28px;
        font-weight: bold;
        cursor: pointer;
    }

    .close:hover,
    .close:focus {
        color: black;
        text-decoration: none;
    }

    /* Responsive Styles */
    @media (max-width: 576px) { /* Mobile devices */
        .center-div {
            padding: 20px;
        }
.popup{
 padding-top: 150px;
}
    
   .navbar-toggler {
            display: block !important;
        }

        .navbar-collapse {
            display: none;
        }

        .navbar-toggler-icon {
            background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 30 30' xmlns='http://www.w3.org/2000/svg'%3e%3cpath stroke='rgba(0, 0, 0, 0.55)' stroke-width='2' stroke-linecap='round' stroke-miterlimit='10' d='M4 7h22M4 15h22M4 23h22'/%3e%3c/svg%3e");
        }

        .show {
            display: block !important;
        }

        .navbar .btn-group-toggle {
            display: block !important;
        }

        .btn-group-toggle {
            display: flex;
            flex-direction: column;
        }
        .container, .container-fluid, .container-lg, .container-md, .container-sm, .container-xl, .container-xxl {
            --bs-gutter-x: 1.5rem;
            --bs-gutter-y: 0;
            width: 100%;
            padding-right: calc(var(--bs-gutter-x)* .5);
            padding-left: calc(var(--bs-gutter-x)* .5);
            margin-right: auto;
            margin-left: auto;
 padding-top: 40px;
        padding-bottom: 30px;        }
    }

    @media (min-width: 577px) { /* Tablets, small laptops and larger screens */
        .center-div {
            padding: 30px;
        }
	
        .navbar-toggler {
            display: none !important;
        }
		.popup{
 padding-top: 150px;
}
        .btn-group-toggle {
            display: block !important;
        }
        .container, .container-md, .container-sm {
            max-width: 700px;
           padding-top: 30px;
        padding-bottom: 30px;        }
    }
    @media (min-width: 768px) {
        .container, .container-md, .container-sm {
            max-width: 785px;
              padding-bottom: 20px;
        padding-top: 20px; 
        }
        .popup{
       padding-top: 100px;
    }
    }
    
      @media (min-width: 1024px) {
    .container, .container-md, .container-sm {
        padding-bottom: 20px;
        padding-top: 20px;
        margin-top: 20px;
            }
}
@media (min-width: 1140px) {
    .container, .container-md, .container-sm {
        padding-bottom: 20px;
        padding-top: 20px;
        margin-top: 20px;
        margin-bottom: 20px;
            }
    .fm{
        background-color: #f0f0f0; /* Light grey background */
    padding-top: 20px;
        padding-bottom: 20px;
    }
      .popup{
 padding-top: 40px;
}
            }
    .inputbox
    {
     margin-left: 5%;
    margin-right: 10%;
    width: 90%;
    }
    .lbl{
    	padding: 10px;
    }
    .input{
           box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
  
    width: 90%;
    margin-left: 5%;
    margin-right: 5%;
    }
} 
@media (min-width: 2560px) {
    .container, .container-md, .container-sm {
        padding-bottom: 20px;
        padding-top: 40px;
        margin-top: 100px;
        margin-bottom: 100px;
    }
    .popup{
 padding-top: 80px;
}
} 

</style>
</head>
<body>
<% String check = (String) session.getAttribute("checkadd");

    if (check != null) {
        String name = check;
%>
<div class="container">
    <div class="center-div">
        <h1 style="text-align: center;">Admin Page</h1>
        <br>

        <!-- Toggle Button for Mobile -->
        <button class="btn btn-primary navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Navbar Collapse for Mobile -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <div class="btn-group-toggle">
                <a href="changecredential.jsp" class="btn btn-primary btn-space">Change Credential</a>
                <a href="AddUser.jsp" class="btn btn-primary btn-space">Add User</a>
                <a href="bookingDetails" class="btn btn-primary btn-space">Plot Booking Info</a>
                <a role="button" class="btn btn-primary btn-space" href="#" id="addNewProjectButtonMobile">Add New Project</a>
            <a href="AddMoreInfo.jsp" class="btn btn-primary btn-space">Add_MoreInfo</a>
                
            </div>
        </div>

        <!-- Navbar for Tablets and Larger Screens -->
        <div class="btn-group-toggle d-none d-md-block">
            <a href="changecredential.jsp" class="btn btn-primary btn-space">Change Credential</a>
            <a href="AddUser.jsp" class="btn btn-primary btn-space">Add User</a>
            <a href="bookingDetails" class="btn btn-primary btn-space">Plot Booking Info</a>
            <a role="button" class="btn btn-primary btn-space" href="#" id="addNewProjectButtonDesktop">Add New Project</a>
            <a href="AddMoreInfo.jsp" class="btn btn-primary btn-space">Add_MoreInfo</a>
        </div>

        <br>

        <!-- Popup Dialog -->
        <div id="popupDialog" class="popup">
            <div class="popup-content">
                <span class="close">&times;</span>
                <form action="generateplots" class="fm" method="post" enctype="multipart/form-data">
                      <h2>Add New Project</h2><br>
                    <div class="form-group inputbox">
                        <label for="numSeats" class="lbl">Generates plots</label>
                        <input type="number" class="form-control input" id="numSeats" name="numSeats" required>
                    </div>
                    <div class="form-group inputbox">
                        <label for="projectName"  class="lbl">Project Name</label>
                        <input type="text" class="form-control input" id="projectName" name="Pro_name" required>
                    </div>
                    <div class="form-group inputbox">
                        <label for="projectMsg"  class="lbl">Message</label>
                        <textarea class="form-control input" id="projectMsg" name="P_msg" rows="2" required></textarea>
                    </div>
                    <div class="form-group inputbox">
                        <label for="img"  class="lbl">Choose file</label>
                        <input type="file" class="form-control input" id="img" name="pimg">
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>

        <br>

        <!-- Logo Upload Form -->
        <form action="AddLogo" method="post" enctype="multipart/form-data" class="mb-3">
            <div class="form-group">
                <label for="Lfile">Choose Logo file</label>
                <input type="file" class="form-control" id="Lfile" name="Lfile">
            </div>
            <button type="submit" class="btn btn-success">Add Logo</button>
        </form>

        <!-- Hero Image Upload Form -->
        <form action="AddHeroImg" method="post" enctype="multipart/form-data" class="mb-3">
            <div class="form-group">
                <label for="Hfile">Choose Hero Image file</label>
                <input type="file" class="form-control" id="Hfile" name="Hfile">
            </div>
            <button type="submit" class="btn btn-success">Add Hero Image</button>
        </form>

        <!-- Side Image Upload Form -->
        <form action="AddSideImg" method="post" enctype="multipart/form-data" class="mb-3">
            <div class="form-group">
                <label for="Sfile">Choose Side Image file</label>
                <input type="file" class="form-control" id="Sfile" name="Sfile">
            </div>
            <button type="submit" class="btn btn-success">Add Side Image</button>
        </form>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-nBMmTbPc9AeL0E7XO7tlN8jsDpZIkQg75yuDv+Oh//0qG2yZ8g8pOfDfj1l1Lylq" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-hGLk5NKnKFcVxHxvl1cSMQsVhjEDCZhRm3zL8+aT6zF8RsL8ZXedYg1z5ZcV1Tdd" crossorigin="anonymous"></script>

<script>
    // Toggle Navbar for Mobile
    var navbarToggle = document.querySelector('.navbar-toggler');
    var navbarCollapse = document.querySelector('#navbarSupportedContent');

    navbarToggle.addEventListener('click', function () {
        navbarCollapse.classList.toggle('show');
    });

    // Popup functionality
    var addNewProjectButtonDesktop = document.getElementById("addNewProjectButtonDesktop");
    var addNewProjectButtonMobile = document.getElementById("addNewProjectButtonMobile");
    var popup = document.getElementById("popupDialog");
    var closeButton = document.getElementsByClassName("close")[0];

    addNewProjectButtonDesktop.onclick = addNewProjectButtonMobile.onclick = function() {
        popup.style.display = "block";
    }

    closeButton.onclick = function() {
        popup.style.display = "none";
    }

    window.onclick = function(event) {
        if (event.target == popup) {
            popup.style.display = "none";
        }
    }
</script>
<% } else {
    response.sendRedirect("adminlogin.jsp");
} %>
</body>
</html>
