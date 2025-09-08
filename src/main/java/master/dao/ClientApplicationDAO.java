package master.dao;

import master.dto.ApplicationDTO;

import master.utilities.ConnectionFactory;

import java.sql.*;
import java.util.*;

public class ClientApplicationDAO {
	private Connection cn=null;
	//private Statement st=null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
	private String insert_sql="insert into applications values(?,?,?,?)";
	private String search_sql="SELECT * FROM applications WHERE username = ?";
    public void applyJob(ApplicationDTO adto) {
        try {
        	ConnectionFactory con=new ConnectionFactory();
   		 cn=con.getConn();
   		 ps=cn.prepareStatement(insert_sql);
            ps.setString(1, adto.getUsername());
            ps.setInt(2, adto.getJobid());
            ps.setString(3, adto.getApplydt());
            ps.setString(4, "Pending"); // default status
            ps.executeUpdate();//storing data
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public boolean searchJob(ApplicationDTO adto) {
    	boolean flag=false;
        try{
        	ConnectionFactory con=new ConnectionFactory();
      		 cn=con.getConn();
      		 ps=cn.prepareStatement(search_sql);
            ps.setString(1, adto.getUsername());
            rs = ps.executeQuery();

            /*while (rs.next()) {
                ClientApplicationDTO app = new ClientApplicationDTO();
                app.setUsername(rs.getString("username"));
                app.setJobid(rs.getInt("jobid"));
                app.setApplydt(rs.getString("applydt"));
                app.setStatus(rs.getString("status"));
                apps.add(app);
            }*/
            if(rs.next()) 
   			  flag=true;
   		 
        }
   		
        catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }
}