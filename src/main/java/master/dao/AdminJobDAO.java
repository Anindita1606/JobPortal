package master.dao;

import master.dto.JobDTO;
import master.utilities.ConnectionFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class AdminJobDAO {
    private Connection cn = null;
    private PreparedStatement ps = null;

    // ✅ Exclude JOBID (auto_increment) from insert
    private String insert_sql = "INSERT INTO job (JOBNAME, JOBTYPE, DOMAIN, VALIDUPTO, YEAREXP, COMPANYID) VALUES (?,?,?,?,?,?)";

    public void insertData(JobDTO jdto) {
    	try {
            ConnectionFactory con = new ConnectionFactory();
            cn = con.getConn();
            ps = cn.prepareStatement(insert_sql);

            ps.setString(1, jdto.getJobname());
            ps.setString(2, jdto.getJobtype());
            ps.setString(3, jdto.getDomain());
            ps.setDate(4, java.sql.Date.valueOf(jdto.getValidupto()));
            ps.setInt(5, jdto.getYrsexp());
            ps.setInt(6, jdto.getCompanyid());

            ps.executeUpdate();
            System.out.println("✅ Job inserted successfully!");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
