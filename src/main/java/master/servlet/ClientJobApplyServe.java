package master.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import master.dao.ClientApplicationDAO;
import master.dto.ApplicationDTO;

/**
 * Servlet implementation class ClientJobApplyServe
 */
@WebServlet("/ClientJobApplyServe")
public class ClientJobApplyServe extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String username=request.getParameter("username");
		int jobid=Integer.parseInt(request.getParameter("jobid"));
		String applydt=request.getParameter("applydt");
		ApplicationDTO jadto=new ApplicationDTO();
		jadto.setUsername(username);
		jadto.setJobid(jobid);
		jadto.setApplydt(applydt);
		ClientApplicationDAO jadao= new ClientApplicationDAO();
		jadao.applyJob(jadto);
		response.sendRedirect("SearchApplication.jsp");
	}

}
