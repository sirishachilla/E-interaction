
<%
 session.removeAttribute("user");
 out.println("Logout Successfully");
 %>
 <jsp:include page="index.html"/>