<%@ page errorPage="error.jsp" %>
<%@ page import="java.sql.*" %>
<%
	String name=request.getParameter("uname");
	String ps=request.getParameter("ps");
	int count=0;	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
	Statement s=con.createStatement();
	String qry="select * from users";
	ResultSet rs=s.executeQuery(qry);
	while(rs.next())
	{
	        String uname=rs.getString(1);
		String pwd=rs.getString(2);
		if(uname.equals(name)&&pwd.equals(ps))
		{
			session.setAttribute("user",name);
			count=count+1;
		}
	}
		if(count==1)
		{
%>
	<jsp:include page="welcome.jsp"/>

<%
	}
	if(count==0)
	{
%>
		<font color="white"><h2 align="center">Invalid username and password,Plse Signup First</h2></font>
		<jsp:include page="index.html"/>
<%
	}		
	con.close();
%>
	