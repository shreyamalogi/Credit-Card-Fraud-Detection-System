<%@ page import="java.sql.*,java.util.Random,java.security.KeyPairGenerator,javax.crypto.Cipher,java.security.Key,java.security.KeyPair     "%>
<%@ include file="connect.jsp" %>
<html><style type="text/css">
<!--
body {
	background-color: #FFFFFF;
}
-->
</style>
<body>
<center>&nbsp;</center>
<br><br><br>
  <%
  		   int id = Integer.parseInt(request.getParameter("id"));
		   String typebank=request.getParameter("typebank");
		   String accountname=request.getParameter("accountname");
		  
try
{
	String num="null";
		if(typebank.equalsIgnoreCase("SBI Bank"))
		{
		
				Random rr=new Random();
				
				 num=64+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10));
				
		}
		
		else if(typebank.equalsIgnoreCase("Karnataka Bank"))
		{
				Random rr=new Random();
				
				 num=48+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10));
				
		}
		
		
		else if(typebank.equalsIgnoreCase("Corporation Bank"))
		{
				Random rr=new Random();
				
				 num=32+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10));
			
		}
		
		
		else if(typebank.equalsIgnoreCase("Canara Bank"))
		{
				Random rr=new Random();
				
				 num=35+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10));
		}
		
		
		else if(typebank.equalsIgnoreCase("Indian Bank"))
		{
				Random rr=new Random();
				
				 num=53+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10));
		}
		
		
		else
		{
				Random rr=new Random();
				
				 num=String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10));
		}
		
		
		
		
		Statement st11 = connection.createStatement();
		String query11 ="update creditcard set a_no='"+num+"'  where b_name='"+typebank+"' and a_name='"+accountname+"' ";
		st11.executeUpdate (query11);
		
		Statement st1 = connection.createStatement();
		String query1 ="update creditcardrequest set a_no='"+num+"'  where id="+id+" ";
		int k=st1.executeUpdate (query1);
		
		
		if(k>0)
		{
				response.sendRedirect("Admin_ViewCCRequest.jsp");
		
		}
		else
		{
		
		%><br/><br/>Account Number Not Generated..Please Try Agian..</p><br/><br/>
		<a href="Admin_ViewCCRequest.jsp">Back</a><%
		
		}
		
		connection.close();
}

catch(Exception e)
{
		out.println(e);

}


	

		  
		  
%>



</body></html>