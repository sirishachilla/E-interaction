<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
	
        String r=request.getParameter("rating");
        out.println("Your rating is " +r );
		String reply=request.getParameter("reply");
		out.println(reply);
		String qry="update itrply SET rating=? where id=?";
		PreparedStatement pst=con.prepareStatement(qry);
		pst.setString(1,r);
		pst.setString(2,reply);
		pst.executeUpdate();
		pst.close();
%>