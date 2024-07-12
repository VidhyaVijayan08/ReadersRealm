package com.chainsys.readersrealm.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.chainsys.readersrealm.mapper.BookImageMapper;
import com.chainsys.readersrealm.mapper.BookMapper;
import com.chainsys.readersrealm.mapper.LenderMapper;
import com.chainsys.readersrealm.mapper.SearchBookMapper;
import com.chainsys.readersrealm.mapper.SearchUserMapper;
import com.chainsys.readersrealm.mapper.UserMapper;
import com.chainsys.readersrealm.model.Book;
import com.chainsys.readersrealm.model.Lending;
import com.chainsys.readersrealm.model.User;

@Repository
public class UserImpl implements UserDAO {

	@Autowired
 	JdbcTemplate jdbcTemplate;
	UserMapper mapper;
	BookMapper bookMapper;
	LenderMapper lendingMapper;
	SearchBookMapper searchBookMapper;
	SearchUserMapper searchUserMapper;
	BookImageMapper bookImageMapper;

	public void saveLibrary(User user) throws ClassNotFoundException, SQLException {
		String save = "insert into users(user_name,mail_id, user_password, user_type, phone_number, location,status)values(?,?,?,?,?,?,?)";
		Object[] params = { user.getUserName(), user.getMailId(), user.getPassword(), user.getUserType(),
				user.getPhoneNumber(), user.getLocation(), 1 };
		int noOfRows = jdbcTemplate.update(save, params);
		System.out.println("in DAO -save");
	}

	@Override
	public boolean login(User user) {
		String query = "SELECT COUNT(*) FROM user WHERE mail_id=? AND user_password=?";
		int count = jdbcTemplate.queryForObject(query, Integer.class, user.getMailId(), user.getPassword());
		return count == 1;
	}

	@Override
	public String checkPassword(User user) throws SQLException {
		String query = "SELECT user_type FROM users WHERE mail_id = ? AND user_password = ?";
		Object[] params = { user.getMailId(), user.getPassword() };
		try {
			String userType = jdbcTemplate.queryForObject(query, String.class, params);
			if (userType == null) {
				throw new SQLException("User not found for emailId: ");
			}
			return userType;
		} catch (Exception e) {
			throw new SQLException("Error in fetching user type from database", e);
		}
	}

	public List<String> getAllCategory() {
		String sql = "SELECT distinct book_category FROM book_details";
		return jdbcTemplate.queryForList(sql, String.class);
	}

	public List<User> retrieveUsers() {
		String selectQuery = "SELECT user_name, mail_id, user_password, user_type, phone_number, location FROM users WHERE status = 1";
		return jdbcTemplate.query(selectQuery, BeanPropertyRowMapper.newInstance(User.class));
	}

	public List<Lending> retrieveDetail() {
		System.out.println("hello");
		String sql = "SELECT lending_id, book_id, user_id, due_date, borrow_date, status, fine FROM lending_details";
		System.out.println(jdbcTemplate.query(sql, new LenderMapper()));
		return jdbcTemplate.query(sql, new LenderMapper());
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

	public void delete(User user) {
		String delete = "update users set status=0 where user_id=? and status=1";
		Object[] params = { user.getUserId() };
		System.out.println(params);
		jdbcTemplate.update(delete, params);
	}

	public List<User> searchUsersByName(String name) throws ClassNotFoundException, SQLException {
		String sql = "SELECT user_name, mail_id, user_password, user_type, phone_number, location FROM users WHERE user_name LIKE ? AND status = 1";
		return jdbcTemplate.query(sql, BeanPropertyRowMapper.newInstance(User.class),
				new Object[] { "%" + name + "%" });
	}

	public List<User> retrieveDetails() {
		String sql = "SELECT user_name, mail_id, user_password, user_type, phone_number, location FROM users WHERE status = 1";
		return jdbcTemplate.query(sql, BeanPropertyRowMapper.newInstance(User.class));
	}

	public List<User> retrievesDetails() {
		String sql = "SELECT user_name, mail_id, user_password, user_type, phone_number, location FROM users WHERE user_type='librarian' and status = 1";
		return jdbcTemplate.query(sql, BeanPropertyRowMapper.newInstance(User.class));
	}

	public void updateUser(User user) {
		String updateQuery = "UPDATE users SET mail_id = ? WHERE phone_number = ?";
		jdbcTemplate.update(updateQuery, user.getMailId(), user.getPhoneNumber());
	}

	public List<String> getAllCategories() {
		String sql = "SELECT DISTINCT book_category FROM book_details";
		return jdbcTemplate.queryForList(sql, String.class);
	}

	public List<User> findUsers() {
		String sql = "SELECT user_id, user_name, mail_id, user_password, user_type, phone_number, location, status FROM users WHERE user_type = 'user' and status=1";
		List<User> userList = jdbcTemplate.query(sql, new UserMapper());
		System.out.println(userList);
		return userList;
	}

	public List<User> findLibrarians() {
		String sql = "SELECT user_id, user_name, mail_id, user_password, user_type, phone_number, location, status FROM users WHERE user_type = 'librarian' and status=1";
		List<User> userList = jdbcTemplate.query(sql, new UserMapper());
		System.out.println(userList);
		return userList;
	}

	public List<Book> getAllBooks(String category) {
		String sql;
		if (category == null || category.isEmpty()) {
			sql = "SELECT book_id,book_title,author_id,book_category,publication_year,isbn,book_rating,book_reviews,in_stock,available_books,\r\n"
					+ "book_cover, book_summary,likes FROM book_details";
			return jdbcTemplate.query(sql, new BookMapper());
		} else {
			sql = "SELECT book_id,book_title,author_id,book_category,publication_year,isbn,book_rating,book_reviews,in_stock,available_books,\r\n"
					+ "book_cover, book_summary,likes FROM book_details WHERE lower(book_category) = lower(?)";
			return jdbcTemplate.query(sql, new BookMapper(), category.replace("@@", " "));
		}
	}
	

	public List<Book> retrievesDetail(Book book) {
		String sql = "SELECT book_id,book_title,author_id,book_category,publication_year,isbn,book_rating,book_reviews,in_stock,available_books, book_cover, book_summary,likes FROM book_details WHERE book_id = ?";

		System.out.println(jdbcTemplate.query(sql, new BookMapper(), book.getBookId()));
		return jdbcTemplate.query(sql, new BookMapper(), book.getBookId());
	}

	@Override
	public void saveBook(Book book) throws SQLException {
		String sql = "INSERT INTO book_details (book_id, book_title, author_id, book_category, publication_year, isbn, book_summary, book_rating, book_reviews, book_cover, in_stock, available_books,likes) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		jdbcTemplate.update(sql, book.getBookId(), book.getBookTitle(), book.getAuthorId(), book.getBookCategory(),
				book.getPublicationYear(), book.getIsbn(), book.getBookSummary(), book.getBookRating(),
				book.getBookReviews(), book.getBookCover(), book.getInStock(), book.getAvailableBooks());
	}
	
	
	@Override
	public List<Book> retrievesDetailsWishList(int bookId) {
		String sql = "SELECT book_id, book_title, author_id, book_category, publication_year, isbn, book_rating, book_reviews, in_stock, available_books, book_cover, book_summary,likes  FROM book_details WHERE book_id = ? and  likes=?";
		return jdbcTemplate.query(sql, new BookMapper(), bookId, "Liked");
	}
	
	@Override
	public List<Book> retrievesDetailsWishLists() {
		String sql = "SELECT book_id, book_title, author_id, book_category, publication_year, isbn, book_rating, book_reviews, in_stock, available_books, book_cover, book_summary,likes  FROM book_details WHERE likes='liked'";
		return jdbcTemplate.query(sql, new BookMapper());
	}
	
	@Override
	public void saveBookWishList(Book book) {
		String sql = "INSERT INTO wishlist (book_id, book_title, author_id, book_category, publication_year, isbn, book_summary, book_rating, book_reviews,in_stock, available_books, book_cover,likes  ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		jdbcTemplate.update(sql, book.getBookId(), book.getBookTitle(), book.getAuthorId(), book.getBookCategory(),
				book.getPublicationYear(), book.getIsbn(), book.getBookSummary(), book.getBookRating(),
				book.getBookReviews(), book.getBookCover(), book.getInStock(), book.getAvailableBooks());
	}

	@Override
	public void saveRequestForm(Lending lending) {
		String add = "INSERT INTO lending_details (book_id, user_id, borrow_date, status, fine) "
				+ "VALUES (?, ?, ?, ?, ?)";
		jdbcTemplate.update(add, lending.getBookId(), lending.getUserId(), lending.getBorrowDate(), "Pending", 0);
	}
	
	public void updateLike(int bookId) {
		
		String update = "UPDATE book_details SET likes = ? WHERE book_id = ?";
		jdbcTemplate.update(update,"Liked", bookId);
	}
	
	public  List<Book> searchServlet(String bookTitle)
	{
		System.out.println(bookTitle);
        String save="SELECT  book_id, book_title, author_id, book_category, publication_year, isbn, book_summary, book_rating, book_reviews, book_cover,in_stock,available_books FROM book_details where book_title=?";      
			return jdbcTemplate.query(save, new SearchBookMapper(),bookTitle);
    }	
	
	@Override
    public List<User> selectUser(String search) {
        String select=String.format("select user_name,phone_number,mail_id,user_type,location from users where ( user_name like '%%%s%%' or mail_id like '%%%s%%' or phone_number like '%%%s%%')  and status=1 ",search,search,search,search);
        List<User> userList=jdbcTemplate.query(select, new SearchUserMapper());
        return userList;
    }
	
	@Override
	public List<Lending> dateFromTo(String fromDate, String toDate) {
	    String sql = "SELECT lending_id, book_id, user_id, due_date, borrow_date, status, fine FROM lending_details WHERE due_date >= ? AND due_date <= ? || borrow_date >= ? AND borrow_date <= ?";
	    System.out.println(jdbcTemplate.query(sql, new LenderMapper(), fromDate, toDate, fromDate, toDate));
	    List<Lending> lists1 = jdbcTemplate.query(sql, new LenderMapper(), fromDate, toDate, fromDate, toDate);
	    return lists1;
	}
	
	@Override
    public Book getBase64BookImage(int bookId) {
        String query = "SELECT book_cover FROM book_details WHERE book_id = ?";
        return jdbcTemplate.queryForObject(query, new BookImageMapper(), new Object[] { bookId });
    }
}
