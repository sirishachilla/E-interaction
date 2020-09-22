<jsp:include page="welcome.jsp"/>
<%@ page import="java.sql.*" %>
<%
	String name=(String)session.getAttribute("user");
	String branch="cse";
	String query=request.getParameter("qry1");
	String reply=request.getParameter("reply");
	session.setAttribute("rly",reply);
	
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
	Statement s=con.createStatement();
	String qry="select * from cserply";
	ResultSet rs=s.executeQuery(qry);%><body>
	<form action="rating.jsp" id="reply">
		<select name="reply">
	<br><h2>Queries and AnswersOf CSE</h2></body>
	<%while(rs.next()){
		int id=rs.getInt(1);
			if(rs.getInt(6)==0)
		out.print("<option>"+id+"</option>");
	}%></select><br/>

1<input type="radio" name="rating" value="1">
2<input type="radio" name="rating" value="2">
3<input type="radio" name="rating" value="3">
4<input type="radio" name="rating" value="4">
5<input type="radio" name="rating" value="5">
<input type="submit"/><br/>
	<%
	rs=s.executeQuery(qry);
	while(rs.next()) 
	{
	    String uname=rs.getString(2);
		String qry1=rs.getString(4);
		String rply=rs.getString(5);
		if(rply=="")
		{
	%>
		
		<b>Username:</b><%out.println(uname);%><br>
		<b>Query is:</b><%out.println(qry1);%><br>
	<%	
		}
		else
		{
	%>
		<b>Username:</b><%out.println(uname);%><br>
		<b>Query is:</b><%out.println(qry1);%><br>
		<b>Answer is:</b><%out.println(rply);%><br><hr />
	<%	
		}
	%>
	
	<a href=cselinks.jsp>Click here to go back</a><br>
	<%
	}
	con.close();
	}
	catch(Exception e)

	{
		out.println(e);
	}
%>
</form>