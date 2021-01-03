<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit </title>
<%@include file="all_js_css.jsp"%>

</head>
<body>
     <div class="container-fluid my-5 py-3" >
		<%@include file="Navbar.jsp"%>

	 
	 
	 <div class="container">
	  <h1>Edit your note </h1><br> 
	 
	 <% int noteId = Integer.parseInt(request.getParameter("note_id").trim()); 
	    Session s =FactoryProvider.getFactory().openSession();
	 
	    Note note=(Note)s.get(Note.class, noteId);
	  
	 
	 %>
	 
     <form action="update" method="post">
       <input value="<%=note.getId()%>" name="id" type="hidden" />
  <div class="mb-3">
    <label for="title" class="form-label">Title:</label>
    <input type="text" name="title" class="form-control" id="title" aria-describedby="emailHelp"  value="<%=note.getTitle() %>">
  </div>
  <div class="mb-3">
    <label for="content" class="form-label">Form content:</label>
   
    <textarea  name="content" type="text"  id="content"   rows="11" cols="5" class="form-control" ><%=note.getContent() %></textarea>
  </div>
    
       <button type="submit" class="btn btn-success  btn-lg">Save Note </button>
       
</form>
   
   
   
        
        
	</div>  
	</div>
	  
</body>
</html>