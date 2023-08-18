<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Adding Bank Details Page</title>
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
.style5 {color: #660000}
.style7 {color:#006666}
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
          <h2 class="style4" style="color:#CC6600">Adding Bank Details..</h2>
          <div class="clr"></div>          
          <div class="post_content">
            <p>&nbsp;</p>
          <form action="Admin_AddBank1.jsp" method="post" enctype="multipart/form-data" id="s" ">
			                        <%
									try{
									String bank=(String)application.getAttribute("adbank");
									%>
                    <table width="500" border="0" align="center">
                      <tr>
                        <td width="146" height="40"><div align="justify"><span class="style8 style38 style3"> Bank Name </span> </div></td>
                        <td width="277"><label>
                          <input type="text" id="t1" name="bname" value="<%=bank%>"  />
                        </label></td>
                      </tr>
					  <tr>
                        <td height="60"><div align="justify"><span class="style3 style8 style38">Bank Address</span></div></td>
                        <td><label>
                          <textarea name="address" cols="19" rows="2" id="textarea"></textarea>
                        </label></td>
                      </tr>
					  <tr>
                        <td height="40"><div align="justify"><span class="style3 style8 style38">Bank Location </span></div></td>
                        <td><label>
                          <input type="text" id="t3" name="loc" />
                        </label></td>
                      </tr>
                      <tr>
                        <td height="40"><div align="justify"><span class="style3 style8 style38">Bank Pincode </span></div></td>
                        <td><label>
                          <input type="text" id="t3" name="pin" />
                        </label></td>
                      </tr>
					  <tr>
                        <td height="40"><div align="justify"><span class="style3 style8 style38">Bank Contact No </span></div></td>
                        <td><label>
                          <input type="text" id="t3" name="cno" />
                        </label></td>
                      </tr>
					  <tr>
                        <td height="40"><div align="justify"><span class="style3 style8 style38">Bank Email Id </span></div></td>
                        <td><label>
                          <input type="text" id="t3" name="mail" />
                        </label></td>
                      </tr>                     
                      <tr>
                        <td height="40"><div align="justify"><span class="style3 style8 style38"> Select Building Image </span></div></td>
                        <td><input type="file" id="bankImage" name="image" style="width:100%" /></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="26">&nbsp;</td>
                        <td>
                          
                          <div align="left">
                            <input type="submit" name="Submit" value="Add Bank" />
                          </div></td>
                      </tr>
                    </table>
					<%
					}
					catch(Exception e)
					{
					out.print(e);
					}
					%>
          </form>
			      <p>&nbsp;</p>
		
					<div align="left"><a href="AdminMain.jsp" class="style11"><strong>Back</strong></a></div>
		  
		  
		  
		  
		  
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
            <li><a href="AdminMain.jsp">Home</a></li>
			<li><a href="AdminLogin.jsp">Logout</a></li>
			
            
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
