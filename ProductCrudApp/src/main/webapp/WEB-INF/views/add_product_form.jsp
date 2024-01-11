<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp"%>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center mb-3">Fill the Product details</h1>

				<form action="handle-product" method="post">
					<div class="form-group">
						<label for="name"> Product Name</label> <input type="text"
							class="form-control" id="name" name="name"
							placeholder="Enter product name here">
					</div>
					<div class="form-group">
						<label for="description"> Product Description</label>
						<div>
							<textarea rows="5" name="description"
								placeholder="Enter product description here" cols="50"></textarea>
						</div>
					</div>
					<div class="form-group">
						<label for="description"> Product Price</label> <input type="text"
							class="form-control" id="name" name="price"
							placeholder="Enter product price here">
					</div>
					<div class="container text-center">
						<a href="${pageContext.request.contextPath }/"
							class="btn btn-outline-danger">back</a>
						<button type="submit" class="btn btn-primary">Add</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>