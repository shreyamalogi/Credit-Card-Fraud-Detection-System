				
<%@ include file="connect.jsp"%>


<%
String bank=(String)application.getAttribute("adbank");	   
	
	String s0="",s1="",s2="",vote="";
	int i=0,j=0,count=0;
	try
	{

							String query1="select max(vote) from financial_fraud_expiredcard where fraud_type='"+"Expired Card"+"' and bank='"+bank+"'"; 
						   	Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(query1);
					   		if ( rs1.next() )
					   		{
					  	
						   	vote=rs1.getString(1);




 							String query="select user from financial_fraud_expiredcard where vote='"+vote+"' and fraud_type='"+"Expired Card"+"' and bank='"+bank+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								
								s1=rs.getString(1);
								
								
							
								
												
						
							
						
						count++;	 
				 

%><html>
<head>
<title>All Financial Fraud Users for Expired Credit Card..</title>
<script type="text/javascript" src="sources/jscharts.js"></script>
</head>
<body>
<div id="graph">Loading graph...</div>
<script type="text/javascript">
var myData=new Array();
var colors=[];


	
	myData["<%=i%>"]=["<%= s1%>",<%= vote%>];
        
	<%
	}
	i++;}
	%>
	
	var myChart = new JSChart('graph', 'bar');
	myChart.setDataArray(myData);
	myChart.setBarColor('#006666');
	myChart.setBarOpacity(0.8);
	myChart.setBarBorderColor('#D9EDF7');
	myChart.setBarValues(true);
	myChart.setTitleColor('#8C8383');
	myChart.setAxisColor('#777E89');
	myChart.setAxisValuesColor('#000000');
	myChart.draw();
	
</script>

</body>
</html>
<%
}
catch(Exception e)
{
e.printStackTrace();
}
%>

