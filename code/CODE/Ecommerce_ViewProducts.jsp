<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import ="java.text.SimpleDateFormat" %>
<%@ page import ="javax.crypto.Cipher" %>
<%@ page import ="javax.crypto.spec.SecretKeySpec" %>
<%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>EcommerceMainPage</title>
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
          <h2 class="style4" style="color:#CC6600"><span style="color:#2C83B0"><%=(String)application.getAttribute("esite")%></span>'s All Products..</h2>
          <div class="clr"></div>          
          <div class="post_content">
		  <p>&nbsp;</p>
            <table width="680" border="1" align="center">
  <tr>
   <td width="140" height="32"><div align="center"><span class="style3" style="color:#660000"><b>Id</b> </span></div></td>
    <td width="178"><div align="center" style="color:#660000"><b>Product Name</b></div></td>
  <td width="140" height="32"><div align="center"><span class="style3" style="color:#660000"><b>Image</b> </span></div></td>
      <td width="293"><div align="center" style="color:#660000"><span class="style3" style="color:#660000"><b>Manufacture</b> </span></div></td>
	  <td width="178"><div align="center" style="color:#660000"><b>Model</b></div></td>
    <td width="178"><div align="center" style="color:#660000"><b>Description</b></div></td>
	  <td width="205"><div align="center" style="color:#660000"><span class="style3" style="color:#660000"><b>Date</b></span></div></td>
	  <td width="205"><div align="center"><span class="style3" style="color:#660000"><b>Rank</b></span></div></td>
	  	  <td width="205"><div align="center"><span class="style3" style="color:#660000"><b>Reviews</b></span></div></td>
  </tr>

            

<%

	String site= (String)application.getAttribute("esite");
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0,r=0;

      	try 
	{
        
          
      		
      		
      	   String query="select * from products where site='"+site+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(5);
		s4=rs.getString(6);
		s5=rs.getString(7);
		s6=rs.getString(8);
		s7=rs.getString(9);
		s9=rs.getString(3);
		s10=rs.getString(11);
		r=rs.getInt(10);
		
					
		
		%>



  <tr>
      <td><div align="center" style="color:#660000"><%=i%></div></td>
    <td><div align="center" style="color:#FF3300"><b><%=s2%></b></div></td>
    <td><div align="center">
      <input  name="image" type="image" src="get_Pic.jsp?picture=<%="productimage"%>&id=<%=i%>" style="width:170px; height:140px;" /></div>
	 </td>
    <td><div align="center" style="color:#009999"><b><%=s3%></b></div></td>
	<td><div align="center" style="color:#000000"><%=s4%></div></td>
     <td><div align="center" style="color:#000000"><%=s5%></div></td>
		  	   <td><div align="center" style="color:#000000"><%=s7%></div></td>
			   <td><div align="center" style="color:#000000"><%=r%></div></td>
		  	   <td><div align="center"><a href="Ecommerce_Reviews.jsp?p_Name=<%= s2%>&amp;p_Category=<%=s9%>&amp;site=<%=s10%>" class="style5">Reviews</a></div></td>
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
		          <p><a href="EcommerceMain.jsp" class="style16">Back</a></p>
				  
				  
				  
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
            <li><a href="EcommerceMain.jsp">Home</a></li>		
			<li><a href="EcommerceLogin.jsp">Logout</a></li>
			
            
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
