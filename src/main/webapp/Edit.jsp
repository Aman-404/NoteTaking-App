<%@page import="com.entites.Note"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap,Custom CSS And Javascript -->
    <%@include file="All_js_css.jsp" %>
        <title>Edit Your Page!</title>
        
    </head>
    <body>
        <!--NavBar-->
      <div class="container-fluid p-0 m-0">
          <%@include file="NavBar.jsp" %>
         
          <%
          int noteId = Integer.parseInt(request.getParameter("note_id").trim());
              Session s = FactoryProvider.getFactory().openSession();

              Note note = (Note) s.get(Note.class, noteId);
             
          %>
          <div class="container">
              <h1 class="text-center">Update your content.....</h1>
              <!--This is Form-->
                <form action="UpdateServlet" method="post">
                <div class="form-group">
                    <input value="<%=note.getId()%>" name="noteId" type="hidden"/>
                    <label for="title">Note title :</label>
                    <input name="title" required type="text" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter the title" value="<%= note.getTitle()%>"/>
                   
                </div>
                <div class="form-group">
                    <label for="content">Note Content :</label>
                    <textarea name="content" required style="height: 300px;"class="form-control" id="note_content" placeholder="Enter the content"><%= note.getContent()%></textarea>
                </div>
                    <div class="container text-center">
                        
                    <button type="submit" class="btn btn-success"><span class="fa fa-check"></span> Save</button>
         
                    </div>
                   </form>
          </div>
      </div>
    </body>
</html>
