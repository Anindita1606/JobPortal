package master.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import master.dao.ContactDAO;
import master.dto.ContactDTO;

@WebServlet("/ContactServe")
public class ContactServe extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        response.setContentType("text/html");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        ContactDTO cdto = new ContactDTO();
        cdto.setName(name);
        cdto.setEmail(email);
        cdto.setMessage(message);

        ContactDAO cdao = new ContactDAO();
        boolean flag = cdao.saveMessage(cdto);

        if(flag) {
            response.sendRedirect("Contact.jsp?status=success");
        } else {
            response.sendRedirect("Contact.jsp?status=error");
        }
    }
}