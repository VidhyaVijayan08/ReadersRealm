CREATE TABLE users(
	user_id int(11) AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(100),
    mail_id VARCHAR(100),
    user_password VARCHAR(100),
    user_type VARCHAR(100),
    phone_number VARCHAR(100),
    location VARCHAR(100),
    status int(11)
)

CREATE TABLE authors(
	author_id INT(11) AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(255),
    birth_date date,
    nationality VARCHAR(100)
)

CREATE TABLE book_details(
	book_id INT(11) AUTO_INCREMENT PRIMARY KEY,
    book_title VARCHAR(255),
    author_id INT(11),
    book_category VARCHAR(100),
    publication_year INT(11),
    isbn VARCHAR(20),
    book_rating float,
    book_reviews VARCHAR(200),
    in_stock tinyint(1),
    available_books int(11),
    book_cover longblob,
    book_summary varchar(100)
)

CREATE TABLE lending_details(
	lending_id INT(11) AUTO_INCREMENT PRIMARY KEY,
    book_id INT(11),
    user_id INT(11),
    due_date DATE,
    borrow_date DATE,
    status VARCHAR(100),
    fine INT(11)
)
