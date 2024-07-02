package com.chainsys.readersrealm.dao;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.chainsys.readersrealm.mapper.UserMapper;
import com.chainsys.readersrealm.model.Lending;
import com.chainsys.readersrealm.model.User;

@Repository
public class UserImpl implements UserDAO {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	UserMapper mapper;

	
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

	
	/*
	 * public String checkUser(User user) { String select =
	 * "SELECT user_password FROM users WHERE mail_id = ?"; Object[] params =
	 * {user.getMailId()};
	 * 
	 * try { return jdbcTemplate.queryForObject(select, String.class, params); }
	 * catch (EmptyResultDataAccessException e) { return null; } }
	 */
	 
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
	
	 
//	 public static List<String> getAllCategory() throws ClassNotFoundException, SQLException {
//	        List<String> categoryList = new ArrayList<>();
//	        Connection connection = null;
//	        PreparedStatement preparedStatement = null;
//	        ResultSet resultSet = null;
//	        try {
//	            connection = ConnectUtil.getConnection();
//	            String sql;
//	            sql = "SELECT distinct book_category FROM book_details";
//	            preparedStatement = connection.prepareStatement(sql);
//	            resultSet = preparedStatement.executeQuery();
//	            while (resultSet.next()) {
//	                 categoryList.add(resultSet.getString("book_category"));
//	            }
//	        } finally {
//	            if (resultSet != null) {
//	                resultSet.close();
//	            }
//	            if (preparedStatement != null) {
//	                preparedStatement.close();
//	            }
//	            if (connection != null) {
//	                connection.close();
//	            }
//	        }
//	        return categoryList;
//	    }	
	 
	 
	 public List<User> retrieveUsers() {
	        String selectQuery = "SELECT user_name, mail_id, user_password, user_type, phone_number, location FROM users WHERE status = 1";
	        return jdbcTemplate.query(selectQuery, BeanPropertyRowMapper.newInstance(User.class));
	    }
	 
	 public List<Lending> retrieveDetail() {
	        String sql = "SELECT lending_id, book_id, user_id, due_date, borrow_date, status, fine FROM lending_details";
	        return jdbcTemplate.query(sql, BeanPropertyRowMapper.newInstance(Lending.class));
	    }
	 
	 public void approveBorrower(Lending lending) {
	        String update = "UPDATE lending_details SET status = ? WHERE user_id = ?";
	        jdbcTemplate.update(update, lending.getStatus(), lending.getUserId());
	    }
	 
	 public List<User> findLibrarian(String email) {
	        String sql;
	        if (email == null || email.isEmpty()) {
	            sql = "SELECT user_id, user_name, mail_id, user_password, user_type, phone_number, location, status FROM users where user_type = 'librarian'";
	            return jdbcTemplate.query(sql, BeanPropertyRowMapper.newInstance(User.class));
	        } else {
	            sql = "SELECT user_id, user_name, mail_id, user_password, user_type, phone_number, location, status FROM users WHERE mail_id = ?";
	            return jdbcTemplate.query(sql, BeanPropertyRowMapper.newInstance(User.class), email);
	        }
	    }
	 
	 public void deleteUser(Integer id) {
	        String updateQuery = "UPDATE users SET status = 0 WHERE user_id = ? AND status = 1";
	        jdbcTemplate.update(updateQuery, id);
	    }
	 
	 public List<User> searchUsersByName(String name) throws ClassNotFoundException, SQLException {
	        String sql = "SELECT user_name, mail_id, user_password, user_type, phone_number, location FROM users WHERE user_name LIKE ? AND status = 1";
	        return jdbcTemplate.query(sql, BeanPropertyRowMapper.newInstance(User.class), new Object[]{"%" + name + "%"});
	 }
	 
	 public List<User> retrieveDetails() {
	        String sql = "SELECT user_name, mail_id, user_password, user_type, phone_number, location " +
	                     "FROM users " +
	                     "WHERE status = 1";
	        return jdbcTemplate.query(sql, BeanPropertyRowMapper.newInstance(User.class));
	    }
	 
	 public void updateUser(User user) {
	        String updateQuery = "UPDATE users SET user_name = ? WHERE phone_number = ?";
	        jdbcTemplate.update(updateQuery, user.getUserName(), user.getPhoneNumber());
	    }
	 
	 public List<String> getAllCategories() {
	        String sql = "SELECT DISTINCT book_category FROM book_details";
	        return jdbcTemplate.queryForList(sql, String.class);
	    }
	 
	 public List<User> findUsers() {
	        String sql = "SELECT user_id, user_name, mail_id, user_password, user_type, phone_number, location, status FROM users WHERE user_type = 'user'";
	        List <User> userList = jdbcTemplate.query(sql, new UserMapper());
	        System.out.println(userList);
	            return userList;
	 }
}
