<%@ page errorPage="error.jsp" %>
<%@ page import="java.sql.*" %>
<%
	String name=request.getParameter("uname");
	String password=request.getParameter("ps");
			
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
	String qry="insert into users(name,password) values (?,?)";
	PreparedStatement pst=con.prepareStatement(qry);
	pst.setString(1,name);
	pst.setString(2,password);
	int x=pst.executeUpdate();
	pst.close();
	con.close();
	%>
	<jsp:forward page="index.html"/>