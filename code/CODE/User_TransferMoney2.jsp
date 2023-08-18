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
<title>User Payment Status</title>
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
.style4 {color: #660000}
.style7 {color: #000000; font-size: 14px; }
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
          <h2 class="style4" style="color:#CC6600">Transfering Money from Bank Account..</h2>
          <div class="clr"></div>          
          <div class="post_content">
		  
<% 



try
{

String accno="",name="",amount="";
accno=request.getParameter("accno");
name=request.getParameter("name");      
amount=request.getParameter("amount");

String user=(String)application.getAttribute("uname");
String bank=(String)application.getAttribute("ubank");




SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
Date now = new Date();

String strDate = sdfDate.format(now);
String strTime = sdfTime.format(now);
String date = strDate + "   " + strTime;

if(accno.equals("")||amount.equals(""))
{
	%>
	<style type="text/css">
	<!--
	.style9 {
	color: #FF0000;
	font-weight: bold;
	font-size: 16px;
	}
	.style10 {color: #000000}
	-->
	</style>
	<div align="center"><br/>
	<br/>
	</div>
	<p align="center" class="style9 style7">Please Enter all Values..</p>
	<div align="center"><br/>
	<br/>
	<a href="User_TransferMoney1.jsp">Back</a>
	<%
}
else
{
	
	int currentbalance=0,credit_taken=0,credit_remain=0,rembalance=0;	
	String a_no="",cvv="";
	 
	String sql="SELECT * FROM userbankaccount where (acc_no='"+accno+"' and bank='"+bank+"') and user='"+user+"' ";
	Statement stmt = connection.createStatement();
	ResultSet rs =stmt.executeQuery(sql);
	if(rs.next()==true)
	{
		 currentbalance=Integer.parseInt(rs.getString(7));
		 
	
	String crd="SELECT * FROM creditcard where a_name='"+name+"' and b_name='"+bank+"' ";
	Statement crdst = connection.createStatement();
	ResultSet crdrs =crdst.executeQuery(crd);
	if(crdrs.next()==true)
	{
		 credit_taken=crdrs.getInt(11);
		 a_no=crdrs.getString(1);
		 cvv=crdrs.getString(2);
		 
	}
	
				if(credit_taken<=currentbalance)
				{
					
							int enteredamount1=Integer.parseInt(amount);
		
							rembalance=currentbalance-enteredamount1;
							
							credit_remain=enteredamount1-credit_taken;
						
						
							
						/* Updating the Credit Payment into Credit Card and Account Balance into Bank Account */
							
							String balamt="UPDATE userbankaccount SET amount="+rembalance+" where acc_no='"+accno+"'";
							Statement balst=connection.createStatement();
							balst.executeUpdate(balamt);
							
							String crtkn="UPDATE creditcard SET credit_taken="+credit_remain+" where a_no='"+a_no+"'";
							Statement crtk=connection.createStatement();
							crtk.executeUpdate(crtkn);
							
							/* Updation Query Ends */
							
							
							String sql31="insert into transactions(user,bank,amount,a_no,cvv,date,status,site,tranfor,frombank,fromaccount_no,fromuser,balance_credited,credit_status)values('"+user+"','"+bank+"','"+amount+"','"+a_no+"','"+cvv+"','"+date+"','"+"Success"+"','"+"Bank"+"','"+"Transfer"+"','"+bank+"','"+accno+"','"+user+"','"+amount+"','"+"Payment Done"+"')";
						Statement stmt31 = connection.createStatement();
						stmt31.executeUpdate(sql31);
						
							
							
					
					
							
							%>
			</div>
						<br/><br/> <p align="center" class="style7">Payment Done Successfully.....</p>
						<div align="center"><br/>
						<br/>
						<a href="User_TransferMoney.jsp">Back</a>
						<%
					
			
	
						}
				else
				{
				
				
				%>
				</div>
				<br/><br/> <p align="center" class="style7">Insufficient Amount in Bank Account..Please try Again..</p>
				<div align="center"><br/>
				<br/>
				<a href="UserMain.jsp">Back</a>
				<%
				}
		
	}
	else
	{
	%>
	</div>
	<br/><br/> <p align="center" class="style7">Account Number not Found..Please try Again..</p>
	<div align="center"><br/>
	<br/>
	<a href="User_TransferMoney1.jsp?user=<%=user%>&bank<%=bank%>&pamt=<%=amount%>">Back</a>
	<%
	}
	
	
}



connection.close();
}
catch(Exception e)
{
out.print(e);
}

%>

</div>
          			
			
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
