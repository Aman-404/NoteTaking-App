package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entites.Note;
import com.helper.FactoryProvider;

public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public SaveNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try {
		//title, content fetch
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		Note note = new Note(title,content, new Date());
		
//		System.out.println(note.getId()+ " :" + note.getTitle());
		//for saving hibernate
		Session s = FactoryProvider.getFactory().openSession();//
		Transaction tx = s.beginTransaction();
		s.save(note);
		tx.commit();
		s.close();
		response.setContentType("text/html");
		
		 response.sendRedirect("All_notes.jsp");
		
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}

}
}
