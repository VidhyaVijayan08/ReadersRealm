package com.chainsys.readersrealm.dao;

import java.sql.SQLException;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.chainsys.readersrealm.model.Book;
import com.chainsys.readersrealm.model.Lending;
import com.chainsys.readersrealm.model.User;

@Repository
public interface UserDAO {
	public void saveLibrary(User user) throws ClassNotFoundException, SQLException;
//	 public String checkUser(User user);
	public List<User> findUsers(); 
	public List<User> findLibrarians(); 
	public String checkPassword(User user) throws SQLException;
	public boolean login(User user) ;
	public List<User> retrieveUsers();
	public void approveBorrower(Lending lending); 
	public List<Lending> retrieveDetail(); 
	public List<User> findLibrarian(String email);
	public void updateUser(User user);
	public List<User> retrieveDetails();
	public List<User> retrievesDetails();
	void saveBook(Book book) throws SQLException;
	public void saveRequestForm(Lending lending);
	public  List<Book> searchServlet(String bookTitle);
    public List<User> selectUser(String search);
	public List<Lending> dateFromTo(String fromDate, String toDate);
	public void saveBookWishList(Book book);
	public List<Book> retrievesDetailsWishLists();
    public Book getBase64BookImage(int bookId);
	public List<Book> retrievesDetailsWishList(int bookId);
}
