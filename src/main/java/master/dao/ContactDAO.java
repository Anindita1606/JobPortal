package master.dao;

import master.dto.ContactDTO;
import master.utilities.ConnectionFactory;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ContactDAO {
    
    // SQL Queries
    private static final String INSERT_SQL =
        "INSERT INTO contact_messages(name, email, message) VALUES (?, ?, ?)";
    private static final String SELECT_ALL_SQL =
        "SELECT * FROM contact_messages ORDER BY submitted_at DESC";
    private static final String DELETE_SQL =
        "DELETE FROM contact_messages WHERE id = ?";

    // Save contact message
    public boolean saveMessage(ContactDTO cdto) {
        boolean inserted = false;
        try  {
        	Connection cn = new ConnectionFactory().getConn();
            PreparedStatement ps = cn.prepareStatement(INSERT_SQL);
            ps.setString(1, cdto.getName());
            ps.setString(2, cdto.getEmail());
            ps.setString(3, cdto.getMessage());

            int rows = ps.executeUpdate();
            if (rows > 0) {
                inserted = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return inserted;
    }

    // ✅ Fetch all messages as a List
    public List<ContactDTO> fetchMessages() {
        List<ContactDTO> messages = new ArrayList<>();
        try  {
        	Connection cn = new ConnectionFactory().getConn();
            PreparedStatement ps = cn.prepareStatement(SELECT_ALL_SQL);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ContactDTO dto = new ContactDTO();
                dto.setId(rs.getInt("id"));
                dto.setName(rs.getString("name"));
                dto.setEmail(rs.getString("email"));
                dto.setMessage(rs.getString("message"));
                messages.add(dto);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return messages;
    }

    // Delete a message by DTO
    public boolean deleteMessage(ContactDTO cdto) {
        boolean deleted = false;
        try  {
        	Connection cn = new ConnectionFactory().getConn();
            PreparedStatement ps = cn.prepareStatement(DELETE_SQL);
            ps.setInt(1, cdto.getId());

            int rows = ps.executeUpdate();
            if (rows > 0) {
                deleted = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return deleted;
    }
}