<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@ include file="All_js_css.jsp" %>
</head>
<body>
    <!--NavBar-->
        <div class="container-fluid p-0 m-0">
            <%@include file="NavBar.jsp" %>
        </div>
        
        <div class="container">
            <h1 >Please fill your detail........ </h1>
            
                <!--This is Form-->
                <form action="SaveNoteServlet" method="post">
                <div class="form-group">
                    <label for="title">Note title :</label>
                    <input name="title" required type="text" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter the title"/>
                
                </div>
                <div class="form-group">
                    <label for="content">Note Content :</label>
                    <textarea name="content" required style="height: 300px;"class="form-control" id="note_content" placeholder="Enter the content"></textarea>
                </div>
                    <div class="container text-center">
                        
                    <button type="submit" class="btn btn-primary "><span class="fa fa-check-square-o"></span> Add</button>
        
                    </div>
                </form>
            </div>
</body>
</html>