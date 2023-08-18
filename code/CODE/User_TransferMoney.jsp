<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Payment Page</title>
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
.style3 {color: #660000}
.style4 {color: #000000}
.style5 {color: #FF3300;
		font-size: 24px;
		}
.style12 {color: #009999}
.style44 {color:#FF3300;
		font-size: 14px;}
.style45 {color: #2C83B0;
		font-size: 14px;}
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
          <h2 class="style4" style="color:#CC6600">Transfer Money To Credit Card..</h2>
          <div class="clr"></div>          
          <div class="post_content">
            <p>&nbsp;</p>
          <table width="600" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
			  <td  width="170"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style3 style57 style56"><b>ID</b></div></td>
              <td  width="170"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style3 style57 style56"><b>Credit Card Number</b></div></td>
              <td  width="146" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style3 style57 style56"><b>User Name</b></div></td>
              <td  width="152" valign="middle" style="color: #2c83b0;"><div align="center" class="style3 style57 style56"><b>Bank</b></div></td>
              
              <td  width="150" valign="middle" style="color: #2c83b0;"><div align="center" class="style3 style57 style56"><b>Transfer Amount</b></div></td>
              <td  width="130" valign="middle" height="34" style="color: #2c83b0;">&nbsp;</td>
            </tr>
            
            <%
					  String user=(String)application.getAttribute("uname");
					  String bank=(String)application.getAttribute("ubank");
					  String s1,s2,s3,s4,s5,s6,s7,ac_no="",bal="";
						int i=1;
						try 
						{
						
						
						    String sql="select acc_no,amount from userbankaccount where user='"+user+"' and bank='"+bank+"'"; 
						   	Statement stmt=connection.createStatement();
						   	ResultSet rs22=stmt.executeQuery(sql);
					   		if ( rs22.next()==true )
					   		{

								ac_no=rs22.getString(1);
								bal=rs22.getString(2);
								
							}
						
						
						
						
						
						
						
						
						   	String query="select * from creditcard where a_name='"+user+"' and b_name='"+bank+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{

								s1=rs.getString(1);
								s2=rs.getString(5);
								s3=rs.getString(4);
								s4=rs.getString(11);								
							
								
					%>
            <tr>
              <td height="45" align="center"  valign="middle"><div align="center" class="style4">
                <b><%out.println(i);%></b>
              </div></td>
              <td height="45" align="center"  valign="middle"><div align="center" class="style12">
                <b><%out.println(s1);%></b>
              </div></td>
              <td align="center"  valign="middle"><div align="center" class="style44">
                <b><%out.println(s2);%></b>
              </div></td>
              <td height="45" align="center"  valign="middle"><div align="center" class="style45">
                 <b><%out.println(s3);%></b>
              </div></td>
			  <td align="center"  valign="middle"><div align="center" class="style4">
                 <b><%out.println(s4);%></b>
                Rs/-
              </div></td>
              <td height="45" align="center"  valign="middle"><div align="center" class="style99 style100">
			  <form action="User_TransferMoney1.jsp" method="post">
			  <input name="user" type="hidden" value="<%=s2%>" readonly="" />
			  <input name="pamt" type="hidden" value="<%=s4%>" readonly="" />
			  <input name="acno" type="hidden" value="<%=ac_no%>" readonly="" />
			  <input name="bal" type="hidden" value="<%=bal%>" readonly="" />
			  <input name="Submit" type="Submit" value="Transfer Amount" />
			  </form>
			   </div></td>
            </tr>
            <%
						i+=1;}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </table>
          <p align="left"><a href="UserMain.jsp" class="style11"></a></p>
          <table width="443" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="435"><div align="left"><a href="UserMain.jsp" class="style95">Back</a></div></td>
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
