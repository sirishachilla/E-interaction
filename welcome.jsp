<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>

* {
    box-sizing: border-box;
}

body {
  margin: 0;
}

/* Style the header */
.header {
    /*background-color:#f1f1f1;*/
	/*backgroundimage :url(C:\Program Files\Apache Software Foundation\Tomcat 8.5\webapps\new\2e.jpg) no-repeat top center;*/
    padding: 20px;
    text-align: center;
}

.topnav {
    overflow: hidden;
    background-color: white;
    font-family: Arial, Helvetica, sans-serif;
}

.topnav a {
    float: left;
    font-size: 16px;
    color: black;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

.dropdown {
    float: left;
    overflow: hidden;
}

.dropdown .dropbtn {
    font-size: 16px;    
    border: none;
    outline: none;
    color: black;
    padding: 14px 16px;
    background-color: inherit;
    font-family: inherit;
    margin: 0;
}

.topnav a:hover, .dropdown:hover .dropbtn {
    background-color: lightgreen;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    float: none;
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}
body{
	background-image: url(blue.jpg);
	background-size: cover; 
	
	}
.dropdown-content a:hover {
    background-color: #ddd;
}

.dropdown:hover .dropdown-content {
    display: block;
}
div {
    overflow: auto;
}
</style>
</head>
<body>
<div class="header">
<img src="2e.jpg" height="150" width="1300">
</div>
<div class="topnav">
  <a href="welcome.jsp">Home</a>
  <a href="#news">News</a>
  <div class="dropdown">
    <button class="dropbtn">Area of Interest 
    </button>
    <div class="dropdown-content">
      <a href="cse.jsp">CSE</a>
      <a href="it.jsp">IT</a>
    </div>
  </div>
  <a href="logout.jsp">Logout</a>
</div>
<div class="frame">
</div>
	


</body>
</html>
