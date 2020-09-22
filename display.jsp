<%@ page errorPage="error.jsp" %>
<%@ page import="java.sql.*" %>
<%
	String uname=request.getParameter("uname");
	String pwd=request.getParameter("ps");
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:8081/project","root","");
	Statement s=con.createStatement();
	String qry="select * from users";
	ResultSet rs=s.executeQuery(qry);
%>
	<body bgcolor="pink">
	<table align="center" border="5">
	<tr>
		<th colspan="2">STUDENTS DETAILS</th>
	</tr>
	<tr>
		<th>Name</th>
		<th>Password</th>
	</tr>
<%
	while(rs.next())
	{
%>
		<tr>
			<td><%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>
		</tr>
<%
	}
	con.close();
%>
	</table>
	</body>