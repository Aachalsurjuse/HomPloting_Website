 <%@page import="java.util.List"%>
<%@page import="com.Pojo.Plot_Details"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

<style type="text/css">

  .table{
      padding-left: 20%;
      padding-right: 20%;

    }
</style>
</head>
<body>
  
  
  <%
      
    	
    	  List<Plot_Details> snParam=( ArrayList<Plot_Details>)session.getAttribute("snParam");
    	 System.out.println("snParam  " + snParam);
    	 
      
      %>
      <h3 class="text-center" style="color: #ffffff; background-color: #007bff; padding: 10px; border: 2px solid #007bff; border-radius: 5px; width: fit-content; margin: 0 auto;">Plot Details</h3>

      <br><br>
      
      <div style="text-align: center;">
     <a role="button" class="btn btn-danger" href="seats.jsp"  >Home</a>
      </div>
      
       <br><br>
       
      <table class="table table-hover" >
<thead>
<tr>
<th>SN</th>
<th>Buyer_Name</th>
<th>Available_status</th>
<th>Payment_status</th>
<th>Paid_Amount</th>
<th>Plot_Price</th>
<th>Plot_Size</th>
<th>Direction</th>
<th>Date</th>


</tr>
</thead>

<tbody>

<%
for(Plot_Details p:snParam)
{
	
%>
<tr>
<td><%=p.getSN() %></td>
<td><%=p.getBuyer_Name() %></td>
<td><%=p.getAvailable_status() %></td>
<td><%=p.getPayment_status() %></td>
<td><%=p.getPaid_Amount() %></td>
<td><%=p.getPlot_Prize() %></td>
<td><%=p.getPlot_Size() %></td>
<td><%=p.getDirection() %></td>
<td><%=p.getDate() %></td>
</tr>
<%} %>
</tbody>
</table>


  
</body>
</html>