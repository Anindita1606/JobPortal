package master.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import master.dto.CompanyDto;
import master.utilities.ConnectionFactory;

public class CompanyDao {
    private Connection cn = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    private Statement st=null;
    
    // ✅ Exclude compid from insert since it's AUTO_INCREMENT
    private String insert_sql = 
    	    "INSERT INTO company (COMPNAME, PHONE, EMAIL, ADDRESS) VALUES (?, ?, ?, ?)";
    private String delete_sql="delete from company where  COMPANYID=?";
    private String update_sql = 
            "UPDATE company SET PHONE=?, EMAIL=?, ADDRESS=? WHERE COMPANYID=?";
    private String select_sql="select * from company";
    public void insertData(CompanyDto cdto) {
        try {
            ConnectionFactory con = new ConnectionFactory();
            cn = con.getConn();
            ps = cn.prepareStatement(insert_sql);

            ps.setString(1, cdto.getCompnm());  // maps to COMPNAME
            ps.setString(2, cdto.getPhno());    // maps to PHONE
            ps.setString(3, cdto.getEmail());   // maps to EMAIL
            ps.setString(4, cdto.getAddr());    // maps to ADDRESS

            ps.executeUpdate(); // store data
        } catch (SQLException se) {
            se.printStackTrace();
        } finally {
            try { if (ps != null) ps.close(); } catch (Exception e) {}
            try { if (cn != null) cn.close(); } catch (Exception e) {}
        }
    }
	public void deleteData(CompanyDto cdto)
	{
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
		 ps=cn.prepareStatement(delete_sql);
		 ps.setInt(1,cdto.getCompid());
		 ps.executeUpdate();//storing data
		 
		}
		
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	
}
	public void updateData(CompanyDto cdto) {
        try {
            ConnectionFactory con = new ConnectionFactory();
            cn = con.getConn();
            ps = cn.prepareStatement(update_sql);

            ps.setString(1, cdto.getPhno());
            ps.setString(2, cdto.getEmail());
            ps.setString(3, cdto.getAddr());
            ps.setInt(4, cdto.getCompid()); // ✅ WHERE COMPANYID=?

            ps.executeUpdate();
        } catch (SQLException se) {
            se.printStackTrace();
        } finally {
            try { if (ps != null) ps.close(); } catch (Exception e) {}
            try { if (cn != null) cn.close(); } catch (Exception e) {}
        }
    }
	
	public ResultSet getData() 
	{
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			st=cn.createStatement();
			rs=st.executeQuery(select_sql);
		 
		}
		
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return rs;
	}
}