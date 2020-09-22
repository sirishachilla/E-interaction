<%@ page errorPage="error.jsp" %>
<%@ page import="java.sql.*" %>
<jsp:include page="cse.jsp"/>
<%
	String name=(String)session.getAttribute("user");
	String branch="cse";
	String query=request.getParameter("qry1");
	int id=0;
	session.setAttribute("q1",query);
	

			
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select id from cseq");
	while(rs.next())
	{
		id=rs.getInt(1);
	}
	id++;
	String qry="insert into cseq(id,name,branch,query) values (?,?,?,?)";
	PreparedStatement pst=con.prepareStatement(qry);
	pst.setInt(1,id);
	pst.setString(2,name);
	pst.setString(3,branch);
	pst.setString(4,query);
	int x=pst.executeUpdate();
	
	pst.close();
	con.close();
%>