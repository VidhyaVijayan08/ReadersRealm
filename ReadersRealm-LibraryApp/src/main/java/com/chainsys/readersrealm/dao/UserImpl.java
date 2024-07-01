package com.chainsys.readersrealm.dao;

import java.sql.SQLException;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.chainsys.readersrealm.model.User;

@Repository
public class UserImpl implements UserDAO {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public void saveLibrary(User user) throws ClassNotFoundException, SQLException {
	        String save = "insert into users(user_name,mail_id, user_password, user_type, phone_number, location,status)values(?,?,?,?,?,?,?)";
	        Object[] params = { user.getUserName(),user.getMailId(), user.getPassword(), user.getUserType(), user.getPhoneNumber(),
	                user.getLocation(),1};
	        int noOfRows = jdbcTemplate.update(save, params);
	        System.out.println("in DAO -save");	
	 }
	
	@Override
	public boolean login(User user) {
	    String query = "SELECT COUNT(*) FROM user WHERE mail_id=? AND user_password=?";
	    int count = jdbcTemplate.queryForObject(query, Integer.class, user.getMailId(), user.getPassword());
	    return count == 1;
	}

	
	 public String checkUser(User user) {
	        String select = "SELECT user_password FROM users WHERE mail_id = ?";
	        Object[] params = {user.getMailId()};

	        try {
	            return jdbcTemplate.queryForObject(select, String.class, params);
	        } catch (EmptyResultDataAccessException e) {
	            return null; 
	        }
	    }
	 
	 @Override
	 public String checkPassword(User user) throws SQLException {
	        String query = "SELECT user_type FROM users WHERE mail_id = ? AND user_password = ?";
	        Object[] params = {user.getMailId(),user.getPassword()};

	        try {
	            String userType = jdbcTemplate.queryForObject(query, String.class,params);
	            
	            if (userType == null) {
	                throw new SQLException("User not found for emailId: "  );
	            }
	            
	            return userType;
	        } catch (Exception e) {
	            throw new SQLException("Error in fetching user type from database", e);
	        }
	    }
	
}
