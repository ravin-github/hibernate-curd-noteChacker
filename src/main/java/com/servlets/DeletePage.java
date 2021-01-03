package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class DeletePage
 */
public class DeletePage extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public DeletePage() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	 @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
			  int  noteId= Integer.parseInt(request.getParameter("note_id").trim());
			  Session s =FactoryProvider.getFactory().openSession();
			 Transaction tx =s.beginTransaction();
			  Note note=(Note)s.get(Note.class, noteId);
			   s.delete(note);
			   tx.commit();
			   response.sendRedirect("all_notes.jsp");
			    s.close();
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	

}
