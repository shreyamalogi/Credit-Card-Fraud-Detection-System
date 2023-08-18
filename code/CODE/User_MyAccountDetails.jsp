<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Account Details</title>
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
.style25 {color: #2C83B0}
.style27{color:#CC6600}
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
          <h2 class="style4" style="color:#CC6600">User <span class="style3" style=" color:#FF0066"><%=(String)application.getAttribute("uname")%></span>'s Bank Account Details..</h2>
          <div class="clr"></div>          
          <div class="post_content">
            <p>&nbsp;</p>
		  <table width="500" border="1" align="center"  cellpadding="0" cellspacing="0"  >
                    
                    <%
						
						String user=(String )application.getAttribute("uname");
						
						String i,s1,s2,s3,s4,s5;
						int s6=0;;
						 
						try 
						{
						   	String query="select * from userbankaccount where user='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getString(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								s4=rs.getString(5);
								s5=rs.getString(6);
								s6=rs.getInt(7);
								
								
					%>
                    <tr>
                      <td  width="176" valign="middle" height="40" style="color: #660000;"><div align="left" class="style5" style="margin-left:20px;"><b>Bank Account Number </b></div></td>
                      <td  width="221" valign="middle" height="40" style="color:#FF0000;"><div align="left" class="style27" style="margin-left:20px;">
                          <b><%out.println(i);%></b>
                      </div></td>
                    </tr>
                    <tr>
                      <td  width="176" valign="middle" height="50" style="color: #660000;"><div align="left" class="style5" style="margin-left:20px;"><b>User Name </b></div></td>
                      <td  width="221" valign="middle" height="50" style="color:#FF0066"><div align="left" class="style18" style="margin-left:20px;">
                          <b><%out.println(s1);%></b>
                      </div></td>
                    </tr>
                    <tr>
                      <td  width="176" align="left" valign="middle" height="50" style="color: #660000;"><div align="left" class="style5" style="margin-left:20px;"><b>Address</b></div></td>
                      <td  width="221" align="left" valign="middle" height="50" style="color: #000000;"><div align="left" class="style10 style33 style42 style43 style44" style="margin-left:20px;">
                          <%out.println(s2);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td  width="176" align="left" valign="middle" height="50" style="color: #660000;"><div align="left" class="style5" style="margin-left:20px;"><b>Email</b></div></td>
                      <td  width="221" align="left" valign="middle" height="50" style="color:#CC6600"><div align="left" class="style10 style33 style42 style43 style44" style="margin-left:20px;">
                          <%out.println(s3);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td align="left" valign="middle" height="51" style="color: #660000;"><div align="left" class="style5" style="margin-left:20px;"><b>Mobile</b></div></td>
                      <td align="left" valign="middle" height="51" style="color: #000000;"><div align="left" class="style10 style33 style42 style43 style44" style="margin-left:20px;">
                          <%out.println(s4);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td align="left" valign="middle" height="51" style="color: #660000;"><div align="left" class="style5" style="margin-left:20px;"><b>Bank</b></div></td>
                      <td align="left" title="Click to View Bank Details" valign="middle" height="51" style="color: #2C83B0;"><div align="left" class="style10 style33 style42 style43 style44"><a href="User_ViewBankDetails.jsp?bname=<%=s5%>" class="style25" style="margin-left:20px;">
                          <b><%out.println(s5);%></b></a>
                      </div></td>
                    </tr>
                    <tr>
                      <td   width="176" align="left" valign="middle" height="51" style="color: #660000;"><div align="left" class="style5" style="margin-left:20px;"><b>Amount</b></div></td>
                      <td  width="221" align="left" valign="middle" height="51" style="color: #000000;"><div align="left">
                        <div align="left" class="style3" style="margin-left:20px;">
                          <b><%out.println(s6);%></b>
                        <span class="style3">Rs/-</span>                      </div></td>
                    </tr>
                    <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
            </table>

<p>&nbsp;</p>
		<div align="left" class="style22"><a href="User_ManageBankAccount.jsp" class="style11">Back</a></div>
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
