
<%@ page import="java.sql.*" %>
<%
	String name=(String)session.getAttribute("user");
	String branch="cse";
	String query=request.getParameter("qry1");
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
	Statement s=con.createStatement();
	String qry="select * from cseq";
	ResultSet rs=s.executeQuery(qry);%>
	<h3><a href="cserplydisp.jsp">click here to view all the queries and answers</a></h3>
	<br><h2>Queries Of CSE</h2>
	<%
	while(rs.next())
	{
	    String uname=rs.getString(2);
		String qry1=rs.getString(4);
		
	%>
		
		<form action="cserply1.jsp" id="reply">
		<b>Username:</b><%out.println(uname);%><br>
		<b>Query is:</b><%out.println(qry1);%><br>
		
	<input type="submit" value="Reply" id="reply"><br>
	</form>
	<%
	}
	con.close();
	}
	catch(Exception e)

	{
		out.println(e);
	}
%>