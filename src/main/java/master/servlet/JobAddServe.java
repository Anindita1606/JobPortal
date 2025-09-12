package master.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import master.dao.AdminJobDAO;

import master.dto.JobDTO;

/**
 * Servlet implementation class JobAddServe
 */
@WebServlet("/JobAddServe")
public class JobAddServe extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 response.setContentType("text/html");

	        String jobname = request.getParameter("jobname"); // ✅ fixed
	        String jobtype = request.getParameter("jobtype");
	        String domain = request.getParameter("domain");
	        String validupto = request.getParameter("validupto");
	        int yrsexp = Integer.parseInt(request.getParameter("yrsexp"));
	        int companyid = Integer.parseInt(request.getParameter("companyid"));

	        JobDTO jdto = new JobDTO();
	        jdto.setJobname(jobname);
	        jdto.setJobtype(jobtype);
	        jdto.setDomain(domain);
	        jdto.setValidupto(validupto);
	        jdto.setYrsexp(yrsexp);
	        jdto.setCompanyid(companyid);

	        AdminJobDAO rdao = new AdminJobDAO();
	        rdao.insertData(jdto);

	        response.sendRedirect("JobList.jsp"); 
	}

}