package master.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import master.dao.ClientJobSeekerDAO;
import master.dto.JobSeekerDTO;

/**
 * Servlet implementation class ClientJobSeekerServe
 */
@WebServlet("/ClientJobSeekerServe")
public class ClientJobSeekerServe extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String name=request.getParameter("name");
		String phno=request.getParameter("phno");
		String email=request.getParameter("email");
		String domain=request.getParameter("domain");
		int yrexp=Integer.parseInt(request.getParameter("yrexp"));
		JobSeekerDTO jsdto=new JobSeekerDTO();
		jsdto.setUsername(username);
		jsdto.setPassword(password);
		jsdto.setName(name);
		jsdto.setPhno(phno);
		jsdto.setEmail(email);
		jsdto.setDomain(domain);
		jsdto.setYrexp(yrexp);
		ClientJobSeekerDAO jsdao= new ClientJobSeekerDAO();
		jsdao.registerJobSeeker(jsdto);
		response.sendRedirect("ClientMenu.jsp");
	}

}
