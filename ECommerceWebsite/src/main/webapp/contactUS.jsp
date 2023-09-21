<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ContactUS-ViewPage</title>
<%@include file="components/common_css_js.jsp"%>
</head>
<body>
	<%@include file="components/navbar.jsp"%>
<div class="container-fluid">
		<div class="row mt-5">
		<div class="col-md-4 offset-md-4">
		
			<div class="card">
			
			<%@include file="components/message.jsp" %>
				<div class="card-body px-5">
				
  				<div class="container text-center">
                          <img src="image/contactUs.jpg" style="max-width:100px;" class="img-fluid" alt="">
                     </div>
                     
					<h3 class="text-center my-3" style="color:#673ab7!important; "><b>Contact Us For Any Query --!!</b></h3>
					
		<form action="ContactUserCtl" method="post">
						<div class="form-group">
							<label for="name" style="color:blue;"><b>Your Name</b></label> 
							<input name="user_name" type="text"
								class="form-control" id="name" aria-describedby="emailHelp"
								placeholder="Enter Your Name Here..!!">
						</div>

						<div class="form-group">
							<label for="email" style="color: blue;"><b>Your Email-ID</b></label> 
							<input name="user_email" type="email"
								class="form-control" id="email" aria-describedby="emailHelp"
								placeholder="Enter Your Email-ID Here..!!">
						</div>

						<div class="form-group">
							<label for="phone" style="color: blue;"><b>Your Phone Number</b></label> 
							<input name="user_phone" type="number"
								class="form-control" id="phone" aria-describedby="emailHelp"
								placeholder="Enter Your Phone Number Here..!!">
						</div>
						
						
						<div class="form-group">
							<label for="subject" style="color: blue;"><b>Subject Related to Query</b></label> 
							<input name="subjectOfQuery"  type="text" class="form-control" id="subjectOfQuery"
								aria-describedby="emailHelp"
								placeholder="Enter Your Subject Related to Your Query Here..!!">
						</div>

						<div class="form-group">
							<label for="yourProblem" style="color: blue;"><b> Enter Your Thoughts for Query</b></label>
							<textarea name="yourProblem" style="height: 150px;" class="form-control" placeholder="Enter Your Statement for Query Here...!!"></textarea>
						</div>

						<div class="container text-center">
							<button class="btn btn-outline-success">Submit Your Query to US</button>
							<a href="login.jsp" class="text-right d-block mb-2"> <h6 style="color:blue;"> GoTo Login Page </h6> </a>
						</div>


		</form>

				</div>

			</div>
		</div>
	</div>
</div>
<!--For Accessing CheckOut Page from directly Cart only -->
<%@include  file="components/common_modals.jsp" %>

</body>
<%@include file="components/footer.jsp" %>
</html>