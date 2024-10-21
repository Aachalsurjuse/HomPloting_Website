<%@page import="com.Pojo.ContactDetail"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Contact Details</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style type="text/css">
	body {
		background-color: #f8f9fa;
		font-family: Arial, sans-serif;
		padding-top: 20px;
	}

	.container {
		max-width: 900px;
		margin: 40px auto;
		background-color: #fff;
		border-radius: 10px;
		box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		padding: 20px;
		margin-top: 132px;
		position: relative;
	}

	.page-header {
		color: #007bff;
		font-size: 32px;
		font-weight: bold;
		margin-bottom: 20px;
		text-align: center;
		text-transform: uppercase;
	}

	.table-container {
		background: #fff;
		border-radius: 10px;
		box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		overflow-x: auto;
		margin-top: 20px;
	}

	.table-container .table-responsive {
		max-height: 500px;
		overflow-y: auto;
	}

	.table-container thead th {
		background-color: #007bff;
		color: #fff;
		border-color: #dee2e6;
		vertical-align: middle !important;
	}

	.table th, .table td {
		vertical-align: middle !important;
	}

	.table-hover tbody tr:hover {
		background-color: rgba(0, 123, 255, 0.1);
	}

	.btn-custom {
		font-size: 14px;
		padding: 6px 12px;
	}

	.action-column {
		width: 120px;
	}

	.back-arrow {
		font-size: 60px;
		position: absolute;
		top: 80px;
		left: 300px;
	}

	.table-fixed-header tbody tr:nth-child(-n+5) {
		position: sticky;
		top: 0;
		background-color: #fff;
		z-index: 1;
	}

	@media (max-width: 576px) {
		.page-header {
			font-size: 24px;
		}

		.container {
			margin: 20px auto;
			margin-top: 174px;
		}

		.back-arrow {
			font-size: 60px;
			position: absolute;
			left: 0px;
			top: 129px;
		}
	}

	@media (min-width: 768px) {
		.page-header {
			font-size: 24px;
		}

		.container {
			margin: 20px auto;
			margin-top: 174px;
		}

		.back-arrow {
			font-size: 60px;
			position: absolute;
			top: 130px;
			left: 2px;
		}
	}

	@media (min-width: 1024px) {
		.page-header {
			font-size: 24px;
		}

		.container {
			margin: 20px auto;
			margin-top: 174px;
		}

		.back-arrow {
			font-size: 60px;
			position: absolute;
			top: 130px;
			left: 65px;
		}
	}

	@media (min-width: 1440px) {
		.back-arrow {
			font-size: 60px;
			position: absolute;
			top: 130px;
			left: 276px;
		}
	}

	@media (min-width: 2560px) {
		.back-arrow {
			font-size: 77px;
			position: absolute;
			top: 120px;
			left: 829px;
		}
	}
</style>
</head>
<body>

<%
	String check = (String)session.getAttribute("checkadd");
	if (check != null) {
		ArrayList<ContactDetail> cDetail = (ArrayList<ContactDetail>)session.getAttribute("users");
%>
<a href="admin.jsp" class="back-arrow">&#8592;</a>

<div class="container">
	
	<div class="page-header">
		<h2>Contact Details</h2>
	</div>

	<div class="table-container">
		<div class="table-responsive">
			<table class="table table-striped table-bordered table-fixed-header">
				<thead class="table-primary">
					<tr>
						<th scope="col">SN</th>
						<th scope="col">Fullname</th>
						<th scope="col">Email</th>
						<th scope="col">Mobile No</th>
						<th scope="col">Address</th>
						<th scope="col">Message</th>
						<th scope="col" class="action-column">Action</th>
					</tr>
				</thead>
				<tbody>
					<%
						int sn = 1;
						for (ContactDetail c : cDetail) {
					%>
					<tr>
						<td><%= sn++ %></td>
						<td><%= c.getFullname() %></td>
						<td><%= c.getEmail() %></td>
						<td><%= c.getMobno() %></td>
						<td><%= c.getAddress() %></td>
						<td><%= c.getMessage() %></td>
						<td>
							<form action="deleteContact" method="post" class="d-inline">
								<input type="hidden" name="mobn" value="<%= c.getMobno() %>">
								<button type="submit" class="btn btn-danger btn-sm btn-custom">Delete</button>
							</form>
						</td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
		</div>
	</div>
</div>

<%
	} else {
		response.sendRedirect("admin.jsp");
	}
%>

</body>
</html>
