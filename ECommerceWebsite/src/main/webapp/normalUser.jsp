<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ECart-WelcomePage</title>

<%@include file="components/common_css_js.jsp" %>
<link rel="stylesheet" href="css/welocmePage_aboutPage_userPage_ECommerce.css">
<meta name="viewport" content="width=device-width, initial-sclae=1.0">

</head>
<body>
<%@include file="components/navbar.jsp" %>
<body>
      <div class="about-section">
        <div class="inner-width">
          <h1 style="color:#ff4081!important"><b>Welcome Dear User to the ECommerce Cart Portal</b></h1>
          <div class="border"></div>
          <div class="about-section-row">
            <div class="about-section-col">
              <div class="about">
                <p>
                  This E-Commerce Cart  has a special category Sporty Shoes that is a module of company that manufactures and sells sports shoes along with other types of Shoes. 
                  Previously we  have a walk-in store, and now, We wish to launch Our e-commerce portal for sportyshoes along with other category like Laptops, Mobiles, Clothes and Kitchens Module in our E-Cart .
                </p>
                <a href="index.jsp" style="color:blue;"><b>To Shop with US Please click here</b></a>
              </div>
            </div>
            <div class="about-section-col">
            <h2 style="color:#ff4081!important;" >We have Best Category of Products as per User's Ratings</h2>
              <div class="skills">
                <div class="skill">
                  <div class="title" style="color: #827717;"><b>Sporty Shoes along with Normal Shoes</b></div>
                  <div class="progress">
                    <div class="progress-bar p1"><span>90%</span></div>
                  </div>
                </div>

                <div class="skill">
                  <div class="title" style="color: #827717;"><b>Laptops Category</b></div>
                  <div class="progress">
                    <div class="progress-bar p2"><span>85%</span></div>
                  </div>
                </div>
                
                <div class="skill">
                  <div class="title" style="color: #827717;"><b>Mobiles Category</b></div>
                  <div class="progress">
                    <div class="progress-bar p2"><span>79.30%</span></div>
                  </div>
                </div>
                <div class="skill">
                  <div class="title" style="color: #827717;"><b>Kitchens-Things Category</b></div>
                  <div class="progress">
                    <div class="progress-bar p2"><span>69%</span></div>
                  </div>
                </div>

                <div class="skill">
                  <div class="title" style="color: #827717;"><b>Clothes Category</b></div>
                  <div class="progress">
                    <div class="progress-bar p3"><span>65%</span></div>
                  </div>
                </div>
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