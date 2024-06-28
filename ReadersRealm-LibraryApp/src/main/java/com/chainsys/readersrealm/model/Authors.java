package com.chainsys.readersrealm.model;

public class Authors {
	int authorId;
	String authorName;
	String birthDate;
	String nationality;
	
	public Authors() {
		
	}
	
	public Authors(int authorId, String authorName, String birthDate, String nationality) {
		super();
		this.authorId = authorId;
		this.authorName = authorName;
		this.birthDate = birthDate;
		this.nationality = nationality;
	}
	
	public int getAuthorId() {
		return authorId;
	}
	public void setAuthorId(int authorId) {
		this.authorId = authorId;
	}
	public String getAuthorName() {
		return authorName;
	}
	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}
	public String getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	
	@Override
	public String toString() {
		return "Authors [authorId=" + authorId + ", authorName=" + authorName + ", birthDate=" + birthDate
				+ ", nationality=" + nationality + "]";
	}
	
	
}
