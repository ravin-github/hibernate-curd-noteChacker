<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Note :Home</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
 <div class="container my-5">
       <%@include file="Navbar.jsp" %>
        <br>
        <div class="card py-4">
        <img alt="logo" class="img-fluid mx-auto" src="image/logo.png" style="max-width: 400px">
        <h1 class="text-primary text-uppercase text-center mt-4">Start Adding your notes!</h1>
        <div class="container text-center"> 
        <form action="addnote.jsp">
        <button class="btn btn-outline-primary" type="submit">Start here</button>
        </form>
         
        </div>
        </div>
          
       </div>
</body>
</html>
