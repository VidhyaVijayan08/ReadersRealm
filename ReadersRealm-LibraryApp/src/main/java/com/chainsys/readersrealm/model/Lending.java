package com.chainsys.readersrealm.model;

public class Lending {
	int lendingId;
	int bookId;
	int userId;
	String borrowDate;
	String dueDate;
	String status;
	int fine;

	//Getters and Setters
	public int getBookId() {
		return bookId;
	}
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	public String getBorrowDate() {
		return borrowDate;
	}
	public void setBorrowDate(String borrowDate) {
		this.borrowDate = borrowDate;
	}
	public String getDueDate() {
		return dueDate;
	}
	public void setDueDate(String dueDate) {
		this.dueDate = dueDate;
	}
	public int getFine() {
		return fine;
	}

	public int getLendingId() {
		return lendingId;
	}

	public void setLendingId(int lendingId) {
		this.lendingId = lendingId;
	}

	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public void setFine(int fine) {
		this.fine = fine;
	}
	
	public Lending() {
		
	}
	
	public Lending(int lendingId, int bookId, int userId, String borrowDate, String dueDate, String status, int fine) {
		super();
		this.lendingId = lendingId;
		this.bookId = bookId;
		this.userId = userId;
		this.borrowDate = borrowDate;
		this.dueDate = dueDate;
		this.status = status;
		this.fine = fine;
	}

	@Override
	public String toString() {
		return "Lending [lendingId=" + lendingId + ", bookId=" + bookId + ", userId=" + userId +  ", borrowDate=" + borrowDate + ", dueDate=" + dueDate + ", status=" + status
				+ ", fine=" + fine + "]";
	}
	
	
}

