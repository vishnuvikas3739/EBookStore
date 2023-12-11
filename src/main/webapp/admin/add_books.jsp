<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin:Add Books</title>
<%@include file="allCss.jsp"%>
</head>
<body style="background-color:#f0f2f2;">
  <c:if test="${empty userobj }">
   
   <c:redirect url="../login.jsp"/>
   </c:if>
	<%@include file="navbar.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
					<h4 class="text-center">Add Books</h4>
				
					<c:if test="${not empty succMsg }">
						<p class="text-center text-success">${succMsg}</p>
						<c:remove var="succMsg" scope="session"/>
						
						</c:if>
					
					<c:if test="${not empty failedMsg }">
						<p class="text-center text-danger">${failedMsg}</p>
						<c:remove var="failedMsg" scope="session"/>
						
						</c:if>
					
						<form action="../add_books" method="post" enctype="multipart/form-data">
							<div class="form-group">
								<label for="exampleInputEmail1">Book Name*</label> <input name="bname"
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" >
								
							</div>
							<div class="form-group">
								<label for="exampleInputEmail">Author Name*</label> <input name="author"
									type="text" class="form-control" id="exampleInputPassword1"
									aria-describedby="emailHelp">
							</div>
							
							
							<div class="form-group">
								<label for="exampleInputEmail">Price*</label> <input name="price"
									type="number" class="form-control" id="exampleInputPassword1"
									>
							</div>
							<div class="form-group">
								<label for="inputState">Book Categories</label> <select name="btype"
									 class="form-control" id="inputState">
									 <option selected>--select--</option>
									 <option value="New">New Book</option></select>
									
							</div>
							<div class="form-group">
								<label for="inputState">Book Status*</label><select name="bstatus"
									 class="form-control" id="inputState">
									 <option value="Active">Active</option>
									 <option value="Inactive">Inactive</option></select>
							</div>
							
							<div class="form-group">
							<p>Select Gender</p>
								<input type="radio" id="male" name="gender">
								<lable for="male">Male</lable>
								<input type="radio" id="male" name="gender">
								<lable for="male">FeMale</lable>
							</div>
							<div class="form-group">
								<label for="inputState">Book Categories</label> <select name="btype"
									 class="form-control" id="inputState">
									 <option selected>--select--</option>
									 <option value="New">New Book</option></select>
									
							</div>
							<div class="form-group">
								<label for="inputState">Book Rating</label> <select name="brating"
									 class="form-control" id="inputState">
									 <option selected>--select--</option>
									 <option value="1">1</option>
									  <option value="2">2</option>
									   <option value="3">3</option>
									    <option value="4">4</option>
									    
									 </select>
									
							</div>
							<div class="form-group">
								<label for="inputState">Book display</label> <select name="bdisplay"
									 class="form-control" id="inputState">
									 <option selected>--select--</option>
									 <option value="YES">Yes</option>
									  <option value="NO">NO</option>
									  
									    
									 </select>
									
							</div>
							<div class="form-group">
								<label for="exampleFormControlFile1">Upload Photo*</label> <input name="bimg"
									type="file" class="form-control" id="exampleFormControlFile1"
									>
							</div>
							
							<button type="submit" class="btn btn-primary">Add</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	 <div style="margin-top:235px;">
       <%@include file="footer.jsp" %>
       </div>
</html>