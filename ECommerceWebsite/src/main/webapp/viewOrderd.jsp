<%

    User user = (User) session.getAttribute("current-user");
	System.out.println("User Session is :"+ user);
    if (user == null) {

        session.setAttribute("message", "You are not logged in !! Login first to access Checkout page");
        response.sendRedirect("login.jsp");
        return;

    }

%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ordered-ViewPage</title>
<%@include file="components/common_css_js.jsp"%>
<link rel="stylesheet" href="css/welocmePage_aboutPage_userPage_ECommerce.css">
<meta name="viewport" content="width=device-width, initial-sclae=1.0">
</head>
<body>
<%@include file="components/navbar.jsp"%>



<div class="about-section">
        <div class="inner-width">
          <h1 style="color:#673ab7!important"><b>Placed-Ordered Details</b></h1>
          <div class="border"></div>
          <div class="about-section-row">
            <div class="about-section-col">
            <%@include file="components/message.jsp" %>
              <div class="about">
                <p>
                  This E-Commerce Cart  has a special category Sporty Shoes that is a module of company that manufactures and sells sports shoes along with other types of Shoes. 
                  Previously we  have a walk-in store, and now, We wish to launch Our e-commerce portal for sportyshoes along with other category like Laptops, Mobiles, Clothes and Kitchens Module in our E-Cart .
                </p>
                
              </div>
            <div class="card mt-2">
            	<h6 style="color:blue;" ><b>We have Placed Your Order...Please remove selection of orders from your Cart....!!!</b></h6>
            </div>
            </div>
            <div class="about-section-col">
            
            <div class="form-group">
            
            
								<label for="EmailIdForOrders"><h4 style="color:red;"><b>This Email-Id has been used for Yours' Orders....!!! </b></h4> </label> 
								<input name="email"  value ="<%=user.getUserEmail() %> " type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter email">
								<small id="emailHelp" class="form-text text-muted">We'll
									never share your email with anyone else.</small>
			</div>
			<div class="about">
            <a href="bill.jsp?emailId=<%=user.getUserEmail() %>" style="color:red;"><b>Click here to see Your Bill...!!!</b></a>
             </div>
            
            
            <div class="card mt-2">
            <h6 style="color:#673ab7!important;" ><b>We have Best Category of Products as per User's Ratings</b></h6>
              </div>
              <div class="skills">
                <div class="skill">
                  <div class="title">Sporty Shoes along with Normal Shoes</div>
                  <div class="progress">
                    <div class="progress-bar p1"><span>90%</span></div>
                  </div>
                </div>

                <div class="skill">
                  <div class="title">Laptops Category</div>
                  <div class="progress">
                    <div class="progress-bar p2"><span>85%</span></div>
                  </div>
                </div>
                
                <div class="skill">
                  <div class="title">Mobiles Category</div>
                  <div class="progress">
                    <div class="progress-bar p2"><span>79.30%</span></div>
                  </div>
                </div>
                <div class="skill">
                  <div class="title">Kitchens-Things Category</div>
                  <div class="progress">
                    <div class="progress-bar p2"><span>69%</span></div>
                  </div>
                </div>

                <div class="skill">
                  <div class="title">Clothes Category</div>
                  <div class="progress">
                    <div class="progress-bar p3"><span>65%</span></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>


<%@include  file="components/common_modals.jsp" %>
</body>
<%@include file="components/footer.jsp" %>
</html>