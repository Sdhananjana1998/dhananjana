<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="model.*"%>

<%
if (request.getParameter("soloar_Form_Id") != null) {
	SloarForm slr = new SloarForm();
	
	
	
	
	String soloar_Form_Id = request.getParameter("soloar_Form_Id");
	String account_Number = request.getParameter("account_Number");
	String full_Name = request.getParameter("full_Name");
	String user_nic = request.getParameter("user_nic");
	String address = request.getParameter("address");
	String contact_Number = request.getParameter("contact_Number");
	String email_Address = request.getParameter("email_Address");
	String bank_account_Number = request.getParameter("bank_account_Number");
	String bank_Branch = request.getParameter("bank_Branch");

	String stsMsg =slr.updateSolarForm(soloar_Form_Id,account_Number,full_Name,user_nic,address,contact_Number,email_Address,bank_account_Number,bank_Branch); 
%>

<script>
	alert("Update succsees");
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
			<form >

					<%
				Connection conn;
				PreparedStatement pst;
				ResultSet rs;

				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection("jdbc:mysql://localhost/test123", "root", "");

				String id = request.getParameter("id");
				pst = conn.prepareStatement("select * from solar_Request_form where soloar_Form_Id=?");

				pst.setString(1, id);
				rs = pst.executeQuery();

				while (rs.next()) {
				%>


				<input type="hidden" id="soloar_Form_Id" name=soloar_Form_Id
					value="<%=rs.getString("soloar_Form_Id")%>"> 

				<label for="account_number">Account Number</label><br>
				<br> <input id="account_number" name="account_Number"
					type="text" value="<%=rs.getString("account_Number")%>">
					
					 <label for="full_Name">Full Name</label><br>
				<br> <input id="full_Name" name="full_Name" type="text" value="<%=rs.getString("full_Name")%>">

				<label for="user_nic">NIC Number</label><br>
				<br> <input id="user_nic" name="user_nic" type="text" value="<%=rs.getString("user_nic")%>">

				<label for="address">Address</label><br>
				<br> <input id="address" name="address" type="text"value="<%=rs.getString("address")%>">
				
				<label
					for="contact_Number">Contact Number</label><br>
				<br> <input id="contact_Number" name="contact_Number"
					type="text" value="<%=rs.getString("contact_Number")%>">
					
					<label for="email_Address">Email
					Address</label><br>
				<br> <input id="email_Address" name="email_Address" type="text" value="<%=rs.getString("email_Address")%>">

				<label for="bank_account_Number">Bank Account Number</label><br>
				<br> <input id="bank_account_Number" name="bank_account_Number"
					type="text" value="<%=rs.getString("bank_account_Number")%>"> 
					
					<label for="bank_Branch">Barnch Bank</label><br>
				<br> <input id="bank_Branch" name="bank_Branch" type="text" value="<%=rs.getString("bank_Branch")%>">
				
				
				<%
				}
				%>
				<input type="submit" value="Submit">
			</form>
		</div>

	</section>

</body>
</html>