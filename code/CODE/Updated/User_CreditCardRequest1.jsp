<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import ="javax.crypto.Cipher" %>
<%@ page import ="org.bouncycastle.util.encoders.Base64" %>
<%@ page import ="javax.crypto.spec.SecretKeySpec" %>
<%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>CreditCard Request Status</title>
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
.style25 {color: #2C83B0}
.style27{color:#CC6600}
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
          <h2 class="style4" style="color:#CC6600">Credit Card Request Status..</h2>
          <div class="clr"></div>          
          <div class="post_content">
            <p>
		   <%
			       
					String uname=(String)application.getAttribute("uname");
				    ArrayList list = new ArrayList();
					ServletContext context = getServletContext();

					String dirName =context.getRealPath("Gallery/");
					
										
								
					String paramname=null,bank=null,aname=null,ncname=null,addr=null ,crlimit=null,cslimit=null;
					 //int initialamount=0;
					
					
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);
						
						Enumeration params = multi.getParameterNames();
						
						while (params.hasMoreElements()) 
						{
							
							paramname =  (String)params.nextElement();
							
							if(paramname.equalsIgnoreCase("bank"))
							{
								bank=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("aname"))
							{
								aname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("ncname"))
							{
								ncname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("address"))
							{
								addr=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("crlimit"))
							{
								crlimit=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("cslimit"))
							{
								cslimit=multi.getParameter(paramname);
							}
							
							
						
							
						}
									
								String query1="select * from creditcardrequest  where a_name='"+uname+"' "; 
								Statement st1=connection.createStatement();
								ResultSet rs1=st1.executeQuery(query1);
									
								if ( rs1.next() )
							   {
							   
												   %>
  </p>
  
  <p>&nbsp;</p>
  <p class="style5 style6">You Already Have a Credit Card, Make Use of It.. </p>
  <br/>
  <p> <a href="UserMain.jsp" class="style16">Back</a></p>
  <%
							   }
							  
								   else
								   {
								   
									SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
									SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
									Date now = new Date();
												
									String strDate = sdfDate.format(now);
									String strTime = sdfTime.format(now);
									String dt = strDate + "   " + strTime;
								
								
								
								
								
								
								
								String a_no="Requested";
								String crn="Requested";
								String cvv="Requested";
								String expdate="Assign";
								
								int credit_taken=0;
								PreparedStatement ps1=connection.prepareStatement("insert into creditcard(a_no,crn,cvv,b_name,a_name,n_name,address,cr_limit,cs_limit,exp_date,credit_taken) values(?,?,?,?,?,?,?,?,?,?,?)");
									
									ps1.setString(1,a_no);
									ps1.setString(2,crn);	
									ps1.setString(3,cvv); 
									ps1.setString(4,bank);
									ps1.setString(5,aname);
									ps1.setString(6,ncname);
									ps1.setString(7,addr);
									ps1.setString(8,crlimit);
									ps1.setString(9,cslimit);
									ps1.setString(10,expdate);
									ps1.setInt(11,credit_taken);
												
									
								  	ps1.executeUpdate();
									
									
									
			PreparedStatement ps=connection.prepareStatement("insert into creditcardrequest(b_name,a_name,n_name,address,a_no,crn,cvv,cr_limit,cs_limit,exp_date,req_date) values(?,?,?,?,?,?,?,?,?,?,?)");
									
									ps.setString(1,bank);
									ps.setString(2,aname);	
									ps.setString(3,ncname);
									ps.setString(4,addr);
									ps.setString(5,a_no);
									ps.setString(6,crn);
									ps.setString(7,cvv);
									ps.setString(8,crlimit);
									ps.setString(9,cslimit);
									ps.setString(10,expdate);
									ps.setString(11,dt);			
									
								   
									
														
									
									int x=ps.executeUpdate();
									if(x>0)
									{
									%>
  </p>
  <p class="style7">Credit Card Request Sent Successfully.. </p>
  <p>
    <%	
										
						%>
  </p>
  <p align="left"><a href="UserMain.jsp" class="style16">Back</a></p>
  <%
						
								}}}
					catch (Exception e) 
					{
						out.println(e.getMessage());
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
