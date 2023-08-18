<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>UserLoginPage</title>
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
.style5 {color: #FF0000}
.style9 {color: #FF0000; font-weight: bold; }
.style10 {font-weight: bold}
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
          <h2 class="style4" style="color:#CC6600">Welcome To User Login..</h2>
          <p class="style4" style="color:#CC6600"><img src="images/Login.png" width="228" height="145" /></p>
          <div class="clr"></div>          
          <div class="post_content">
            <form id="form1" name="form1" method="post" action="Authentication.jsp?type=<%="user"%>">
						
            <table width="570" border="0" align="left" cellpadding="2" cellspacing="2">
		<tr>
            <td width="185" align="center" valign="middle"><label for="email">
            <div align="center" class="style4 style3">Select Bank (required)</div>
            </label></td>
            <td><p align="left">
                <select name="bank">
                  <option>Select</option>
                  <option>SBI Bank</option>
                  <option>Karnataka Bank</option>
                  <option>Corporation Bank</option>
                  <option>Canara Bank</option>
                  <option>Indian Bank</option>
                </select></p>              </td>
          </tr>
          <tr>
            <td height="46" align="center" valign="middle"><span class="style5 style35"><strong>
              <label for="label">              </label>
              </strong></span>
              <span class="style9"><label for="label">
              </span><div align="center" class="style5 style35"><strong>User Name (required)</strong></div>
              <span class="style9"></label>
              
                <label for="name"></label>
              </span></td>
            <td width="371"><input id="name" name="userid" class="text" /></td>
          </tr>
          <tr>
            <td height="40" align="center" valign="middle"><span class="style5 style35"><strong>
              <label for="email">              </label>
              </strong></span>            <span class="style9">
              <label for="email">
              </span>
              <div align="center" class="style5 style35"><strong>Password (required)</strong></div>
              <span class="style9">
              </label>
              </span></td>
            <td><input type="password" id="pass" name="pass" class="text" /></td>
          </tr>
          
          <tr>
            <td height="47">&nbsp;</td>
            <td><input name="imageField" type="submit"  class="LOGIN" id="imageField" value="Login" />
              <span class="style38 style5 style3">New User?</span><span class="style10"><strong><a href="UserRegister.jsp" class="style30"> Register </a></strong></span></td>
          </tr>
		  <tr>
            <td height="49"></td>
          </tr>
        </table>
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
