<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>One View...</title>
<%@ include file="All_js_css.jsp"%>
</head>
<body>
	<!-- NavBar -->
	<div class="container-fluid p-0 m-0">
		<%@include file="NavBar.jsp"%>
	</div>

	<!-- Main -->
	<div class="card">
		<div class="card-header">Quote</div>
		<div class="card-body">
			<blockquote class="blockquote mb-0">
				<p>A well-known quote, contained in a blockquote element.</p>
				<footer class="blockquote-footer">
					Someone famous in <cite title="Source Title">Source Title</cite>
				</footer>
			</blockquote>
		</div>
	</div>

</body>
</html>