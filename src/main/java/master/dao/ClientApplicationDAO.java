package master.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import master.dto.ApplicationDTO;
import master.utilities.ConnectionFactory;

public class ClientApplicationDAO {

    // Queries
    private static final String INSERT_SQL =
        "INSERT INTO application(username, jobid, jobtype, appdate) VALUES (?, ?, ?, ?)";
    
    private static final String SEARCH_BY_DOMAIN_SQL =
        "SELECT j.JOBID, j.JOBNAME, j.COMPANYID, j.JOBTYPE, j.YEAREXP " +
        "FROM job j WHERE j.DOMAIN = ?";
    
    private static final String USER_APPLICATIONS_SQL =
        "SELECT * FROM application WHERE username = ?";

    // ✅ Apply for a job
    public boolean applyJob(ApplicationDTO adto) {
        boolean inserted = false;
        try (Connection cn = new ConnectionFactory().getConn();
             PreparedStatement ps = cn.prepareStatement(INSERT_SQL)) {

            ps.setString(1, adto.getUsername());
            ps.setInt(2, adto.getJobid());
            ps.setString(3, adto.getJobtype());

            // Store appdate properly
            ps.setDate(4, java.sql.Date.valueOf(adto.getApplydt())); // yyyy-MM-dd

            int rows = ps.executeUpdate();
            if (rows > 0) {
                inserted = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return inserted;
    }

    // ✅ Fetch applications of a user
    public ResultSet applications(String uname) {
        ResultSet rs = null;
        try {
            Connection cn = new ConnectionFactory().getConn();
            PreparedStatement ps = cn.prepareStatement(USER_APPLICATIONS_SQL);
            ps.setString(1, uname);
            rs = ps.executeQuery();
        } catch (SQLException se) {
            se.printStackTrace();
        }
        return rs;
    }

    // ✅ Search jobs by domain
    public ResultSet searchJobsByDomain(String domain) {
        ResultSet rs = null;
        try {
            Connection cn = new ConnectionFactory().getConn();
            PreparedStatement ps = cn.prepareStatement(SEARCH_BY_DOMAIN_SQL);
            ps.setString(1, domain);
            rs = ps.executeQuery();
        } catch (SQLException se) {
            se.printStackTrace();
        }
        return rs;
    }
}
