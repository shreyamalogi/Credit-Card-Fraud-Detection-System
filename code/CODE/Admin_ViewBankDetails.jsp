<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Bank Details Page</title>
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
.style5 {color:#660000}
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
          <h2 class="style4" style="color:#CC6600"><span class="style3" style=" color:#2c83b0"> <%=(String)application.getAttribute("adbank")%></span> Details..</h2>
          <div class="clr"></div>          
          <div class="post_content">
            <p>&nbsp;</p>
          <table width="519" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
           
            <%
			
						
						
						String bank=(String )application.getAttribute("adbank");
						
						String s1,s2,s3,s4,s5,s6;
						int i=0;
						try 
						{
						   	String query="select * from bank where b_name='"+bank+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								s4=rs.getString(5);
								s5=rs.getString(6);
								s6=rs.getString(7);
								
								
								
					%>
            <tr>
              <td width="211" rowspan="7" ><div class="style7 style26" style="margin:10px 13px 10px 13px;" >
                <p><a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="get_Pic.jsp?picture=<%="bankimage"%>&id=<%=i%>" style="width:180px; height:140px;" />
                </a></p>
              </div></td>
            </tr>
            <tr>
              <td valign="middle" height="65" style="color: #2c83b0;"><div align="left" class="style5" style="margin-left:20px;"><b>Bank Name </b></div></td>
              <td valign="middle" height="65" style="color:#2c83b0;"><div align="left" class="style42 style41 style10" style="margin-left:20px;"><b>
                  <%out.println(s1);%>
              </b></div></td>
            </tr>
			<td  width="150" align="left" valign="middle" height="69" style="color: #2c83b0;"><div align="left" class="style5" style="margin-left:20px;"><b>Bank Address</b></div></td>
              <td  width="150" align="left" valign="middle" height="69" style="color:#000000;"><div align="left" class="style42 style41 style10" style="margin-left:20px;"><b>
                  <%out.println(s2);%>
              </b></div></td>
            </tr>
			<tr>
              <td valign="middle" height="65" style="color: #2c83b0;"><div align="left" class="style5" style="margin-left:20px;"><b>Bank location </b></div></td>
              <td valign="middle" height="65" style="color:#000000;"><div align="left" class="style42 style41 style10" style="margin-left:20px;"><b>
                  <%out.println(s3);%>
              </b></div></td>
            </tr>
			<tr>
              <td valign="middle" height="65" style="color: #2c83b0;"><div align="left" class="style5" style="margin-left:20px;"><b>Bank Pincode </b></div></td>
              <td valign="middle" height="65" style="color:#000000;"><div align="left" class="style42 style41 style10" style="margin-left:20px;"><b>
                  <%out.println(s4);%>
              </b></div></td>
            </tr>
			<tr>
              <td valign="middle" height="65" style="color: #2c83b0;"><div align="left" class="style5" style="margin-left:20px;"><b>Bank Contact No </b></div></td>
              <td valign="middle" height="65" style="color:#000000;"><div align="left" class="style42 style41 style10" style="margin-left:20px;"><b>
                  <%out.println(s5);%>
              </b></div></td>
            </tr>
            <tr>
              <td  width="150" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style5" style="margin-left:20px;"><b>Bank E-Mail Id</b></div></td>
              <td  width="150" valign="middle" height="51" style="color:#FF0066;"><div align="left" class="style42 style41 style10" style="margin-left:20px;"><b>
                  <%out.println(s6);%>
              </b></div></td>
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
          <p align="right">&nbsp;</p>
          <p align="left"><a href="AdminMain.jsp" class="style11">Back</a></p>
		  
		  
		  
		  
		  
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
