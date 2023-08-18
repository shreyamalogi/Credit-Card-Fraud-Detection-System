<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin Main</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-quicksand.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {
	font-size: 24px;
	color: #FF0000;
}
.style4 {color: #CC6600}
.style5 {color: #2C83B0}
.style7 {font-weight: bold}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1 align="center"><a href="index.html" class="style1">Credit card fraud detection using AdaBoost and majority voting</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="AdminLogin.jsp"><span>Bank Admin</span></a></li>
          <li><a href="EcommerceLogin.jsp"><span>Ecommerce</span></a></li>
          <li><a href="UserLogin.jsp"><span>User</span></a></li>
          <li><a href="#"><span>Contact Us</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="935" height="285" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="935" height="285" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="935" height="285" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article"> 
          <h2 class="style4" style="color:#CC6600">Welcome </span><span class="style5"> <%=(String)application.getAttribute("adbank")%> </span>Admin :: <span class="style7"><%=(String)application.getAttribute("adname")%></span>..</h2>
          <div class="clr"></div>          
          <div class="post_content">
           
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p><img src="images/Admin.jpg" width="592" height="430" /></p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
          </div>
          <div class="clr"></div>
        </div>
        </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Admin</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><strong><a href="AdminMain.jsp">Home</a></strong></li>
						  <li><strong><a href="AdminProfile.jsp">Bank Admin's Profile</a> </strong></li>
        			      <li><strong><a href="Admin_AuthorizeUsers.jsp">View Users and Authorize</a> </strong></li>
						  <li><strong><a href="Admin_AuthorizeEUsers.jsp">View Ecommerce Website Users and Authorize</a> </strong></li>
						  <li><strong><a href="Admin_AddBank.jsp">Add Bank</a> </strong></li>
						  <li><strong><a href="Admin_ViewBankDetails.jsp">View Bank Details</a> </strong></li>
           				  <li><strong><a href="Admin_ViewCCRequest.jsp">View Credit Card Requests</a> </strong></li>
						  <li><strong><a href="Admin_ViewProducts.jsp">View all Products with rank</a> </strong></li>
           				  <li><strong><a href="Admin_ViewAllFinancialFrauds.jsp">View all Financial Frauds </a></strong></li>
           				  <li><strong><a href="Admin_ViewWrongCvvFrauds.jsp">View all Financial Frauds with Random Forest Tree With wrong CVV </a> </strong></li>
						  <li><strong><a href="Admin_ViewExpCreditCardFrauds.jsp">View all Financial Frauds with Random Forest Tree with Expired Date Usage </a> </strong></li>
						  <li><strong><a href="Admin_MajorityFinancialFraud.jsp">List Of all Users with Majority of Financial Fraud </a> </strong></li>
						  <li><strong><a href="Admin_ProductRankChart.jsp">Show Product Rank In Chart </a></strong></li>
						  <li><strong><a href="Admin_MajorityWrongCvvChart.jsp">Show Majority Voting With Wrong CVV Fraud in chart </a> </strong></li>
						  <li><strong><a href="Admin_MajorityExpiredCreditCardChart.jsp">Show Majority Voting with Expiry date Usage in chart </a> </strong></li>
						  <li><strong><a href="AdminLogin.jsp">Logout </a></strong></li>
          </ul>
        </div>
        
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer"></div>
</div>
<div align=center></div>
</body>
</html>
