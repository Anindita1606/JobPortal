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
 * Servlet implementation class UpdateCompanyServe
 */
@WebServlet("/UpdateCompanyServe")
public class UpdateCompanyServe extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/html");

	        int compid = Integer.parseInt(request.getParameter("compid")); 
	        String phno = request.getParameter("phno");
	        String email = request.getParameter("email");
	        String addr = request.getParameter("addr");

	        CompanyDto cdto = new CompanyDto();
	        cdto.setCompid(compid);
	        cdto.setPhno(phno);
	        cdto.setEmail(email);
	        cdto.setAddr(addr);

	        CompanyDao cdao = new CompanyDao();
	        cdao.updateData(cdto);

	        // Redirect after update
	        response.sendRedirect("CompanyReport.jsp");

	}

}
