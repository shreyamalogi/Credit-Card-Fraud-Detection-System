<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Payment Process</title>
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
.style4 {color: #660000}
.style5 {color: #000000}
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
          <h2 class="style4" style="color:#CC6600">Transfering Money from Bank Account..</h2>
          <div class="clr"></div>          
          <div class="post_content">
		  
          <%String user=request.getParameter("user");
		  String pamt=request.getParameter("pamt");
		  String acno=request.getParameter("acno");
		  String bal=request.getParameter("bal");
		  String bank=(String)application.getAttribute("ubank");%>
		  
		  
		  
          <form action="User_TransferMoney2.jsp" method="post" >
            <table width="549" border="0" cellspacing="2" cellpadding="2">
              <tr>
                <td width="220" height="57"><span class="style48">
                  <label for="name"><span class="style15 style5">Account Holder Name </span></label>
                </span></td>
                <td width="315"><span class="style48 style15">
                  <input type="text"  name="name" value="<%=user%>" readonly="readonly"/>
                </span></td>
              </tr>
              <tr>
                <td height="50"><span class="style48 style15"><span class="style15">
                  <label for="name"><span class="style5">Bank Name</span> </label>
                </span></span></td>
                <td><span class="style48 style15">
                  <input type="text"  name="bank" value="<%=bank%>" readonly="readonly"/>
                </span></td>
              </tr>
              <tr>
                <td height="45"><span class="style60 style5">
                  <label for="amount">Amount To Be Transfered (required)</label>
                </span> </td>
                <td><span class="style50 style15"><span class="style58">
                  <input type="text"  name="amount" value="<%=pamt%>" readonly="readonly" />
                </span></span></td>
              </tr>
			  <tr>
                <td height="53"><span class="style60">
                  <label for="cardno"><span class="style5">Bank Account No</span></label>
                  <span class="style58 style5">
                  <label for="cardno">(required)</label>
                  </span><span class="style58"><strong><label for="cardno"></label>
                  </strong></span> </span></td>
                <td><span class="style50"><span class="style58">
                  <input type="text"  name="accno" value="<%=acno%>" readonly="readonly" />
                </span></span></td>
              </tr>
			  <tr>
                <td height="45"><span class="style60 style5">
                  <label for="bal">Account Balance</label>
                </span> </td>
                <td><span class="style50 style15"><span class="style58">
                  <input type="text"  name="bal" value="<%=bal%>" readonly="readonly" />
                </span></span></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td><p class="style48">
                  <input name="submit" type="submit" value="   Transfer  " />
                </p></td>
              </tr>
            </table>
          </form>
          <p align="left"><a href="UserMain.jsp" class="style11">Back</a></p>
			
			
			
			
			
			
			
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
           				  <li><a href="UserMain.jsp">Home</a></li>					  
          				  <li><a href="UserLogin.jsp">Logout </a></li>
			
            
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
