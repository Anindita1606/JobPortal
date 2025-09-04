package master.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import master.dao.CompanyDao;
import master.dto.CompanyDto;

/**
 * Servlet implementation class DeleteCompanyServe
 */
@WebServlet("/DeleteCompanyServe")
public class DeleteCompanyServe extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		int compid=Integer.parseInt(request.getParameter("compid"));
		CompanyDto cdto=new CompanyDto();
		cdto.setCompid(compid);
		CompanyDao cdao=new CompanyDao();
		cdao.deleteData(cdto);
		response.sendRedirect("CompanyReport.jsp");

	}

}
