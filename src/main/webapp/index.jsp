<%@page import="java.util.List"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="com.DB.DBConnect" %>


<!-- Add other necessary imports for your project -->

<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.back-img {
	background: url("img/book4.png");
	height: 40vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}

.crd-ho:hover {
	background-color: #fcf7f7;
}
</style>
<meta charset="ISO-8859-1">
<title>Ebook:Index</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f7f7f7;">
	<%@include file="all_component/navbar.jsp"%>

	<div class="container-fluid back-img">

	<!-- <h2 class="text-center text-danger">Ebook Management System</h2> -->	
	</div>

	
	<!-- start recent book -->
	
	<div class="container ">
		<h3 class="text-center">Recent Book:</h3>
		<div class="row">
			
			 <%
  BookDAOImpl dao=new BookDAOImpl(DBConnect.getConn());
  List<BookDtls> list2=dao.getRecentBook();
  for(BookDtls b:list2)
  {
				%>
				<div class="col-md-3">
				<div class="card" class="crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName() %>"
							style="width: 120px; height: 200px;" class="img-thumblin">
						<p><%=b.getBookname() %></p>
						<p><%=b.getAuthor() %></p>
						<p><%
						if(b.getBookCategory().equals("Old"))
						{%>
						<p>Categories:<%=b.getBookCategory() %></p>
							<div class="row">
							 <a href="view_books.jsp?bid=<%=b.getBookId() %>"
								class="btn btn-success btn-sm ml-5">View details</a> <a href=""
								class="btn btn-danger btn-sm ml-1"><%=b.getPrice() %><i class="fa-solid fa-indian-rupee-sign"></i></a>
						</div>
						<% }
						else{
							%>
							<p>Categories:<%=b.getBookCategory() %></p>
							<div class="row">
							<a href="" class="btn btn-danger btn-sm ml-2"><i
								class="fa-solid fa-cart-shopping"></i>Add Cart</a> <a href="view_books.jsp?bid=<%=b.getBookId() %>"
								class="btn btn-success btn-sm ml-1">View details</a> <a href=""
								class="btn btn-danger btn-sm ml-1"><%=b.getPrice() %><i class="fa-solid fa-indian-rupee-sign"></i></a>
						</div>
						<% }
						%>
						
						
						
					</div>
				</div>
					</div>
				<% 
				
			}
			%>
				
		

			
		
			
		</div>
		<br>
		<div class="text-center ml-1">
			<a href="all_recent_book.jsp" class="btn btn-danger btn-sm text-white">View All</a>
		</div>
	</div>
	<!-- end recent book -->
	<hr>
	<!-- start of New book -->
		<div class="container ">
		<h3 class="text-center">New Book:</h3>
		<div class="row">
			
			 <%
  BookDAOImpl dao2=new BookDAOImpl(DBConnect.getConn());
  List<BookDtls> list=dao.getNewBook();
  for(BookDtls b:list2)
  {
				%>
				<div class="col-md-3">
				<div class="card" class="crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName() %>"
							style="width: 120px; height: 200px;" class="img-thumblin">
						<p><%=b.getBookname() %></p>
						<p><%=b.getAuthor() %></p>
						<p>Categories:<%=b.getBookCategory() %></p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm ml-2"><i
								class="fa-solid fa-cart-shopping"></i>Add Cart</a> <a href="view_books.jsp?bid=<%=b.getBookId() %>"
								class="btn btn-success btn-sm ml-1">View details</a> <a href=""
								class="btn btn-danger btn-sm ml-1"><%=b.getPrice() %><i class="fa-solid fa-indian-rupee-sign"></i></a>
						</div>
					</div>
				</div>
					</div>
				<% 
				
			}
			%>
	
		</div>
		<br>
		<div class="text-center ml-1">
			<a href="all_new_book.jsp" class="btn btn-danger btn-sm text-white">View All</a>
		</div>
	</div>
	<!-- end New book -->
	<hr>
	
	<!-- start Old book -->
	<div class="container ">
		<h3 class="text-center">Old Book:</h3>
		<div class="row">
			
			 <%
  BookDAOImpl dao3=new BookDAOImpl(DBConnect.getConn());
  List<BookDtls> list3=dao.getOldBooks();
  for(BookDtls b:list3)
  {
				%>
				<div class="col-md-3">
				<div class="card" class="crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName() %>"
							style="width: 120px; height: 200px;" class="img-thumblin">
						<p><%=b.getBookname() %></p>
						<p><%=b.getAuthor() %></p>
						<p><%=b.getBookCategory() %></p>
						<div class="row">
							 <a href="view_books.jsp?bid=<%=b.getBookId() %>"
								class="btn btn-success btn-sm ml-5">View details</a> <a href=""
								class="btn btn-danger btn-sm ml-1"><%=b.getPrice() %><i class="fa-solid fa-indian-rupee-sign"></i></a>
						</div>
					</div>
				</div>
					</div>
				<% 
				
			}
			%>
		
		</div>
		<br>
		<div class="text-center ml-1">
			<a href="all_old_book.jsp" class="btn btn-danger btn-sm text-white">View All</a>
		</div>
	</div>
	<!-- end old book -->
	<%@include file="all_component/footer.jsp"%>
</body>
</html>