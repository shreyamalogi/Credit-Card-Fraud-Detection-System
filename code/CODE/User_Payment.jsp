<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
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
.style3 {color:#FF3300}
.style4 {color: #FFFFFF}
.style7 {color: #006666}
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
          <h2 class="style4" style="color:#CC6600">Enter Credit Card CVV ....</h2>
          <div class="clr"></div>          
          <div class="post_content">
            <form action="User_PaymentStatus.jsp" method="post" id="leavereply">
			<%
			String cardno="";
			try
{	


						
			
			String p_Name=request.getParameter("p_Name");	
			String p_Category=request.getParameter("p_Category");
			String price=request.getParameter("pr");
			String site=request.getParameter("site");
			
			String user=(String)application.getAttribute("uname");
			String bank=(String)application.getAttribute("ubank");
			
			String query="select a_no FROM creditcard where a_name='"+user+"' and b_name='"+bank+"'"; 
           	Statement st=connection.createStatement();
           	ResultSet rs=st.executeQuery(query);
          
	   		if ( rs.next()==true )
	   		{
	   
			 cardno=rs.getString(1);
			
			}
			%>
                    <p>&nbsp;</p>
                    <table align="center" style="margin:0 0 0 30px;">
                      <tr>
                        <td width="174"><div align="center" class="style3">
                            <div align="right" class="style12">
                              <div align="left" class="style82 style10 style7"><b>Credit Card No</b></div>
                            </div>
                        </div></td>
                        <td width="152"><div align="left">
                            <input type="text" name="card" value="<%=cardno%>" readonly="readonly" />
                        </div></td>
						</tr>
						<tr>
						<td width="174"><div align="center" class="style3">
                            <div align="right" class="style12">
                              <div align="left" class="style82 style10 style7"><b>Enter  Credit Card CVV</b></div>
                            </div>
                        </div></td>
						<td width="152"><div align="left">
                            <input type="text" name="cardcvv" />
                        </div></td>
						</tr>
						<tr>
                          <td width="200" align="center">
                            
                            <div align="right">
                              <input type="hidden" value="<%=p_Name%>" name="p_Name"/>
					   		  <input type="hidden" value="<%=p_Category%>" name="p_Category"/>
							  <input type="hidden" value="<%=price%>" name="pr"/>
							  <input type="hidden" value="<%=site%>" name="site"/>
                              <input name="submit" type="submit" style="width:50px; height:25px;" value="Submit"/>
                            </div></td></tr>
                      
                    </table>
					
		              <%

	   

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
		            
			        
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
