<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All Financial Frauds</title>
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
.style5 {color: #660000}
.style7 {color: #000000;
		 font-size: 14px}
.style8 {font-weight: bold}
.style9 {color:#FF3300;
		font-size: 14px}
.style10 {color:#2C83B0;
		font-size: 14px}
.style11 {font-size: 12px}
.style12 {color:#006666}
.style14 {color:#663366}
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
          <h2 class="style4" style="color:#CC6600">All Financial Frauds..</h2>
          <div class="clr"></div>          
          <div class="post_content">
            <p>&nbsp;</p>
		  <table width="700" border="1" align="left"  cellpadding="0" cellspacing="0"  ">
                    <tr>
                      <td  width="35"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><b>ID</b></div></td>
					  <td  width="40"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><b>Credit Card No</b></div></td>
                      <td  width="47"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><b>User Name</b></div></td>
					  <td  width="47"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><b>Bank Name</b></div></td>
                      <td  width="60"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><b>Fraud Amount</b></div></td>
                      <td  width="47"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><b>WebSite</b></div></td>
                      <td  width="47"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><b>Date</b></div></td>
					  <td  width="60"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><b>Fraud Type</b></div></td>
                    </tr>
                    <%
					  
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from financial_fraud"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(8);
								s6=rs.getString(9);
								s7=rs.getString(10);
								
								
							
								
							
						
					%>
                    <tr>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style7">
                        <%out.println(i);%>
                      </span></div></td>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style9">
                            <span class="style9">
                            <%out.println(s1);%>
                            </span></div></td>
					  <td height="0" align="center"  valign="middle"><div align="center" class="style10">
                            <span class="style10">
                            <b><%out.println(s2);%></b>
                            </span></div></td>		
                      <td height="0" align="center"  valign="middle"><div align="center" class="style7">
                            
                            <%out.println(s3);%>
                            </span></div></td>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style7">
                            
                            <%out.println(s4);%>
                            </span></div></td>
					  <td height="0" align="center"  valign="middle"><div align="center" class="style7">
                            
                            <%out.println(s5);%>
                            </span></div></td>
					  <td height="0" align="center"  valign="middle"><div align="center" class="style7">
                            
                            <%out.println(s6);%>
                            </span></div></td>
							<%
						if(s7.equalsIgnoreCase("Wrong CVV"))
						{
						
						%>
                      <td valign="middle" height="0" style="color:#000000;"align="center"><div align="center" class="style14">
                          <b><%out.println(s7);%></b>
                      </div></td>
                      <%
						}
						else
						{
						%>
                      <td width="17" height="0" align="center"  valign="middle"><div align="center" class="style12">
                        <b><%out.println(s7);%></b>
                      </div></td>
                      <%
						}
						
						%>
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
				  <p class="style19">&nbsp;</p>
		          <p>&nbsp;</p>
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
