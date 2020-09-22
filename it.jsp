<jsp:include page="welcome.jsp"/>
<!DOCTYPE html>
<html>
<body>
<div class="top">
<form action="itq.jsp" id="form">
<b><h1><center><marquee>Welcome to IT</marquee></h1></b>
<textarea rows="7" cols="50" placeholder="submit your query..." name="qry1"></textarea><br>
<input type="submit" id="form">
</div>
</form>
<div class="center">
<jsp:include page="itdisp.jsp"/>
</div>

</body>
</html>
