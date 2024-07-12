package com.chainsys.readersrealm.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.chainsys.readersrealm.model.Book;

public class WishListBookMapper implements RowMapper<Book>{
	 public Book mapRow(ResultSet rs, int rowNum) throws SQLException 
	    {
	       Book book=new Book();		
	       book.setBookId(rs.getInt(1));
	       book.setBookTitle(rs.getString(2));
	       book.setBookCategory(rs.getString(3));
	       return book;
	    }
}
