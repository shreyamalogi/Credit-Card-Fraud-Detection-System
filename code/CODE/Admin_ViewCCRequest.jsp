<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Credit Card Request Process</title>
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
.style4 {
	color: #660000;
	font-size: 24px;
}
.style5 {color: #2C83B0}
.style6 {
	color: #660000;
	font-weight: bold;
}
.style7 {color: #660000}
.style9 {color:#000000}

.style12 {color: #009999}
.style44 {color:#FF3300;
		font-size: 14px;}
.style45 {color: #2C83B0;
		font-size: 14px;}
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
          <h2 class="style4" style="color:#CC6600">Credit Card Requests from <span class="style5"><%=(String)application.getAttribute("adbank")%></span>'s Users....</h2>
          <div class="clr"></div>          
          <div class="post_content">
            <p>&nbsp;</p>
          <p>&nbsp;</p>
          <table width="570" border="1" bgcolor="#FFFFFF" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
              <td  width="106"  valign="middle" height="25" style="color: #2c83b0;"><div align="center" class="style56 style57 style6">ID</div></td>
              
			  <td  width="250" valign="middle" height="25" style="color: #2c83b0;"><div align="center" class="style7 style57 style56"><b>Account Holder Name</b></div></td>
			  <td  width="199" valign="middle" height="25" style="color: #2c83b0;"><div align="center" class="style7 style57 style56"><b>Credit Limit</b></div></td>
			  <td  width="199" valign="middle" height="25" style="color: #2c83b0;"><div align="center" class="style7 style57 style56"><b>Cash Limit</b></div></td>
              <td  width="217" valign="middle" style="color: #2c83b0;"><div align="center" class="style7 style57 style56"><b>Requested Date</b></div></td>
              <td  width="171" valign="middle" height="25" style="color: #2c83b0;"><div align="center" class="style7 style57 style56"><b>Credit Card Number </b></div></td>
			  <td  width="171" valign="middle" height="25" style="color: #2c83b0;"><div align="center" class="style57 style56 style7"><b>CRN </b></div></td>
			  <td  width="171" valign="middle" height="25" style="color: #2c83b0;"><div align="center" class="style57 style56 style7"><b>CVV </b></div></td>
			  <td  width="171" valign="middle" height="25" style="color: #2c83b0;"><div align="center" class="style57 style56 style7"><b>Card Expiry Date </b></div></td>
            </tr>
            <%
					  String bank=(String)application.getAttribute("adbank");
					  String s1,s2,s3,s4,s5,s6,s7,s8,s9;
						int i=0,j=1;
						try 
						{
																					
						   	String query="select * from creditcardrequest where b_name='"+bank+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(9);
								s4=rs.getString(10);
								s5=rs.getString(12);
								s6=rs.getString(6);
								s7=rs.getString(7);
								s8=rs.getString(8);
								s9=rs.getString(11);
								
								
								
					%>
            <tr>
              <td height="57" align="center"  valign="middle"><div align="center" class="style9">
                <%out.println(j);%>
              </div></td>
			  <td height="57" align="center"  valign="middle"><div align="center" class="style44">
                <b><%out.println(s2);%></b>
              </div></td>
			  <td height="57" align="center"  valign="middle"><div align="center" class="style9">
                <%out.println(s3);%>
              </div></td>
              <td height="57" align="center"  valign="middle"><div align="center" class="style9">
                <%out.println(s4);%>
              </div></td>
              <td align="center"  valign="middle"><div align="center" class="style9">
                <%out.println(s5);%>
              </div></td>
             
              <%
						if(s6.equalsIgnoreCase("Requested"))
						{
						
						%>
              <td valign="middle" height="57" title="Click to generate Credit Card Number" style="color:#000000;"align="center"><div align="center">
                  <div align="center" class="style20 style37 style46"><a href="GenerateCreditCardNm.jsp?typebank=<%=bank%>&amp;id=<%=i%>&accountname=<%=s2%>" class="style87 style30 style96 style12"><b>Generate CC No</b></a></div>
              </div></td>
              <%
			  			}
						  else
						{
						%> <td width="17" align="center"  valign="middle"><div align="center" class="style12">
							
							<b><%out.println(s6);%></b>
						  </div></td>
            			 <%}%>
				<%
						if(s7.equalsIgnoreCase("Requested"))
						{
						
						%>
              <td valign="middle" height="57" title="Click to generate Customer Relation Number" style="color:#000000;"align="center"><div align="center">
                  <div align="center" class="style20 style37 style46"><a href="GenerateCRN.jsp?typebank=<%=bank%>&amp;id=<%=i%>&accountname=<%=s2%>" class="style87 style30 style96 style12"><b>Generate CRN</b></a></div>
              </div></td>
              <%
			  			}
						  else
						{
						%> <td width="17" align="center"  valign="middle"><div align="center" class="style12">
							
							<b><%out.println(s7);%></b>
						  </div></td>
            			 <%}%>
				<%
						if(s8.equalsIgnoreCase("Requested"))
						{
						
						%>
              <td valign="middle" height="57" title="Click to generate Card CVV" style="color:#000000;"align="center"><div align="center">
                  <div align="center" class="style20 style37 style46"><a href="GenerateCVV.jsp?typebank=<%=bank%>&amp;id=<%=i%>&accountname=<%=s2%>" class="style87 style30 style96 style12"><b>Generate CVV</b></a></div>
              </div></td>
              <%
			  			}
						  else
						{
						%> <td width="17" align="center"  valign="middle"><div align="center" class="style12">
							
							<b><%out.println(s8);%></b>
						  </div></td>
            			 <%}%>
				<%
						if(s9.equalsIgnoreCase("Assign"))
						{
						
						%>
              <td valign="middle" height="57" title="Click to Assign Expiry Date" style="color:#000000;"align="center"><div align="center">
                  <div align="center" class="style20 style37 style46"><a href="AssignExpDate.jsp?typebank=<%=bank%>&amp;id=<%=i%>&accountname=<%=s2%>" class="style87 style30 style96 style12"><b>Assign Expiry Date</b></a></div>
              </div></td>
              <%
			  			}
						  else
						{
						%> <td width="17" align="center"  valign="middle"><div align="center" class="style12">
							
							<b><%out.println(s9);%></b>
						  </div></td>
            			 <%}%>		 
						 
						  
            </tr>
            <%
						j+=1;}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </table>
          <p align="left"><a href="AdminMain.jsp" class="style11"></a></p>
          <table width="476" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="468"><div align="left"><a href="AdminMain.jsp" class="style95">Back</a></div></td>
            </tr>
          </table>
			
			
			
			
			
			
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
