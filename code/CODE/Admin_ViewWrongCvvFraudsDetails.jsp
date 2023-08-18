<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All Financial Frauds Wrong CVV Details</title>
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
.style4 { color:#FF6600;
   font-size:16px}
.style7 {color: #000000;
		 font-size: 14px}
.style9 {color:#FF3300;
		font-size: 14px}
.style12 { color:#006666;
		font-size: 14px;
			color:#006666}
.style16 {color:#FF0000;
		font-size:16px;
		}
.style18 {color: #660033; font-size: 18px; color: #006666; }
.style19 {
	color: #660000;
	font-weight: bold;
}
.style20 {
	color: #660000;
	font-size: 14px;
	font-weight: bold;
}
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
          <h2 class="style4" style="color:#CC6600">All Financial Frauds with Wrong Credit Card CVV Details..</h2>
          <div class="clr"></div>          
          <div class="post_content">
            <p>
	  	      <%
	String s11="",s12="",s0="",s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10="";
	int i=0,j=0,count=0,rank=0,k=0;
	try
	{
	
			String site=request.getParameter("site");
			String user=request.getParameter("user");
			int id=Integer.parseInt(request.getParameter("id"));
			   
			  
			 
			%>
            </p>
			
	  	    <table width="572" border="1">
				  <tr bgcolor="#FFFFFF">
				    <td colspan="8" ><h2 class="style18" style="color:#006633" ><span class="style18">Fraud Type :</span> 
				      <%out.println("Wrong CVV");%> 
                     </h2></td>
			      </tr>
				 
                      <td  width="40"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style20">ID</div></td>
					  <td  width="105" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style20">Credit Card</div></td>
                      <td  width="105" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style20">User  Name</div></td>
                      <td  width="109" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style20">Amount</div></td>
					  <td  width="74"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style20">site</div></td>
                      <td  width="74"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style20">Date</div></td>
					  
                    </tr>
				 
				  <%
					  
					  	
						   	String query="select * from financial_fraud where id="+id+" and user='"+user+"' and site='"+site+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(6);
								s4=rs.getString(8);
								s5=rs.getString(9);				
						
							
						
						count++;
			   
					 %>
							   <tr>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style3"><span class="style7">
                        <b><%out.println(i);%></b>
                      </span></div></td>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style3">
                            <span class="style16">
                            <b><%out.println(s1);%></b>
                            </span></div></td>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style3">
                            <span class="style4">
                           <b> <%out.println(s2);%></b>
                            </span></div></td>
					  <td height="0" align="center"  valign="middle"><div align="center" class="style3">
                            <span class="style7">
                            <%out.println(s3);%>
                            </span></div></td>
       				  
 					 <td height="0" align="center"  valign="middle"><div align="center" class="style3">
                            <span class="style12">
                           <b> <%out.println(s4);%></b>
                            </span></div></td>
					<td height="0" align="center"  valign="middle"><div align="center" class="style3">
                            <span class="style7">
                            <%out.println(s5);%>
                            </span></div></td>
              </tr>
					
	     <%
					 }
			
			       %></table> 				   
	 				   
	<p>&nbsp;</p>
				<%
			
         connection.close();
		 }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
	%></table><p>&nbsp;</p>
					
					
        	
		<p align="left"><a href="Admin_ViewWrongCvvFrauds.jsp" class="style95">Back</a></p>
		  
		  
		  
		  
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
