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
.style3 {color:#FF3300}
.style4 {color: #FFFFFF}
.style7 {color: #006666}
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
          <h2 class="style4" style="color:#CC6600">Product Purchase Status ....</h2>
          <div class="clr"></div>          
          <div class="post_content">
            <% 

							SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
							SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
							Date now = new Date();

							String strDate = sdfDate.format(now);
							String strTime = sdfTime.format(now);
							String date = strDate + "   " + strTime;

try
{
			String expdate="";

			String p_Name=request.getParameter("p_Name");	
			
			String p_Category=request.getParameter("p_Category");
			
			String price=request.getParameter("pr");
			
			String site=request.getParameter("site");
			
			String card=request.getParameter("card");
			
			String cardcvv=request.getParameter("cardcvv");
			
			String user=(String)application.getAttribute("uname");
			
			String bank=(String)application.getAttribute("ubank");

	int currentbalance1=0,credit_to_be_taken=0;	
	int creditlimit=0,crlimit=0,credit_taken=0,vt=0,vte=0; 
	String a_no="",crn="";
	
String cardsql="SELECT * FROM creditcard where a_name='"+user+"' and a_no='"+card+"' and cvv='"+cardcvv+"' ";
Statement cardst = connection.createStatement();
ResultSet cardrs =cardst.executeQuery(cardsql);
if(cardrs.next()==true)
{

		 credit_taken=cardrs.getInt(11);
		 crlimit= Integer.parseInt(cardrs.getString(8));
		expdate= cardrs.getString(10);
								
								
								
	Date exp_date = sdfDate.parse(expdate);
	Date todays_date = sdfDate.parse(strDate);
								
								
								
	if( exp_date.compareTo(todays_date) >0 )
	{
	
				if(credit_taken<crlimit)
				{
	
							String query41="select cr_limit from creditcard where a_no='"+card+"'";
							Statement st41=connection.createStatement();
							ResultSet rs41=st41.executeQuery(query41);
							if ( rs41.next() )
							{
							creditlimit=rs41.getInt(1);
		
							credit_to_be_taken=crlimit-credit_taken;
							}
						int product_price=Integer.parseInt(price);
						if(product_price<=creditlimit && product_price<=credit_to_be_taken)
						{
	
			
							String cr_taken=String.valueOf(credit_taken+product_price);
							
							
						/* Updating the borrowed Credit into Credit Card */
														
							String crtkn="UPDATE creditcard SET credit_taken="+cr_taken+" where a_no='"+card+"'";
							Statement crtk=connection.createStatement();
							crtk.executeUpdate(crtkn);
							
							/* Updation Query Ends */
							
						/* Updating the Transaction Details into Transactions Tabel */	
						
							String status="Success";
							String purpose="Purchase";
							String frombank="null";
							String fromaccount_no="null";
							String fromuser="null";
							String balance_credited="null";
							String credit_status="null";
							
							String sql31="insert into transactions(user,bank,amount,a_no,cvv,date,status,site,tranfor,frombank,fromaccount_no,fromuser,balance_credited,credit_status)values('"+user+"','"+bank+"','"+price+"','"+card+"','"+cardcvv+"','"+date+"','"+status+"','"+site+"','"+purpose+"','"+frombank+"','"+fromaccount_no+"','"+fromuser+"','"+balance_credited+"','"+credit_status+"')";
						Statement stmt31 = connection.createStatement();
						stmt31.executeUpdate(sql31);
						
						
						/* Updation Query Ends */




						PreparedStatement ps1=connection.prepareStatement("insert into purchase(user,p_name,p_category,date,price,site) values(?,?,?,?,?,?)");
														
														ps1.setString(1,user);
														ps1.setString(2,p_Name);
														ps1.setString(3,p_Category);
														ps1.setString(4,date);
														ps1.setString(5,price);
														ps1.setString(6,site);
														
														int k1=ps1.executeUpdate();
						
			
									if(k1>0)
									{	
									
					
									%>
		  </div>
									<br/><br/> <p align="center" class="style7">Transaction Done Successfully..</p>
									<div align="center"><br/>
									<br/>
									<a href="User_SearchProducts.jsp">Back</a>
									<%
									}
									else
									{
									%>
									</div>
									<br/><br/><p align="center" class="style7">Transaction Failed !!..Please Try Again..</p>
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
						<br/><br/> <p align="center" class="style7">Product Price is more than the Credit Limit..Please try Again..</p>
						<div align="center"><br/>
						<br/>
						<a href="UserMain.jsp">Back</a>
						<%
						}
		
				}
				else{
				%>
				</div>
				<br/><br/><p align="center" class="style7">Credit Taken Exceeded the Maximum Credit Limit. Please Pay back the amount of Credit taken within the valid time period</p>
				<div align="center"><br/>
				<br/>
				<a href="UserMain.jsp">Back</a>
				<%
				}
	}
	else
	{
					vt+=1;
					String cvv="select * from financial_fraud_expiredcard where user='"+user+"' and bank='"+bank+"' and site='"+site+"'"; 
					Statement cvvst=connection.createStatement();
					ResultSet cvvrs=cvvst.executeQuery(cvv);
									
					if( cvvrs.next()==true )
					{
					int vote=cvvrs.getInt(11);
					int newvote=vote+1;
					String qq="Update financial_fraud_expiredcard set vote='"+newvote+"' where user='"+user+"' and fraud_type='"+"Expired Card"+"'"; 
					Statement sts=connection.createStatement();
					sts.executeUpdate(qq);
					}	
					else
					{
					PreparedStatement cvvps = connection.prepareStatement("insert into financial_fraud_expiredcard(card_no,cvv,user,bank,purchase_amount,activity,site,date,fraud_type,vote) values(?,?,?,?,?,?,?,?,?,?)");				
					
					cvvps.setString(1, card);
					cvvps.setString(2, cardcvv);
					cvvps.setString(3, user);
					cvvps.setString(4, bank);
					cvvps.setString(5, price);
					cvvps.setString(6, "Abnormal");
					cvvps.setString(7, site);
					cvvps.setString(8, date);
					cvvps.setString(9, "Expired Card");
					cvvps.setInt(10, vt);
										
					cvvps.executeUpdate();
												
										
					}
	
	
	
	String abuser="insert into financial_fraud(card_no,cvv,user,bank,purchase_amount,activity,site,date,fraud_type)values('"+card+"','"+cardcvv+"','"+user+"','"+bank+"','"+price+"','"+"Abnormal"+"','"+site+"','"+date+"','"+"Expired Card"+"')";
					Statement abstmt = connection.createStatement();
					abstmt.executeUpdate(abuser);
					
					
	%>
	</div>
	<br/><br/> <p align="center" class="style7">Credit Card Expired..Please Check Your Card Validity..</p>
	<div align="center"><br/>
	<br/>
	<a href="UserMain.jsp">Back</a>
	<%
	}
}	
else
{
					vte+=1;
					String cvv="select * from financial_fraud_wrongcvv where user='"+user+"' and bank='"+bank+"' and site='"+site+"'"; 
					Statement cvvst=connection.createStatement();
					ResultSet cvvrs=cvvst.executeQuery(cvv);
									
					if( cvvrs.next()==true )
					{
					int vote=cvvrs.getInt(11);
					int newvote=vote+1;
					String qq="Update financial_fraud_wrongcvv set vote='"+newvote+"' where user='"+user+"' and fraud_type='"+"Wrong CVV"+"'"; 
					Statement sts=connection.createStatement();
					sts.executeUpdate(qq);
					}	
					else
					{
					PreparedStatement cvvps = connection.prepareStatement("insert into financial_fraud_wrongcvv(card_no,cvv,user,bank,purchase_amount,activity,site,date,fraud_type,vote) values(?,?,?,?,?,?,?,?,?,?)");				
					
					cvvps.setString(1, card);
					cvvps.setString(2, cardcvv);
					cvvps.setString(3, user);
					cvvps.setString(4, bank);
					cvvps.setString(5, price);
					cvvps.setString(6, "Abnormal");
					cvvps.setString(7, site);
					cvvps.setString(8, date);
					cvvps.setString(9, "Wrong CVV");
					cvvps.setInt(10, vte);
										
					cvvps.executeUpdate();
												
										
					}


String abuser="insert into financial_fraud(card_no,cvv,user,bank,purchase_amount,activity,site,date,fraud_type)values('"+card+"','"+cardcvv+"','"+user+"','"+bank+"','"+price+"','"+"Abnormal"+"','"+site+"','"+date+"','"+"Wrong CVV"+"')";
					Statement abstmt = connection.createStatement();
					abstmt.executeUpdate(abuser);
					
%>
</div>
<br/><br/> <p align="center" class="style7">You Have Entered Wrong CVV Number..Please Try Again..</p>
<div align="center"><br/>
<br/>
<a href="UserMain.jsp">Back</a>
<%
}	
	

connection.close();
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
