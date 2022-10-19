<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>
<%@page import="com.entites.Note"%>

<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Notes</title>
<%@ include file="All_js_css.jsp"%>
</head>
<body>
	<!-- NavBar -->
	<div class="container-fluid p-0 m-0">
		<%@include file="NavBar.jsp"%>
	</div>
	<!-- Main  -->
	<div class="container text-center">
		<h1 class="text-uppercase">All Notes:</h1>
	</div>
	<div class="container text-center">
		<div class="card-columns p-2">
			<%
			Session s = FactoryProvider.getFactory().openSession();

			Query q = s.createQuery("from Note");//Note is class name
			List<Note> list = q.list();
			for (Note note : list) {
			%>
			<div class="card ml-4 border-primary mb-3">
				<div class="container text-center">
					<img src="img/notepad.png" style="max-width: 100px;"
						class="card-img-top m-4" alt="...">

				</div>
				<div class="card-body ">
					<h5 class="card-title" style="font-family: 'Roboto', sans-serif;"><%=note.getTitle()%></h5>
					<p class="card-text"
						style="font-family: 'Roboto Condensed', sans-serif;"><%=note.getContent()%></p>
					<div class="container text-center">
						<a href="DeleteServlet?note_id=<%=note.getId()%>"
							class="btn btn-danger"><span class="fa fa-close"></span>
							Delete</a> <a href="Edit.jsp?note_id=<%=note.getId()%>"
							class="btn btn-primary "><span class="fa fa-paint-brush"></span>Update</a>

					</div>
				</div>

			</div>

			<%
			}

			s.close();
			%>

		</div>
	</div>
</body>
</html>