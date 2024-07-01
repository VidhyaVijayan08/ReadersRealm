package com.chainsys.readersrealm.dao;

import java.sql.SQLException;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.chainsys.readersrealm.model.User;

@Repository
public interface UserDAO {
	public void saveLibrary(User user) throws ClassNotFoundException, SQLException;
	 
	 public String checkUser(User user);
	 
	 public String checkPassword(User user) throws SQLException;
	
	public boolean login(User user) ;
	public static List<User> retrieveDetails() throws ClassNotFoundException, SQLException {
		return null;
	}
	
}
