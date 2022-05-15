<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="model.*"%>

<%
if (request.getParameter("account_Number") != null) {
	SloarForm slarObj = new SloarForm();
	String stsMsg = slarObj.insertSolarForm(request.getParameter("account_Number"), request.getParameter("full_Name"),
			request.getParameter("user_nic"), request.getParameter("address"), request.getParameter("contact_Number"),
			request.getParameter("email_Address"), request.getParameter("bank_account_Number"),
			request.getParameter("bank_Branch"));

	session.setAttribute("statusMsg", stsMsg);
%>
<script>
	alert("Reister succsees");
	window.location.replace("solar_request_details.jsp");
</script>

<%
}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Sloar Request Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="css/style.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>

<style type="text/css">
.myDiv {
	border-radius: 5px;
	background-color: #f2f2f2;
	margin: 20px;
	padding: 50px;
}
</style>


</head>
<body>
	<nav>
		<input type="checkbox" id="check"> <label for="check"
			class="checkbtn"> <i class="fas fa-bars"></i>
		</label> <img style="max-width: 250px;" class="logo" src="img/mainlogo5.png">

		<ul>
			<li><a href="#">Home</a></li>
			<li><a class="active" href="#">solar request</a></li>
			<li><a href="#">power cut schedule</a></li>
			<li><a href="#">About US</a></li>
			<li><a href="#">COntact Us</a></li>
			<li><a href="#">My Account</a></li>
		</ul>
	</nav>
	<section>
		<div class="myDiv">
			<form action="#">


				<label for="account_number">Account Number</label><br>
				<br> <input id="account_number" name="account_Number"
					type="text"> <label for="full_Name">Full Name</label><br>
				<br> <input id="full_Name" name="full_Name" type="text">

				<label for="user_nic">NIC Number</label><br>
				<br> <input id="user_nic" name="user_nic" type="text">

				<label for="address">Address</label><br>
				<br> <input id="address" name="address" type="text"> <label
					for="contact_Number">Contact Number</label><br>
				<br> <input id="contact_Number" name="contact_Number"
					type="text"> <label for="email_Address">Email
					Address</label><br>
				<br> <input id="email_Address" name="email_Address" type="text">

				<label for="bank_account_Number">Bank Account Number</label><br>
				<br> <input id="bank_account_Number" name="bank_account_Number"
					type="text"> <label for="bank_Branch">Barnch Bank</label><br>
				<br> <input id="bank_Branch" name="bank_Branch" type="text">

				<input type="submit" name="btnSubmit" value="Submit">
			</form>
		</div>

	</section>

</body>
</html>