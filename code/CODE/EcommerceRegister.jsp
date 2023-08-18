<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>EcommerceUserRegisterPage</title>
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
.style3 {color: #333333}
.style4 {color: #CC6600}
.style5 {
	color: #FF0000;
	font-weight: bold;
}
.style11 {font-weight: bold}
.style14 {font-weight: bold}
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
          <h2 class="style4" style="color:#CC6600">Welcome To Ecommerce User Registration..</h2>
          <div class="clr"></div>          
          <div class="post_content">
            <p><img src="images/Register.jpg" width="233" height="129" /></p>
            <form action="EcommerceRegisterStatus.jsp" method="post" >
                    <span class="style4">
			        <label for="gender">Select Ecommerce Website</label>
                    </span>
					 <p class="style4">
                     <select id="s2" name="esite" style="width:150px;" class="text">
                        <option>--Select--</option>
                        <option>Amazon</option>
                        <option>Flipkart</option>
						<option>Snapdeal</option>
						<option>ebay</option>
                      </select>
                    </p>
			  <span class="style3">
			  <label for="name">
					
			  <span class="style5">User Name (required)</span></label>
			  </span>
<p class="style5">
                      <input id="name" name="euserid" class="text" />
              </p>
	          <span class="style5">
	          <label for="password">Password (required)</label>
              </span>
			        <p class="style5">
                      <input type="password" id="password" name="pass" class="text" />
                    </p>
	                <span class="style5">
	                <label for="email">Email Id (required)</label>
                    </span>
			        <p class="style5">
                      <input id="email" name="email" class="text" />
                    </p>
	                <span class="style5">
	                <label for="mobile">Mobile Number (required)</label>
                    </span>
			        <p class="style5">
                      <input id="mobile" name="mobile" class="text" />
                    </p>
			        <span class="style5">
			        <label for="address">Your Address</label>
                    </span>
			        <p class="style5">
                      <textarea id="address" name="address" rows="3" cols="16"></textarea>
                    </p>
			        <span class="style5">
			        <label for="dob">Date of Birth (required)<br />
                    </label>
                    </span>
			        <p class="style5">
                      <input id="dob" name="dob" class="text" />
                    </p>
			        <span class="style5">
			        <label for="gender">Select Gender (required)</label>
                    </span>
			        <p class="style4">
                      <select id="s1" name="gender" style="width:150px;" class="text">
                        <option>--Select--</option>
                        <option>MALE</option>
                        <option>FEMALE</option>
                      </select>
                    </p>
			       <br />
                      <input name="submit" type="submit" value="REGISTER" />
                    </p>
                    <p>&nbsp;</p>
			        <p align="left" class="style14"><a href="EcommerceLogin.jsp" class="style11">Back</a></p>
          </form>
		  
		  
		  
		  
		  
		  
		  
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
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="index.html">Home</a></li>
			
            
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
