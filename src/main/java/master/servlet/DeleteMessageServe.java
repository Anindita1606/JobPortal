package master.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import master.dao.ContactDAO;
import master.dto.ContactDTO;

@WebServlet("/DeleteMessageServe")
public class DeleteMessageServe extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        response.setContentType("text/html");
        
        try {
            String mid = request.getParameter("id");
            if (mid != null && !mid.isEmpty()) {
                int id = Integer.parseInt(mid);

                ContactDTO cdto = new ContactDTO();
                cdto.setId(id);

                ContactDAO cdao = new ContactDAO();
                cdao.deleteMessage(cdto);
            }

            // Redirect back to message list page (change as per your project)
            response.sendRedirect("AdminMessage.jsp");  

        } catch (NumberFormatException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");  
        }
    }
}