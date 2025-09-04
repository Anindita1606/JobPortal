package master.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
//import java.sql.Statement;

import master.dto.RegisterDto;
import master.utilities.ConnectionFactory;

public class RegisterDao {
	private Connection cn=null;
	//private Statement st=null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
	private String insert_sql="insert into register values(?,?,?)";
	public void insertData(RegisterDto rdto)
	{
		try
		{
		 ConnectionFactory con=new ConnectionFactory();
		 cn=con.getConn();
		 ps=cn.prepareStatement(insert_sql);
		 ps.setString(1,rdto.getUname());
		 ps.setString(2,rdto.getPass());
		 ps.setString(3,rdto.getNm());
		 ps.executeUpdate();//storing data
		 
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
	private String search_sql="select *from register where uname=? and pass=?";
	public boolean searchData(String uname, String pass)
	{
		boolean flag=false;
		try
		{
		 
		 ConnectionFactory con=new ConnectionFactory();
		 cn=con.getConn();
		 ps=cn.prepareStatement(search_sql);
		 ps.setString(1,uname);
		 ps.setString(2,pass);
		 rs=ps.executeQuery();//storing data
		 if(rs.next()) {
			 flag=true;
		 }
		 
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return flag;
	}
}
