package com.chainsys.readersrealm.model;

public class User {

		int userId;
		String userName;
		String mailId;
		String password;
		String userType;
		String phoneNumber;
		String location;
		
		public static int status;	
		 
		public User(){
			
		}
		

		public User(int userId, String userName, String mailId, String password, String userType, String phoneNumber,
				String location) {
			super();
			this.userId = userId;
			this.userName = userName;
			this.mailId = mailId;
			this.password = password;
			this.userType = userType;
			this.phoneNumber = phoneNumber;
			this.location = location;
		}

		public int getUserId() {
			return userId;
		}

		public void setUserId(int userId) {
			this.userId = userId;
		}

		public String getUserName() {
			return userName;
		}

		public void setUserName(String userName) {
			this.userName = userName;
		}

		public String getMailId() {
			return mailId;
		}

		public void setMailId(String mailId) {
			this.mailId = mailId;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

		public String getUserType() {
			return userType;
		}

		public void setUserType(String userType) {
			this.userType = userType;
		}

		public String getPhoneNumber() {
			return phoneNumber;
		}

		public void setPhoneNumber(String phoneNumber) {
			this.phoneNumber = phoneNumber;
		}

		public String getLocation() {
			return location;
		}

		public void setLocation(String location) {
			this.location = location;
		}

		public int getStatus() {
			return status;
		}

		public void setStatus(int status) {
			User.status = status;
		}
		

		@Override
		public String toString() {
			return "User [userId=" + userId + ", userName=" + userName + ", mailId=" + mailId + ", password=" + password
					+ ", userType=" + userType + ", phoneNumber=" + phoneNumber + ", location=" + location + "]";
		}
	
}
