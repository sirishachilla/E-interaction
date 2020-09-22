
<%@ page import="java.sql.*" %>
<%
	String name=(String)session.getAttribute("user");
	String branch="it";
	String query=(String)session.getAttribute("q1");	
	String reply=request.getParameter("reply");	
	int id=0;
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
	String qry="insert into itrply(id,name,branch,query,reply) values (?,?,?,?,?)";
	PreparedStatement pst=con.prepareStatement(qry);
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select id from itrply");
	while(rs.next())
	{
		id=rs.getInt(1);
		
		
	}
	id++;
	pst.setInt(1,id);
	pst.setString(2,name);
	pst.setString(3,branch);
	pst.setString(4,query);
	pst.setString(5,reply);
	pst.executeUpdate();
	pst.close();
	con.close();
	}
	catch(Exception e)
	{
		out.println(e);
	}
%>
<jsp:include page="it.jsp"/>