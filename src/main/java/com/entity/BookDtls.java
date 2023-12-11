package com.entity;

public class BookDtls {
private int bookId;
private String bookname;
private String author;
private String price;
private String bookCategory;
private String status;
private String photoName;
private String email;
private String rating;
private String display;

public BookDtls() {
	// TODO Auto-generated constructor stub
}
public BookDtls(String bookname, String author, String price, String bookCategory, String status, String photoName,
		String email,String rating,String display) {
	super();
	this.bookname = bookname;
	this.author = author;
	this.price = price;
	this.bookCategory = bookCategory;
	this.status = status;
	this.photoName = photoName;
	this.email = email;
	this.rating=rating;
	this.display=display;
	
}







public int getBookId() {
	return bookId;
}
public void setBookId(int bookId) {
	this.bookId = bookId;
}
public String getBookname() {
	return bookname;
}
public void setBookname(String bookname) {
	this.bookname = bookname;
}
public String getAuthor() {
	return author;
}
public void setAuthor(String author) {
	this.author = author;
}
public String getPrice() {
	return price;
}
public void setPrice(String price) {
	this.price = price;
}
public String getBookCategory() {
	return bookCategory;
}
public void setBookCategory(String bookCategory) {
	this.bookCategory = bookCategory;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public String getPhotoName() {
	return photoName;
}
public void setPhotoName(String photoName) {
	this.photoName = photoName;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getRating() {
	return rating;
}
public void setRating(String rating) {
	this.rating=rating;
}


public String getDisplay() {
	return display;
}
public void setDisplay(String display) {
	this.display = display;
}
@Override
public String toString() {
	return "BookDtls [bookId=" + bookId + ", bookname=" + bookname + ", author=" + author + ", price=" + price
			+ ", bookCategory=" + bookCategory + ", status=" + status + ", photoName=" + photoName + ", email=" + email
			+ ", rating=" + rating + ", display=" + display + "]";
}




}
