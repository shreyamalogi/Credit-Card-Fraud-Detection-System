<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Authentication Page</title>
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
          <h2 class="style4" style="color:#CC6600">Authentication..!</h2>
          <div class="clr"></div>          
          <div class="post_content">
            <p>&nbsp;</p>
            <%
   	String type=request.getParameter("type");      
    try{
	
		
		
		if(type.equalsIgnoreCase("bankadmin"))
		{
		
			String name = request.getParameter("adminid");
			String pass = request.getParameter("pass");
			String bank = request.getParameter("bank");
			
			application.setAttribute("adname", name);
			application.setAttribute("adbank", bank);
			
			String sql="SELECT * FROM bankadmin where (username='"+name+"' and password='"+pass+"') and bank='"+bank+"' ";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			if(rs.next())
			{
				response.sendRedirect("AdminMain.jsp");
			}
			else
			{
				response.sendRedirect("AdminRe-Login.jsp");
			}
		}
		
		
		
		 else if(type.equalsIgnoreCase("user"))
		{
			String name = request.getParameter("userid");
			String pass = request.getParameter("pass");
			String bank = request.getParameter("bank");
			
			application.setAttribute("ubank", bank);
			application.setAttribute("uname", name);
			
			String sql="SELECT * FROM user where (username='"+name+"' and password='"+pass+"') and bank='"+bank+"' ";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			
			if(rs.next())
			{
				String sql1="SELECT * FROM user where  (username='"+name+"' and bank='"+bank+"') and loginstatus='Authorized' ";
				Statement stmt1 = connection.createStatement();
				ResultSet rs1 =stmt1.executeQuery(sql1);
			
				if(rs1.next())
			    {
				response.sendRedirect("UserMain.jsp");
				}
				else
				{
									%>
									<br/><h3><p align="left" class="style3">&nbsp;</p>
									  <p align="left" class="style4" style="color:#000000">You are not the Authorized By the Admin, Please wait!! </p>
									</h3>
									<br/><br/><a href="UserLogin.jsp">Back</a>
									<%
			    }
			}
			else
			{
				response.sendRedirect("UserRe-Login.jsp");
			}
		}
		else if(type.equalsIgnoreCase("euser"))
		{
			
			String esite=request.getParameter("esite");
			String eusername=request.getParameter("euserid");      
         	String Password=request.getParameter("pass");
			
			application.setAttribute("esite",esite);
			application.setAttribute("euser",eusername);
			
			String sql="SELECT * FROM euser where (username='"+eusername+"' and password='"+Password+"') and site='"+esite+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			
			if(rs.next())
			{
			
					String sql1="SELECT * FROM euser where username='"+eusername+"' and status='Authorized'";
					Statement stmt1 = connection.createStatement();
					ResultSet rs1 =stmt1.executeQuery(sql1);
			
					if(rs1.next())
					{
					response.sendRedirect("EcommerceMain.jsp");
					}
					else
					{
									%>
									<br/><h3><p align="left" class="style3">&nbsp;</p>
									  <p align="left" class="style4" style="color:#000000">You are not the Authorized By the Admin, Please wait!! </p>
									</h3>
									<br/><br/><a href="EcommerceLogin.jsp">Back</a>
									<%
			   		 }
			}		 
			else
			{
				response.sendRedirect("EcommerceRe-Login.jsp");
			}
		}
		else{
		
			}
	}
	catch(Exception e)
	{
		out.print(e);
	}
%>
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
            <li><a href="index.html">Home</a></li>
			
            
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
