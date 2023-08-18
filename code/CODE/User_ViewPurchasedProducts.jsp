<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import ="java.text.SimpleDateFormat" %>
<%@ page import ="javax.crypto.Cipher" %>
<%@ page import ="org.bouncycastle.util.encoders.Base64" %>
<%@ page import ="javax.crypto.spec.SecretKeySpec" %>
<%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Purchased Products</title>
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
.style5 {font-weight: bold}
.style8 {color: #000000;}
.style9 {
	color: #CC0033;
	font-weight: bold;
}
.style10 {color:#FF6600;
	font-weight: bold;}
.style13 {
	color: #660000;
	font-weight: bold;
}
.style22 {color:#003300;
		font-weight:bold}
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
          <h2 class="style4" style="color:#CC6600">User <span class="style3" style=" color:#FF0066"><%=(String)application.getAttribute("uname")%></span>'s Purchased Products..</h2>
          <div class="clr"></div>          
          <div class="post_content">
            <p>&nbsp;</p>
          <table width="730" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
                    <tr>
                      <td  width="60"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style13"><b>Si No. </b></div></td>					  
					  <td  width="133" valign="middle" style="color: #2c83b0;"><div align="center" class="style13"><b>Purchased Site</b></div></td>
                      <td  width="133" valign="middle" style="color: #2c83b0;"><div align="center" class="style13"><b>Product Name</b></div></td>
                      <td  width="133" valign="middle" style="color: #2c83b0;"><div align="center" class="style13"><b>Category</b></div></td>
                      <td  width="106" valign="middle" style="color: #2c83b0;"><div align="center" class="style13"><b>Price</b></div></td>
					  
                      <td  width="108" valign="middle" style="color: #2c83b0;"><div align="center" class="style13"><b>Date</b></div></td>
                    </tr>
                    
                    <%
					  
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,user1="";
						int i=0,j=1,total1=0;
						try 
						{
					
							String user=(String )application.getAttribute("uname");
						   	String query="select *  from purchase where user='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
						
									j=rs.getInt(1);
									s1=rs.getString(2);
									s2=rs.getString(7);
									s3=rs.getString(3);
									s4=rs.getString(4);
									s5=rs.getString(6);
									s6=rs.getString(5);
									
									
										
												%>
                    <tr>
                      <td height="172" align="center"  valign="middle"><div align="center" class="style8"><b>
                          <%out.println(j);%>
                      </b></div></td>                      
					  <td align="center"  valign="middle"><div align="center" class="style10">
                       <b><%out.println(s2);%>
                      </b></div></td>
                      <td align="center"  valign="middle"><div align="center" class="style8">
                        <b><%out.println(s3);%></b>
                      </div></td>
                      <td align="center"  valign="middle"><div align="center" class="style8">
                        <b><%out.println(s4);%></b>
                      </div></td>
                      <td align="center"  valign="middle"><div align="center" class="style8">
                        <b><%out.println(s5);%><b> Rs/-
                      </div></td>
                      <td align="center"  valign="middle"><div align="center" class="style8">
                          <%out.println(s6);%>
                      </div></td>
                    </tr>
                    <%
												j+=1;	
						 int total=Integer.parseInt(s5);
						   total1=total1+total;
						 
						
							}
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
            </table>
			      
			      <div align="left" class="style22">
			        <p>&nbsp;</p>
			        <p>
			          <%out.println("Total Bill:"+total1);%>
		            </p>
			        <p align="left">&nbsp;</p>
			        <p align="left"><strong><a href="UserMain.jsp">Back</a></strong></p>
					</div>
		  
		  
		  
		  
		  
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
