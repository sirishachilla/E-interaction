<jsp:include page="welcome.jsp"/>
<!DOCTYPE html>
<style>
div.top{margin-left:50px}
div.center{margin-left:50px}

</style>
<html>
<body>
<div class="top">
<form action="cseq.jsp" id="form">
<b><h1><center><marquee>Welcome to CSE</marquee></h1></b>
	<textarea rows="7" cols="50" placeholder="submit your query..." name="qry1"></textarea><br>
<input type="submit" id="form">
</div>
</form>
<div class="center">
<jsp:include page="csedisp.jsp"/>
</div>

</body>
</html>
