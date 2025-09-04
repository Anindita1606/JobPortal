package master.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import master.dao.RegisterDao;


@WebServlet("/LoginServe")
public class LoginServe extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		if (uname.equals("admin") && pass.equals("admin")) {
			response.sendRedirect("AdminMenu.jsp");
		}
		else {
			RegisterDao rdao=new RegisterDao();
			boolean flag=rdao.searchData(uname, pass);
			if(flag==true) {
				response.sendRedirect("ClientMenu.jsp");
			}
			else {
				response.sendRedirect("Error.jsp");
			}
		}
	}

}