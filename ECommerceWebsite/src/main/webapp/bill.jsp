<%

    User user = (User) session.getAttribute("current-user");
	System.out.println("User Session is :"+ user);
    if (user == null) {

        session.setAttribute("message", "You are not logged in !! Login first to access Checkout page");
        response.sendRedirect("login.jsp");
        return;

    }

%>

<%@page import="com.ecommercewebsite.helper.DbConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bill-View Page</title>
<%@include file="components/common_css_js.jsp" %>
</head>
<%@include file="components/navbar.jsp" %>
<body>

<form action="PrintBillCtl" method="post">
	<div class="row">
	<%@include file="components/message.jsp" %>
		<div class="col-md-12">

			<div class="card mt-3 mb-3">


					<table class="table table-bordered">
						<thead>
							<tr>
								<th scope="col">Name</th>
								<th scope="col">Email</th>
								<th scope="col">Contact</th>
								<th scope="col">ShippingAddress</th>
								<th scope="col">PurchaseDate</th>
								<th scope="col">PurchaseCategory</th>
								<th scope="col">DeliveryStatus</th>
								<th scope="col">ModeOfPayment</th>
								<th scope="col">TotalAmount</th>
								<th scope="col">DaysForDelivery</th>
							</tr>
						</thead>
						<tbody>
							<%
									try {
									
									String userEmail = request.getParameter("emailId");
									System.out.println("coming Id for Bill Print is: " + userEmail);
									Connection con = DbConnectionProvider.getCon();
									Statement stmt = con.createStatement();
									ResultSet rs = stmt.executeQuery("select *from purchasedrecord where purchase_UserEmail = '"+userEmail+"'");
									while (rs.next()) {
								%>
							<tr>

								<td><%=rs.getString(2)%></td>
								<td><%=rs.getString(3)%></td>
								<td><%=rs.getString(4)%></td>
								<td><%=rs.getString(5)%></td>
								<td><%=rs.getString(6)%></td>
								<td><%=rs.getString(7)%></td>
								<td><%=rs.getString(8)%></td>
								<td><%=rs.getString(9)%></td>
								<td><%=rs.getString(10)%></td>
								<td><%=rs.getString(11)%></td>
							</tr>

							<%
									}

								} catch (Exception e) {
									System.out.println(e);
								}
								%>
						</tbody>


					</table>
					<label for="EmailIdForOrders"><h4 style="color:blue;">
							<b>Email-Id to save your Order Bill as Pdf is....!!! </b>
						</h4> </label> <input name="email" value ="<%=user.getUserEmail() %>" type="email"
						class="form-control" id="exampleInputEmail1"
						aria-describedby="emailHelp" placeholder="Enter Email to save bill as Pdf"> <small
						id="emailHelp" class="form-text text-muted">We'll never
						share your email with anyone else.</small>


					<div class="container text-center">
	<label for="Print-YourBill"><h3 style="color: red;">Save Your Bill as Pdf File...!!! </h3></label> <br>
		<button type="submit" class="btn btn-primary border-0">Save as Pdf File</button>
	
	</div>
			</div>
	</div>
	
</div>
</form>


<!--For Accessing CheckOut Page from directly Cart only -->
<%@include  file="components/common_modals.jsp" %>



</body>
<%@include file="components/footer.jsp" %>
</html>