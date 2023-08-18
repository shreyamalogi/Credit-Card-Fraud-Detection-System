<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%@ page import ="javax.crypto.Cipher" %>
<%@ page import ="javax.crypto.spec.SecretKeySpec" %>
<%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search Products</title>
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
.style2 {color: #330000}
.style3 {color:#FF3300}
.style4 {color: #FFFFFF}
.style5 {color: #660000}
.style6 {
	font-size: 18px;
	color: #FF0000;
}-->
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
          <h2 class="style4" style="color:#CC6600">Search Products by Keyword..</h2>
          <div class="clr"></div>          
          <div class="post_content">
            <p>&nbsp;</p>
            <form action="User_SearchProducts.jsp" method="post" id="leavereply">
                    <p>&nbsp;</p>
                    <table align="center" style="margin:0 0 0 30px;">
                      <tr>
                        <td width="174"><div align="center" class="style3">
                            <div align="right" class="style12">
                              <div align="center" class="style82"><b>Enter  Keyword</b></div>
                            </div>
                        </div></td>
                        <td width="152"><div align="left">
                            <input type="text" name="keyword" />
                        </div></td>
                        <td width="155"><input name="submit" type="submit" style="width:50px; height:25px;" value="GO"/></td>
                      </tr>
                      <tr>
                        <td colspan="3"><div class="style2">
                            <div align="center" class="style13 style78"> ( searching content Based on Product Description)</div>
                        </div></td>
                      </tr>
                    </table>
			        <p class="style44">&nbsp;</p>
              

              <p align="left"><a href="UserMain.jsp" class="style11">Back</a></p>
            </form>
            </div>
          <div class="clr"></div>
        </div>
        <div class="article">
          <h2><span class="style4">Products Found.. </span></h2>
          <div class="rf">
            <p>
              <%
  String input="",l_Input="",p_Name="",p_Desc="",p_Desc1="",p_Price="",p_Category="",site=""; 
			int i=0,j=0,k=0,a1=0,rank=0;

try
{	
						String uname = (String)application.getAttribute("uname");
								
								
								input= request.getParameter("keyword");
								if(!input.equals(""))	
								{
								
								l_Input = input.toLowerCase();
		
			SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
							SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
							
							Date now = new Date();
							String strDate = sdfDate.format(now);
							
							String strTime = sdfTime.format(now);
							String dt = strDate + "   " + strTime;
								 
								
								String str = "select * from products";
								Statement st=connection.createStatement();
								ResultSet rs = st.executeQuery(str);
								
								while(rs.next())
								{
								    p_Name = rs.getString(2);
									p_Price = rs.getString(4);
									p_Category = rs.getString(3);
									p_Desc = rs.getString(7);  
								    rank   = rs.getInt(10);
									site   = rs.getString(11); 
								
									
								
									p_Desc1 = p_Desc.toLowerCase(); 
									 
									if (p_Desc1.indexOf(l_Input)>=0)
									{
 			
 		  
			String str4 = "insert into productsearch (user,p_name,category,keyword,dt) values('"+uname+"','"+p_Name+"','"+p_Category+"','"+input+"','"+dt+"')";
							connection.createStatement().executeUpdate(str4);
					
		
			
												
									
						if(a1==0)
						{
									%>
                    </p>
				  <p>&nbsp;</p>
				  <table width="506" border="1" align="center">
              <tr>
                <td colspan="4" align="center" class="style2">Results Found in Products</td>
              </tr>
              <tr>
                <td width="130" align="center" valign="middle"><span class="style3">Product Name  </span></td>
                <td width="192" align="center" valign="middle"><span class="style3">Product Price</span></td>
                <td width="59" align="center" valign="middle"><span class="style3">Rank</span></td>
              </tr>
              <%}a1=1;%>
              <tr>
                <td height="55" align="center" valign="middle"><div align="center" class="style5"><strong><%=p_Name%></strong></div></td>
				<td height="55" align="center" valign="middle"><div align="center" class="style5"><strong><%=p_Price%></strong></div></td>
                
                <td align="center" valign="middle"><div align="center" class="style5"><strong><%=rank%></strong></div></td>
                <td width="97" height="55"><div align="center">
                    <p class="style50"><a href="User_SearchProductsDetails.jsp?p_Name=<%=p_Name%>&amp;keyword=<%=l_Input%>&amp;p_Category=<%=p_Category%>&amp;rank=<%=rank%>&amp;site=<%=site%>" class="style56 style30"><strong>View Details</strong></a></p>
                </div></td>
              </tr>
              <%	}
						  
						}%>
            </table>
				 
					
            
           
             <blockquote>
						      <p class="style72">
              <%

				
			
		
		}	
	
		else
		{
			%>
            </p>
            <h3 align="center" class="style66 style72 style48">&nbsp;</h3>
            <h3 align="center" class="style66 style72 style48 style5 style6">Please Enter Correct Keyword!!</h3>
            <%
		}
	}
	

catch(Exception e)
{
	e.printStackTrace();
}
%>
            </p>
			</blockquote>
			
			
			
			
			
			
			
			
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
