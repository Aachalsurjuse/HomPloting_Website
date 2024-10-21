<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<title>Edit Plot Booking</title>
<style>
    body {
        font-family: 'Poppins', sans-serif;
        background-color: #f8f9fa;
        padding: 20px;
    }
    h1 {
        text-align: center;
        margin-top: 20px;
        color: #343a40;
    }
    .container {
        background: #fff;
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        margin-top: 20px;
        max-width: 600px;
    }
    .form-group {
        margin-bottom: 20px;
    }
    label {
        font-weight: bold;
        color: #495057;
    }
    .form-check-label {
        margin-right: 20px;
    }
    .btn-primary {
        width: 100%;
        font-size: 1.2em;
        background-color: #007bff;
        border-color: #007bff;
    }
    .btn-primary:hover {
        background-color: #0056b3;
        border-color: #0056b3;
    }
    .form-control:focus {
        border-color: #007bff;
        box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
    }
</style>
<script type="text/javascript">
    function validateForm() {
        var buyerName = document.getElementById("Buyer_Name").value;
        var direction = document.getElementById("Direction").value;
        var plotSize = document.getElementById("Plot_Size").value;

        var buyerNameRegex = /^[a-zA-Z\s]+$/;
        var directionRegex = /^[a-zA-Z]+$/;
        var plotSizeRegex = /^\d{1,15}[a-zA-Z]+$/;

        if (!buyerNameRegex.test(buyerName)) {
            alert("Name should contain only alphabets.");
            return false;
        }
        if (!directionRegex.test(direction)) {
            alert("Direction field should contain only alphabets.");
            return false;
        }
        if (!plotSizeRegex.test(plotSize)) {
            alert("Plot Size field should contain only digits and alphabets.");
            return false;
        }
        return true;
    }
</script>
</head>
<body>

<% 
    String SN = request.getParameter("SN");
    String pname = request.getParameter("pname");
    String Buyer_Name = request.getParameter("Buyer_Name");
    String date = request.getParameter("date");
    String paid_amount = request.getParameter("paid_amount");
    String direction = request.getParameter("direction");
    String plot_prize = request.getParameter("plot_prize");
    String plot_size = request.getParameter("plot_size");
%>

<h1>Edit Plot Booking</h1>
<div class="container">
    <form action="EditPlotBooking" method="post" onsubmit="return validateForm()">
        <input type="hidden" name="SN" value="<%= SN %>">
        <input type="hidden" name="pname" value="<%= pname %>">

        <div class="form-group">
            <label for="Buyer_Name">Buyer Name</label>
            <input type="text" name="Buyer_Name" class="form-control" id="Buyer_Name" value="<%= Buyer_Name %>">
        </div>

        <div class="form-group">
            <h5>Available Status</h5>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="Available_status" id="available" value="Available">
                <label class="form-check-label" for="available">Available</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="Available_status" id="booked" value="Booked">
                <label class="form-check-label" for="booked">Booked</label>
            </div>
        </div>

        <div class="form-group">
            <h5>Payment Status</h5>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="Payment_status" id="none" value="None">
                <label class="form-check-label" for="none">None</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="Payment_status" id="partially" value="Partially payment">
                <label class="form-check-label" for="partially">Partially Payment</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="Payment_status" id="full" value="Full payment">
                <label class="form-check-label" for="full">Full Payment</label>
            </div>
        </div>

        <div class="form-group">
            <label for="Paid_Amount">Paid Amount</label>
            <input type="number" name="Paid_Amount" class="form-control" id="Paid_Amount" value="<%= paid_amount %>">
        </div>

        <div class="form-group">
            <label for="Plot_Prize">Plot Prize</label>
            <input type="number" name="Plot_Prize" class="form-control" id="Plot_Prize" required value="<%= plot_prize %>">
        </div>

        <div class="form-group">
            <label for="Plot_Size">Plot Size</label>
            <input type="text" name="Plot_Size" class="form-control" id="Plot_Size" required value="<%= plot_size %>">
        </div>

        <div class="form-group">
            <label for="Direction">Direction</label>
            <input type="text" name="Direction" class="form-control" id="Direction" required value="<%= direction %>">
        </div>

        <div class="form-group">
            <label for="Date">Date</label>
            <input type="date" name="Date" class="form-control" id="Date" value="<%= date %>">
        </div>

        <button type="submit" class="btn btn-primary mt-4">Update</button>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>

</body>
</html>
