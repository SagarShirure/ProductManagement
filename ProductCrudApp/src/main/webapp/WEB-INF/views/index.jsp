<html>
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
	crossorigin="anonymous"></script>
<%@page isELIgnored="false"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>

</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-3">Welcome to product app</h1>
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">S.No.</th>
							<th scope="col">Product Name</th>
							<th scope="col">Description</th>
							<th scope="col">Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<%-- <c:forEach items="${products }" var="p">
						<tr>
							<th scope="row">p.id</th>
							<td>p.name</td>
							<td>p.description</td>
							<td class="font-weight-bold">&#8377 p.price</td>
							<td><a href="delete/ ${p.id } }"> <i class="fa-regular fa-trash text-danger"></i></a>
							<a href="update/ ${p.id } }"> <i class="fa-solid fa-pen-nib"></i></a>
							</td>
						</tr>
						</c:forEach> --%>
						<tr>
							<th scope="row">${product[1].id }</th>
							<td>${product[1].name}</td>
							<td>${product[1].description}</td>
							<td class="font-weight-bold">&#8377 ${product[1].price}</td>
							<td><a href="delete/ ${product[1].id }"> <i class="material-icons">delete</i></i></a>
							<a href="update/ ${product[1].id }"> <i class="material-icons">edit</i> </a>
							</td>
						</tr>
					</tbody>
				</table>

			
				${product[1] }
				<div class="container text-center">
					<a href="add-product" class="btn btn-outline-success">Add
						Product</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
