package master.dao;


import master.dto.JobSeekerDTO;
import master.utilities.ConnectionFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ClientJobSeekerDAO {
	private Connection cn=null;
	private PreparedStatement ps=null;
	private String insert_sql="insert into jobseeker values(?,?,?,?,?,?,?)";
    public boolean registerJobSeeker(JobSeekerDTO jsdto) {
        boolean result = false;

        try {
        	ConnectionFactory con=new ConnectionFactory();
   		    cn=con.getConn();
   		    ps=cn.prepareStatement(insert_sql);
            ps.setString(1, jsdto.getUsername());
            ps.setString(2, jsdto.getPassword());
            ps.setString(3, jsdto.getName());
            ps.setString(4, jsdto.getPhno());
            ps.setString(5, jsdto.getEmail());
            ps.setString(6, jsdto.getDomain());
            ps.setInt(7, jsdto.getYrexp());

            result = ps.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace(); 
        }

        return result;
    }
}