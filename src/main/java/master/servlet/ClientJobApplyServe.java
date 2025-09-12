package master.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import master.dao.ClientApplicationDAO;
import master.dto.ApplicationDTO;

@WebServlet("/ClientJobApplyServe")
public class ClientJobApplyServe extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        response.setContentType("text/html");

        // Collect form data
        String username = request.getParameter("username");
        int jobid = Integer.parseInt(request.getParameter("jobid"));
        String jobtype = request.getParameter("jobtype");
        String applydt = request.getParameter("applydt");  // yyyy-MM-dd

        // DTO
        ApplicationDTO adto = new ApplicationDTO();
        adto.setUsername(username);
        adto.setJobid(jobid);
        adto.setJobtype(jobtype);
        adto.setApplydt(applydt);

        // DAO
        ClientApplicationDAO dao = new ClientApplicationDAO();
        boolean status = dao.applyJob(adto);

        // Redirect with success/error message
        if (status) {
            response.sendRedirect("JobApply.jsp?msg=success");
        } else {
            response.sendRedirect("JobApply.jsp?msg=error");
        }
    }
}
