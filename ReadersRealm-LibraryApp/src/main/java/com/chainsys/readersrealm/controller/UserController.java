package com.chainsys.readersrealm.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.ui.Model;
import com.chainsys.readersrealm.dao.UserDAO;
import com.chainsys.readersrealm.dao.UserImpl;
import com.chainsys.readersrealm.model.Book;
import com.chainsys.readersrealm.model.Lending;
import com.chainsys.readersrealm.model.User;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {

	@Autowired
	UserDAO userDAO;
	@Autowired
	UserImpl userImpl;

	private JdbcTemplate jdbcTemplate;

	@RequestMapping("/")
	public String home() {
		return "home.jsp";
	}

	@GetMapping("/register")
	public String saveUser(@RequestParam("Name") String userName, @RequestParam("type") String type,
			@RequestParam("phonenumber") String phoneNumber, @RequestParam("password") String userPassword,
			@RequestParam("location") String location, @RequestParam("EmailId") String email)
			throws ClassNotFoundException, SQLException {
		User user = new User();
		user.setUserName(userName);
		user.setPassword(userPassword);
		user.setUserType(type);
		user.setLocation(location);
		user.setPhoneNumber(phoneNumber);
		user.setMailId(email);
		userDAO.saveLibrary(user);
		return "index.jsp";
	}

	@PostMapping("/login")
	public String loginUser(@RequestParam("EmailId") String emailId, @RequestParam("password") String password,
			HttpSession session, Model model) throws ClassNotFoundException {
		try {
			User user = new User();
			user.setMailId(emailId);
			user.setPassword(password);
			String userType = userDAO.checkPassword(user);
			if (userType != null) {
				session.setAttribute("emailId", emailId);
				if (userType.equalsIgnoreCase("admin")) {
					return "redirect:/adminIndex.jsp";
				} else if (userType.equalsIgnoreCase("user")) {
					return "redirect:/home.jsp";
				} else if (userType.equalsIgnoreCase("librarian")) {
					return "redirect:/librarians.jsp";
				}
			} else {
				model.addAttribute("error", "Invalid credentials. Please try again.");
				return "home.jsp";
			}
		} catch (SQLException e) {
			e.printStackTrace();
			model.addAttribute("error", "An error occurred. Please try again later.");
			return "index.jsp";
		}

		model.addAttribute("error", "Invalid credentials. Please try again.");
		return "index.jsp";
	}

	@GetMapping("/deleteUser")
	public String deleteUser(HttpServletRequest request, Model model) throws IOException {
		String userIdString = request.getParameter("id");
		if (userIdString != null && !userIdString.isEmpty()) {
			try {
				int userId = Integer.parseInt(userIdString);
				User userToDelete = new User();
				userToDelete.setUserId(userId);
				userImpl.delete(userToDelete);
				List<User> users = userDAO.findUsers();
				model.addAttribute("users", users);
			} catch (NumberFormatException e) {
				System.err.println("Invalid user ID format: " + userIdString);
			}
		} else {
			System.err.println("User ID parameter is missing or empty.");
		}
		return "users.jsp";
	}

	@GetMapping("/deleteLibrarian")
	public String deleteLibrarian(HttpServletRequest request, Model model) throws IOException {
		String userIdString = request.getParameter("id");
		if (userIdString != null && !userIdString.isEmpty()) {
			try {
				int userId = Integer.parseInt(userIdString);
				User userToDelete = new User();
				userToDelete.setUserId(userId);
				userImpl.delete(userToDelete);
				List<User> users = userDAO.findLibrarians();
				model.addAttribute("userss", users);
			} catch (NumberFormatException e) {
				System.err.println("Invalid user ID format: " + userIdString);
			}
		} else {
			System.err.println("User ID parameter is missing or empty.");
		}
		return "librarian.jsp";
	}

	@GetMapping("/deletes")
	public String delete(@RequestParam("id") int id, Model model) {
		User users1 = new User();
		users1.setUserId(id);
		userImpl.delete(users1);
		System.out.println("getting datas");
		List<User> users = userDAO.findUsers();
		System.out.println(users);
		model.addAttribute("users", users);
		return "users.jsp";
	}

	@GetMapping("/listAllUsers")
	public String listAllUsers(Model model) {
		List<User> users = userDAO.findUsers();
		System.out.println(users);
		model.addAttribute("users", users);
		return "users.jsp";
	}

	@GetMapping("/listAllLibrarians")
	public String listAllLibrarian(Model model) {
		List<User> userss = userDAO.findLibrarians();
		System.out.println(userss);
		model.addAttribute("userss", userss);
		return "librarian.jsp";
	}

	@GetMapping("/updateUser")
	public String updateUser(HttpServletRequest request, Model model) throws IOException {
		String mailId = request.getParameter("MailId");
		String phoneNo = request.getParameter("PhoneNumber");
		User user = new User();
		user.setMailId(mailId);
		user.setPhoneNumber(phoneNo);
		userDAO.updateUser(user);
		List<User> users = userDAO.retrieveDetails();
		model.addAttribute("users", users);
		return "users.jsp";
	}

	@GetMapping("/updateLibrarian")
	public String updateLibrarian(HttpServletRequest request, Model model) throws IOException {
		String mailId = request.getParameter("MailId");
		String phoneNo = request.getParameter("PhoneNumber");
		User user = new User();
		user.setMailId(mailId);
		user.setPhoneNumber(phoneNo);
		userDAO.updateUser(user);
		List<User> users = userDAO.retrievesDetails();
		model.addAttribute("users", users);
		return "librarian.jsp";
	}

	@GetMapping("/books")
	public String getAllBooks(@RequestParam(required = false) String category, Model model) {
		List<Book> bookList = userImpl.getAllBooks(category);
		model.addAttribute("bookList", bookList);
		return "viewBook.jsp";
	}

	@GetMapping("/book")
	public String getBooks(@RequestParam(required = false) String category, Model model) {
		List<Book> bookList = userImpl.getAllBooks(category);
		model.addAttribute("bookList", bookList);
		return "viewMore.jsp";
	}

	@PostMapping("/saveBook")
	public String saveBook(@RequestParam("bookId") int bookId, @RequestParam("bookTitle") String bookTitle,
			@RequestParam("authorId") int authorId, @RequestParam("bookCategory") String bookCategory,
			@RequestParam("publicationYear") int publicationYear, @RequestParam("isbn") String isbn,
			@RequestParam("bookSummary") String bookSummary, @RequestParam("bookRating") int bookRating,
			@RequestParam("bookReview") String bookReview, @RequestParam("bookInStock") int inStock,
			@RequestParam("availableBook") int availableBook, @RequestParam("filePart") MultipartFile filePart,
			RedirectAttributes redirectAttributes) throws IOException, SQLException {
		byte[] images = null;
		if (!filePart.isEmpty()) {
			images = filePart.getBytes();
		}
		Book book = new Book();
		book.setBookId(bookId);
		book.setBookTitle(bookTitle);
		book.setAuthorId(authorId);
		book.setBookCategory(bookCategory);
		book.setPublicationYear(publicationYear);
		book.setIsbn(isbn);
		book.setBookSummary(bookSummary);
		book.setBookRating(bookRating);
		book.setBookReviews(bookReview);
		book.setInStock(inStock);
		book.setAvailableBooks(availableBook);
		book.setBookCover(images);
		userImpl.saveBook(book);
		redirectAttributes.addFlashAttribute("message", "Book saved successfully");
		return "redirect:/bookList"; // Redirect to book list page or appropriate page
	}

	@GetMapping("/saveRequestForm")
	public String saveRequestForm(@RequestParam("UserId") String userId, @RequestParam("BookId") String bookId,
			@RequestParam("Date") String borrowDate, Model model) {
		try {
			int lenderId1 = Integer.parseInt(userId);
			int bookId1 = Integer.parseInt(bookId);
			Lending lending = new Lending();
			lending.setUserId(lenderId1);
			lending.setBookId(bookId1);
			lending.setBorrowDate(borrowDate);
			userImpl.saveRequestForm(lending);
			List<Lending> list = userImpl.retrieveDetail();
			System.out.println(list);
			model.addAttribute("lists1", list);
			return "adminRequestView.jsp";
		} catch (NumberFormatException e) {
			e.printStackTrace();
			return "error-page";
		}
	}

	@GetMapping("/showRequestForm")
	public String showRequestForm(Model model) {
		try {
			List<Lending> list = userImpl.retrieveDetail();
			System.out.println(list);
			model.addAttribute("lists1", list);
			return "adminRequestView.jsp";
		} catch (NumberFormatException e) {
			e.printStackTrace();
			return "error-page";
		}
	}
	
	@GetMapping("/showUserRequestForm")
	public String showUserRequestForm(Model model) {
		try {
			List<Lending> list = userImpl.retrieveDetail();
			System.out.println(list);
			model.addAttribute("lists1", list);
			return "userShowRequest.jsp";
		} catch (NumberFormatException e) {
			e.printStackTrace();
			return "error-page";
		}
	}

	@GetMapping("/bookViewMore")
	public String showViewMore(@RequestParam("BookId") String bookId, Book book, Model model) {
		try {
			List<Book> list = userImpl.retrievesDetail(book);
			System.out.println(list);
			model.addAttribute("booklists", list);
			return "adminRequestView.jsp";
		} catch (NumberFormatException e) {
			e.printStackTrace();
			return "error-page";
		}
	}

	@GetMapping("/approveBorrower")
	public String approveBorrower(@RequestParam("id") int userId, @RequestParam("approval") String approval,
			Model model) {
		Lending lending = new Lending();
		lending.setUserId(userId);
		lending.setStatus(approval);
		userImpl.approveBorrower(lending);
		List<Lending> list = userImpl.retrieveDetail();
		System.out.println(list);
		model.addAttribute("lists1", list);
		return "adminRequestView.jsp";
	}
	
	@GetMapping("/search")
    public String selectUser(@RequestParam("SearchName") String search,Model model)
    {
        List<User> users=userDAO.selectUser(search);
        model.addAttribute("users",users);
        return "users.jsp";
    }

	@GetMapping("/searchlibrarian")
    public String selectLibrarian(@RequestParam("SearchName") String search,Model model)
    {
        List<User> users=userDAO.selectUser(search);
        model.addAttribute("users",users);
        return "users.jsp";
    }
	
	@GetMapping("/Date")
    public String date(@RequestParam("fromDate") String fromDate,@RequestParam("toDate") String toDate,Model model)
    {
        List<Lending> lists1=userDAO.dateFromTo(fromDate,toDate);
        model.addAttribute("lists1",lists1);
        return "adminRequestView.jsp";
    }
	
	
	@GetMapping("/BooksWishList")
	public String getBooksWishList(@RequestParam(required = false) String category, Model model) {
		List<Book> bookList = userImpl.getAllBooks(category);
		model.addAttribute("bookList", bookList);
		return "viewMore.jsp";
	}
	
	
	@PostMapping("/SaveBooksWishlist")
	public String saveBooks(@RequestParam("bookId") int bookId, @RequestParam("bookTitle") String bookTitle,
			@RequestParam("authorId") int authorId, @RequestParam("bookCategory") String bookCategory,
			@RequestParam("publicationYear") int publicationYear, @RequestParam("isbn") String isbn,
			@RequestParam("bookSummary") String bookSummary, @RequestParam("bookRating") int bookRating,
			@RequestParam("bookReview") String bookReview, @RequestParam("bookInStock") int inStock,
			@RequestParam("availableBook") int availableBook, @RequestParam("filePart") MultipartFile filePart,
			RedirectAttributes redirectAttributes , Model model) throws IOException, SQLException {
		byte[] images = null;
		if (!filePart.isEmpty()) {
			images = filePart.getBytes();
		}
		Book book = new Book();
		book.setBookId(bookId);
		book.setBookTitle(bookTitle);
		book.setAuthorId(authorId);
		book.setBookCategory(bookCategory);
		book.setPublicationYear(publicationYear);
		book.setIsbn(isbn);
		book.setBookSummary(bookSummary);
		book.setBookRating(bookRating);
		book.setBookReviews(bookReview);
		book.setInStock(inStock);
		book.setAvailableBooks(availableBook);
		book.setBookCover(images);
		userImpl.saveBook(book);
		List<Book> booklist = userImpl.retrievesDetail(book);
		System.out.println(booklist);
		model.addAttribute("wishlists", booklist);

		redirectAttributes.addFlashAttribute("message", "Book saved successfully");
		return "redirect:/bookList"; // Redirect to book list page or appropriate page
	}
	
	
	
	@PostMapping("/SaveBooksWishlists")
	public String saveBooks(@RequestParam("bookId") int bookId, @RequestParam("bookTitle") String bookTitle,
			@RequestParam("authorId") int authorId, @RequestParam("bookCategory") String bookCategory,
			@RequestParam("publicationYear") int publicationYear, @RequestParam("isbn") String isbn,
			@RequestParam("bookSummary") String bookSummary, @RequestParam("bookRating") int bookRating,
			@RequestParam("bookReview") String bookReview, @RequestParam("bookInStock") int inStock,
			@RequestParam("availableBook") int availableBook, @RequestParam("filePart") MultipartFile filePart,
			RedirectAttributes redirectAttributes , Model model, HttpSession session) throws IOException, SQLException {
		byte[] images = null;
		if (!filePart.isEmpty()) {
			images = filePart.getBytes();
		}
		Book book = new Book();
		book.setBookId(bookId);
		book.setBookTitle(bookTitle);
		book.setAuthorId(authorId);
		book.setBookCategory(bookCategory);
		book.setPublicationYear(publicationYear);
		book.setIsbn(isbn);
		book.setBookSummary(bookSummary);
		book.setBookRating(bookRating);
		book.setBookReviews(bookReview);
		book.setInStock(inStock);
		book.setAvailableBooks(availableBook);
		book.setBookCover(images);
		book.setLikes("Not Liked");
		session.setAttribute("bookId", bookId);
		userImpl.saveBookWishList(book);
		redirectAttributes.addFlashAttribute("message", "Book saved successfully");
		return "redirect:/bookList"; 
	}
	
	@RequestMapping("/retrieveWish")
	public String getBookWish(@RequestParam("bookId") int bookId,HttpSession session, Model model)
	{		
	userImpl.updateLike(bookId);
	List<Book> booklist = userImpl.retrievesDetailsWishList(bookId);
	System.out.println(booklist);
	model.addAttribute("wishlistbook", booklist);
	return "wishList.jsp";
	}
	
	@RequestMapping("/retrieve")
	public String getBookWishList( HttpSession session, Model model) {
		System.out.println("HIIIII");
		List<Book> booklist =userImpl.retrievesDetailsWishLists();
		System.out.println(booklist);
		model.addAttribute("wishlistbooks", booklist);
		return "wishListBooks.jsp";
	}

}