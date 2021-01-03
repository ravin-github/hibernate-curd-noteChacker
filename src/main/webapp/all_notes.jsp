
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Notes: Note taker</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container-fluid">
		<%@include file="Navbar.jsp"%>

	</div>
	<br>
	<div class="container my-5 py-3">
		<h1 class="text-uppercase">All Notes:</h1>

		<div class="row">
			<div class="col-12">

				<%
					Session s = FactoryProvider.getFactory().openSession();
					Query q = s.createQuery("from Note");
					List<Note> list = q.list();
					for (Note notes : list) {
				%>



				<div class="card mt-4">
					<img class="card-img-top m-4 mx-auto " style="max-width: 80px;"
						src="image/logo.png" alt="Card image cap">
					<div class="card-body px-5">
						<h5 class="card-title"><%=notes.getTitle()%></h5>
						<p class="card-text"><%=notes.getContent()%></p>
						<div class="d-flex justify-content-end " >
							<a href="DeletePage?note_id=<%=notes.getId() %>" class="btn btn-danger m-2">Delete</a>
							 <a href="edit.jsp?note_id=<%=notes.getId() %>" class="btn btn-primary m-2">modify</a>
								

						</div>


					</div>
				</div>





				<%
					}

					s.close();
				%>


			</div>

		</div>
	</div>

</body>
</html>