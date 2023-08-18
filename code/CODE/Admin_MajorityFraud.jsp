<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Finding Frauds</title>
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
.style2 {color: #FFFFFF}
.style3 {color: #660000}
.style4 {color: #000000;
		 font-size: 14px}
.style6 {color: #FF9900;
		font-size: 18px}
.style7 {
	color:#003333;
	font-size: 16px;
	font-weight: bold;
}
.style9 {font-size: 16px}
.style10 {font-size: 16px; color: #660000; font-weight: bold; }
.style11 {
	font-size: 22px;
	color: #FF0000;
}
.style13 {
	font-size: 16px;
	color: #CC0033;
	font-weight: bold;
}
.style16 {color:#CC3333;
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
          <h2 class="style4" style="color:#CC6600">Financial Fraud Details For Wrong Credit Card CVV...</h2>
          <div class="clr"></div>          
          <div class="post_content">
            
           
	  	   <%
	String bank=(String)application.getAttribute("adbank");	   
	String fraud_type=request.getParameter("ft");
	String s0="",s1="",s2="",s3="",s4="",s5="",s6="",s7="",vote="",ct="";
	int i=0,j=0,count=0,rank=0,k=0;
	try
	{
			 
					  		String query1="select max(vote) from financial_fraud_wrongcvv where fraud_type='"+fraud_type+"' and bank='"+bank+"'"; 
						   	Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(query1);
					   		if ( rs1.next() )
					   		{
					  	
						   	vote=rs1.getString(1);
			   				
					 
			   
			  
			 
			%>
            
			
	  	    <table width="572" border="1">
				  <tr bgcolor="#FFFFFF">
				    <td colspan="8" ><h2 class="style6" style="color:#006666" ><span class="style11">Fraud Type :</span> 
				      <%out.println(fraud_type);%> 
                     </h2></td>
			      </tr>
				 
                      <td  width="40"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style10">ID</div></td>
					  <td  width="105" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style10">Card Number</div></td>
                      <td  width="105" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style10">User Name</div></td>
					  <td  width="105" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style10">Bank Name</div></td>
                      <td  width="109" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style10">No of Times</div></td>
					  
                    </tr>
				 
				 
				 <%
				 
				 			
							
				 String query="select * from financial_fraud_wrongcvv where vote='"+vote+"' and fraud_type='"+fraud_type+"' and bank='"+bank+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								
							
								
												
						
							
						
						count++;
						
						
					%>	
				 
							   <tr>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style3"><span class="style4">
                        <%out.println(i);%>
                      </span></div></td>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style3">
                            <span class="style16">
                            <b><%out.println(s1);%></b>
                            </span></div></td>
					  <td height="0" align="center"  valign="middle"><div align="center" class="style3">
                            <span class="style4">
                            <%out.println(s2);%>
                            </span></div></td>		
                      <td height="0" align="center"  valign="middle"><div align="center" class="style3">
                            <span class="style4">
                            <%out.println(s3);%>
                            </span></div></td>
					  <td height="0" align="center"  valign="middle"><div align="center" class="style3">
                            <span class="style4">
                            <%out.println(vote);%>
                            </span></div></td>
					  
              </tr>
					
	     <%
					 }
			
			       %></table> 			
				   
				   
		<p>&nbsp;</p> 
				   
				   
				   
				<%
			}
         connection.close();
		 }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
	%>
					
			  
			   
					
        	
		<p align="left">&nbsp;</p>
		<p align="left">&nbsp;</p>
		<p align="left"><a href="Admin_MajorityFinancialFraud.jsp" class="style95">Back</a></p>
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
