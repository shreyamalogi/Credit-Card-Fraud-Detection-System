<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Searched Product Details</title>
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
.style2 {color:#000000}
.style3 {color:#FF3300}
.style4 {color: #FFFFFF}
.style5 {color: #660000}
.style7 {color:#006666}
.style8 {color: #FF6600}
.style9 {font-size: 16px}
.style10 {font-size: 16px; color: #660000; }
.style11 {color:#009966}
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
          <h2 class="style4" style="color:#CC6600">Searched Product<span class="style11"> <%=request.getParameter("p_Name")%></span>'s Details..</h2>
          <div class="clr"></div>          
          <div class="post_content">
		  <p>&nbsp;</p>
            <%
					
					try
					{
					String p_Name=request.getParameter("p_Name");
					String p_Category=request.getParameter("p_Category");
					String site=request.getParameter("site");
					
					int rank=Integer.parseInt(request.getParameter("rank"));
					
					int rankup=rank+1;
					
					String uname = (String)application.getAttribute("uname");
					
					String rankUp="update products set rank="+rankup+" where p_name='"+p_Name+"' ";
					connection.createStatement().executeUpdate(rankUp);
			
					String str1="select * from products where p_name='"+p_Name+"' and category='"+p_Category+"' and site='"+site+"' "; 
					Statement st1=connection.createStatement();
					ResultSet rs1=st1.executeQuery(str1);
					while ( rs1.next() )
					{
						int i=rs1.getInt(1);
				
						String model = rs1.getString(6);
						String description = rs1.getString(7);
						String price = rs1.getString(4);
						String date = rs1.getString(9);	
						
							
							/*SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
							SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
							
							Date now = new Date();
							String strDate = sdfDate.format(now);
							
							String strTime = sdfTime.format(now);
							String dt = strDate + "   " + strTime;
									   
							String str2 = "insert into postsearch (user,p_name,categorie,keyword,dt) values('"+uname+"','"+p_Name+"','"+p_Categorie+"','"+keyword+"','"+dt+"')";
							connection.createStatement().executeUpdate(str2);
					*/
						
			%>
			      <table width="598" border="1" align="left" cellpadding="0" cellspacing="0" >
                    <tr >
                      <td width="186" rowspan="6" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" >
                          <div align="center"><a class="#" id="img1" href="#" >
                            <input  name="image" type="image" src="get_Pic.jsp?picture=<%="productimage"%>&id=<%=i%>" style="width:160px; height:250px;" />
                          </a> </div>
                      </div></td>
                      <td height="39" ><div align="center" class="style3 style73"><span class="style10">Category </span></div></td>
                      <td width="307"><div align="center" class="style3"><b><%= p_Category%></b></div></td>
                    </tr>
                    <tr >
                      <td height="37" ><div align="center" class="style10"> Price </div></td>
                      <td><div align="center" class="style2"><b><%= price%> Rs/-</b></div></td>
                    </tr>
                    <tr >
                      <td height="47" ><div align="center" class="style10">Model</div></td>
                     <td><div align="center" class="style7"><b><%= model%></b></div></td>
                    </tr>
                    <tr >
                      <td height="47" ><div align="center" class="style10"> Description </div></td>
                      <td><div align="center" class="style3"></div>
                      
                        
                              <div align="center"><span class="style3">
                              <textarea name="textarea" cols="40" rows="8"><%= description%></textarea>
                      </span></div></td>
                    </tr>
                    <tr >
                      <td height="46" ><div align="center" class="style10">Date</div></td>
                      <td><div align="center" class="style2"><%= date%></div></td>
                    </tr>
                    <tr >
                      <td width="97" height="56" ></td>
                      <td><br/>
					  <form method="post" action="User_Payment.jsp"><label>
                 
                    <div align="center">
					    <input type="hidden" value="<%=p_Name%>" name="p_Name"/>
					    <input type="hidden" value="<%=p_Category%>" name="p_Category"/>
						<input type="hidden" value="<%=price%>" name="pr"/>
						<input type="hidden" value="<%=site%>" name="site"/>
				       <input type="submit" name="Submit3" value="Purchase" />
                    </div>
                 </label></form><br/></td>
                    </tr>
					 <%
						int a=0;
						String str2="select * from reviews where p_name='"+p_Name+"'  and category='"+p_Category+"'"; 
						Statement st2=connection.createStatement();
						ResultSet rs2=st2.executeQuery(str2);
						while ( rs2.next() )
						{
							String c_user = rs2.getString(4);
							String c_comment = rs2.getString(5);
							String c_date = rs2.getString(6);
							
							
								if(a==0){
					%>
					 <tr>
                       <td valign="middle" height="24" style="color: #2c83b0;"><div align="left " class="style15 style11 style71 style77" style="margin-left:20px;">
                           <div align="center" class="style7 style8">Reviewed By</div>
                       </div></td>
					   <td columnspan="2" valign="middle" height="24" style="color: #2c83b0;"><div align="left " class="style15 style11 style71 style77" style="margin-left:20px;">
                           <div align="center" class="style7 style8">Date</div>
					     </div></td>
					   <td height="24" align="center" valign="middle" style="color: #2c83b0;" columnspan="2"><div align="left " class="style15 style11 style71 style77" style="margin-left:20px;">
                           <div align="center" class="style7 style8">Review Details</div>
					     </div></td>
				    </tr>
					   <%a=1;}%>
					   <tr>
                         <td height="49"><div align="center" class="style3" style="color:#FF0099"><b><%= c_user%></b></div></td>
					     <td><div align="center" class="style3" style="color:#FF0099"><b><%= c_date%></b></div></td>
					     <td><div align="center" class="style3" style="color:#FF0099"><b><%= c_comment%></b></div></td>
			        </tr>
					<%}%>
					 <tr>
                       <td height="57"><div align="left " class="style15 style11" style="margin-left:20px;">
                           <div align="center" class="style87 style10 style5">Post Your Review </div>
                       </div></td>
					   <td colspan="2"><form id="form1" method="post" action="User_SubmitReview.jsp">
                           <input type="text" name="review" size="40" height="30"/>
                           <input type="hidden" name="p_Name" value="<%=p_Name%>"/>
                           <input type="hidden" name="p_Category" value="<%=p_Category%>"/>
						   <input type="hidden"  name="site" value="<%=site%>"/>
                           <input type="submit" name="Submit" value="Post" />
                       </form></td>
				    </tr>
	            </table>
			   
			      <p>&nbsp;</p>
			      <p>
			       <%
		}
		connection.close();
	}
	catch(Exception e)
	{
		out.println(e.getMessage());
	}
%>
	             </p>
				   <div align="left">
				     <p><a href="User_SearchProducts.jsp" class="style11"></a></p>
				     <p>&nbsp;</p>
				     <p>&nbsp;</p>
				     <p>&nbsp;</p>
				     <p>&nbsp;</p>
				     <p>&nbsp;</p>
				     <p>&nbsp;</p>
				     <p>&nbsp;</p>
				     <p>&nbsp;</p>
				     <p>&nbsp;</p>
				     <p>&nbsp;</p>
				     <p>&nbsp;</p>
				     <p>&nbsp;</p>
				     <p>&nbsp;</p>
				     <p>&nbsp;</p>
				     <p>&nbsp;</p>
				     <p>&nbsp;</p>
				     <p>&nbsp;</p>
				     <p align="center"><a href="User_SearchProducts.jsp" class="style11"><strong>Back</strong></a></p>
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
