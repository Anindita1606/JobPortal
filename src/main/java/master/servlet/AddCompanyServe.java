package master.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import master.dao.CompanyDao;
import master.dto.CompanyDto;

@WebServlet("/AddCompanyServe")
public class AddCompanyServe extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");

        // ❌ Remove compid since it is AUTO_INCREMENT in DB
        String compnm = request.getParameter("compnm");
        String phno = request.getParameter("phno");
        String email = request.getParameter("email");
        String addr = request.getParameter("addr");

        // Create DTO without compid
        CompanyDto cdto = new CompanyDto();
        cdto.setCompnm(compnm);
        cdto.setPhno(phno);
        cdto.setEmail(email);
        cdto.setAddr(addr);

        // DAO call
        CompanyDao cdao = new CompanyDao();
        cdao.insertData(cdto);

        // Redirect after insert
        response.sendRedirect("CompanyReport.jsp");
    }
}