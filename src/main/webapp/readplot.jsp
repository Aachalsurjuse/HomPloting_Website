<%@page import="java.util.ArrayList"%>
<%@page import="com.Pojo.Plot_Details"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Booking Details</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
  body {
    font-family: Arial, sans-serif;
    font-size: 16px;
    background-color: #e9f5ff;
    padding-top: 20px;
  }

  h1 {
    text-align: center;
    font-size: 2em;
    color: #0056b3;
    margin-bottom: 30px;
  }

  .arrow {
    position: absolute;
    top: 20px;
    left: 20px;
  }

  .search-container {
    text-align: center;
    margin-bottom: 30px;
  }

  .search-bar {
    width: 100%;
    max-width: 500px;
    padding: 10px;
    font-size: 18px;
    border-radius: 5px;
    border: 1px solid #ccc;
    margin-right: 10px;
    margin-bottom: 10px;
    box-sizing: border-box;
    background-color: #fff;
  }

  .search-btn {
    padding: 10px 20px;
    font-size: 18px;
    border-radius: 5px;
    border: none;
    background-color: #007bff;
    color: white;
    cursor: pointer;
  }

  .container.border {
    background: #ffffff;
    border-radius: 10px;
    padding: 20px;
    margin-bottom: 20px;
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
  }

  .container h5 {
    font-weight: bold;
    color: #0056b3;
  }

  .container p {
    font-size: 1.1em;
    color: #333;
  }

  .btn-space {
    margin-right: 5px;
  }

  .highlight {
    background-color: #d3e9ff;
  }

  /* Responsive adjustments */
  @media screen and (max-width: 768px) {
    body {
      font-size: 16px;
    }

    h1 {
      font-size: 1.5em;
    }

    .search-bar {
      font-size: 16px;
    }

    .search-btn {
      font-size: 15px;
      padding: 15px;
    }

    .container p {
      font-size: 1em;
    }
  }

  @media screen and (max-width: 480px) {
    body {
      font-size: 14px;
    }

    h1 {
      font-size: 1.2em;
    }

    h5 {
      font-size: 1.2em;
    }

    .search-bar {
      font-size: 12px;
      width: 60%; /* Reduced width for mobile screens */
    }

    .search-btn {
      font-size: 10px;
      padding: 10px;
    }

    .arrow img {
      height: 25px;
      width: 25px;
    }

    .container p {
      font-size: 16px;
    }

    .row {
      padding-left: 30px;
      padding-right: 20px;
    }
  }
</style>
</head>

<body>
<div class="arrow">
  <a href="plotbooking.jsp">
    <img src="Project_Img/arrow.jpg" height="50px" width="50px" />
  </a>
</div>
<h1>Booking Details</h1>

<div class="search-container">
  <form method="post" action="readplot.jsp">
    <input type="text" class="search-bar" name="plotno" placeholder="Enter Plot No">
    <button type="submit" class="search-btn">Search</button>
  </form>
</div>

<%
  String pname = (String) session.getAttribute("projectname");
  System.out.println("in readplot jsp page " + pname);
  ArrayList<Plot_Details> users = (ArrayList<Plot_Details>) session.getAttribute("plotdetail");
  System.out.println("details " + users);

  String plotno = request.getParameter("plotno");
%>

<%
  for (Plot_Details p : users) {
    String plotId = "plot-" + p.getSN();
%>
<div class="container border" id="<%= plotId %>">
  <div class="row">
    <div class="col-md-12">
      <h5>SN</h5>
      <p><%= p.getSN() %></p>
    </div>

    <div class="col-md-4 col-lg-3">
      <h5>Buyer Name</h5>
      <p><%= p.getBuyer_Name() %></p>
    </div>

    <div class="col-md-4 col-lg-3">
      <h5>Available Status</h5>
      <p><%= p.getAvailable_status() %></p>
    </div>

    <div class="col-md-4 col-lg-3">
      <h5>Payment Status</h5>
      <p><%= p.getPayment_status() %></p>
    </div>

    <div class="col-md-4 col-lg-3">
      <h5>Paid Amount</h5>
      <p><%= p.getPaid_Amount() %></p>
    </div>

    <div class="col-md-4 col-lg-3">
      <h5>Plot Prize</h5>
      <p><%= p.getPlot_Prize() %></p>
    </div>

    <div class="col-md-4 col-lg-3">
      <h5>Plot Size</h5>
      <p><%= p.getPlot_Size() %></p>
    </div>

    <div class="col-md-4 col-lg-3">
      <h5>Direction</h5>
      <p><%= p.getDirection() %></p>
    </div>

    <div class="col-md-4 col-lg-3">
      <h5>Date</h5>
      <p><%= p.getDate() %></p>
    </div>
  </div>

  <div class="text-right">
    <form action="bookDetail.jsp" method="post">
      <input type="hidden" name="SN" value="<%= p.getSN() %>">
      <input type="hidden" name="pname" value="<%= pname %>">
      <input type="hidden" name="Buyer_Name" value="<%= p.getBuyer_Name() %>">
      <input type="hidden" name="date" value="<%= p.getDate() %>">
      <input type="hidden" name="direction" value="<%= p.getDirection() %>">
      <input type="hidden" name="paid_amount" value="<%= p.getPaid_Amount() %>">
      <input type="hidden" name="plot_prize" value="<%= p.getPlot_Prize() %>">
      <input type="hidden" name="plot_size" value="<%= p.getPlot_Size() %>">
      <button type="submit" class="btn btn-info btn-space" role="button">Edit</button>
    </form>
  </div>
</div>
<%
  }
%>

<script>
  function scrollToPlot() {
    var plotno = "<%= plotno %>";
    if (plotno) {
      var element = document.getElementById("plot-" + plotno);
      if (element) {
        element.scrollIntoView();
        element.classList.add("highlight");
      }
    }
  }

  window.onload = scrollToPlot;
</script>
</body>
</html>
