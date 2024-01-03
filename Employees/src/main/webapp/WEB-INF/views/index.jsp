<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Product</title>
<style>
.checked {
	color: yellow;
	font-size: 20px;
}

.unchecked {
	font-size: 20px;
}
</style>
<link rel="icon" type="image/x-icon"
	href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7F_xZLKQQXppPWLN0tu8e9JXBnDuTOq6jTTDrK3iSLA&s">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style>
body {
	color: #566787;
	background: #f5f5f5;
	font-family: 'Varela Round', sans-serif;
	font-size: 13px;
	background-image:
		url("https://images.pexels.com/photos/2680270/pexels-photo-2680270.jpeg?auto=compress&cs=tinysrgb&w=600");
	background-attachment: fixed;
	background-repeat: repeat-x;
	background-position: center;
	background-size: cover;
	height: 100vh;
	padding: 0;
	margin: 0;
}

.table-responsive {
	margin: 30px 0;
}

.table-wrapper {
	background: #fff;
	padding: 20px 25px;
	border-radius: 3px;
	min-width: 1000px;
	box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
}

.table-title {
	padding-bottom: 15px;
	background: #435d7d;
	color: #fff;
	padding: 16px 30px;
	min-width: 100%;
	margin: -20px -25px 10px;
	border-radius: 3px 3px 0 0;
}

.table-title h2 {
	margin: 5px 0 0;
	font-size: 24px;
}

.table-title .btn-group {
	float: right;
}

.table-title .btn {
	color: #fff;
	float: right;
	font-size: 13px;
	border: none;
	min-width: 50px;
	border-radius: 2px;
	border: none;
	outline: none !important;
	margin-left: 10px;
}

.table-title .btn i {
	float: left;
	font-size: 21px;
	margin-right: 5px;
}

.table-title .btn span {
	float: left;
	margin-top: 2px;
}

table.table tr th, table.table tr td {
	border-color: #e9e9e9;
	padding: 12px 15px;
	vertical-align: middle;
}

table.table tr th:first-child {
	width: 60px;
}

table.table tr th:last-child {
	width: 100px;
}

table.table-striped tbody tr:nth-of-type(odd) {
	background-color: #fcfcfc;
}

table.table-striped.table-hover tbody tr:hover {
	background: #f5f5f5;
}

table.table th i {
	font-size: 13px;
	margin: 0 5px;
	cursor: pointer;
}

table.table td:last-child i {
	opacity: 0.9;
	font-size: 22px;
	margin: 0 5px;
}

table.table td a {
	font-weight: bold;
	color: #566787;
	display: inline-block;
	text-decoration: none;
	outline: none !important;
}

table.table td a:hover {
	color: #2196F3;
}

table.table td a.edit {
	color: #FFC107;
}

table.table td a.delete {
	color: #F44336;
}

table.table td i {
	font-size: 19px;
}

table.table .avatar {
	border-radius: 50%;
	vertical-align: middle;
	margin-right: 10px;
}

.pagination {
	float: right;
	margin: 0 0 5px;
}

.pagination li a {
	border: none;
	font-size: 13px;
	min-width: 30px;
	min-height: 30px;
	color: #999;
	margin: 0 2px;
	line-height: 30px;
	border-radius: 2px !important;
	text-align: center;
	padding: 0 6px;
}

.pagination li a:hover {
	color: #666;
}

.pagination li.active a, .pagination li.active a.page-link {
	background: #03A9F4;
}

.pagination li.active a:hover {
	background: #0397d6;
}

.pagination li.disabled i {
	color: #ccc;
}

.pagination li i {
	font-size: 16px;
	padding-top: 6px
}

.hint-text {
	float: left;
	margin-top: 10px;
	font-size: 13px;
}
/* Custom checkbox */
.custom-checkbox {
	position: relative;
}

.custom-checkbox input[type="checkbox"] {
	opacity: 0;
	position: absolute;
	margin: 5px 0 0 3px;
	z-index: 9;
}

.custom-checkbox label:before {
	width: 18px;
	height: 18px;
}

.custom-checkbox label:before {
	content: '';
	margin-right: 10px;
	display: inline-block;
	vertical-align: text-top;
	background: white;
	border: 1px solid #bbb;
	border-radius: 2px;
	box-sizing: border-box;
	z-index: 2;
}

.custom-checkbox input[type="checkbox"]:checked+label:after {
	content: '';
	position: absolute;
	left: 6px;
	top: 3px;
	width: 6px;
	height: 11px;
	border: solid #000;
	border-width: 0 3px 3px 0;
	transform: inherit;
	z-index: 3;
	transform: rotateZ(45deg);
}

.custom-checkbox input[type="checkbox"]:checked+label:before {
	border-color: #03A9F4;
	background: #03A9F4;
}

.custom-checkbox input[type="checkbox"]:checked+label:after {
	border-color: #fff;
}

.custom-checkbox input[type="checkbox"]:disabled+label:before {
	color: #b8b8b8;
	cursor: auto;
	box-shadow: none;
	background: #ddd;
}
/* Modal styles */
.modal .modal-dialog {
	max-width: 400px;
}

.modal .modal-header, .modal .modal-body, .modal .modal-footer {
	padding: 20px 30px;
}

.modal .modal-content {
	border-radius: 3px;
	font-size: 14px;
}

.modal .modal-footer {
	background: #ecf0f1;
	border-radius: 0 0 3px 3px;
}

.modal .modal-title {
	display: inline-block;
}

.modal .form-control {
	border-radius: 2px;
	box-shadow: none;
	border-color: #dddddd;
}

.modal textarea.form-control {
	resize: vertical;
}

.modal .btn {
	border-radius: 2px;
	min-width: 100px;
}

.modal form label {
	font-weight: normal;
}
</style>
</head>
<body>
	<div>
		<nav class="navbar navbar-expand-lg bg-dark navbar-light bg-light">
			<a class="navbar-brand text-light" href="/">Products</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link text-light"
						href="/">Home <span class="sr-only">(current)</span></a></li>
					<li class="nav-item"><a class="nav-link text-light" href="#">Link</a>
					</li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle text-light" href="#"
						id="navbarDropdown" role="button" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> Dropdown </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item text-light" href="#">Action</a> <a
								class="dropdown-item text-light" href="#">Another action</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item text-light" href="#">Something else
								here</a>
						</div></li>
					<li class="nav-item text-light"><a
						class="nav-link disabled text-light" href="#">Disabled</a></li>
				</ul>
				<form action="/search" method="get" class="form-inline my-2 my-lg-0">
					<input class="form-control mr-sm-2" name="query" type="query"
						placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
				</form>
			</div>
		</nav>
		<div>
			<div class="container-xl">
				<div class="table-responsive"
					style="margin-left: auto; margin-right: auto; margin-top: 100px;">
					<div class="table-wrapper">
						<div class="table-title">
							<div class="row">
								<div class="col-sm-6">
									<h2>
										Employee <b>Data</b>
									</h2>
								</div>
								<div class="col-sm-6">
									<a href="#addProduct" class="btn btn-success"
										data-toggle="modal"><i class="material-icons">&#xE147;</i>
										<span>Add Employee</span></a>
								</div>
							</div>
						</div>
						<table class="table table-striped table-hover">
							<thead>
								<tr>
									<th style="text-align: center">Employee No.</th>
									<th style="text-align: center">Employee Name</th>
									<th style="text-align: center">Employee Email</th>
									<th style="text-align: center">Employee Phone</th>
									<th style="text-align: center">Delete</th>
									<th style="text-align: center">Edit</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="emp" items="${employees}">
									<tr>
										<td style="text-align: center">${emp.empId}</td>
										<td style="text-align: center">${emp.empName}</td>
										<td style="text-align: center">${emp.empEmail}</td>
										<td style="text-align: center">${emp.empPhone}</td>
										<td style="text-align: center"><a
											href="/deleteEmployee?empId=${emp.empId}"
											 style="color: red"><i
												class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a></td>
										<td style="text-align: center"><a href="#editEmployee"
											class="edit;" style="color: blue"
											onclick="editEmployee(${emp.empId})" data-toggle="modal"><i
												class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Add Product -->
	<div id="addProduct" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form action="/addEmployee" method="post">
					<div class="modal-header">
						<h4 class="modal-title">Add Employee</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label>Employee Name</label> <input type="text" name="empName"
								class="form-control" required>
						</div>
						<div class="form-group">
							<label>Employee Email</label> <input type="text" name="empEmail"
								class="form-control" required>
						</div>
						<div class="form-group">
							<label>Employee Phone</label> <input type="number" name="empPhone"
								class="form-control" required>
						</div>
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal"
							value="Cancel"> <input type="submit"
							class="btn btn-success" value="Add">
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- Edit Modal HTML -->
	<div id="editEmployee" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form action="/addEmployee" method="post">
					<div class="modal-header">
						<h4 class="modal-title">Edit Employee</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<input type="hidden" name="empId" id="empId" />
						<div class="form-group">
							<label>Employee Name</label> <input type="text" name="empName"
								id="empName" class="form-control" required>
						</div>
						<div class="form-group">
							<label>Employee Email</label> <input type="text" name="empEmail"
								id="empEmail" class="form-control" required>
						</div>
						<div class="form-group">
							<label>Employee Phone</label> <input type="number" name="empPhone"
								id="empPhone" class="form-control" required>
						</div>
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal"
							value="Cancel"> <input type="submit" class="btn btn-info"
							value="Save">
					</div>
				</form>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
	<!-- Include jQuery -->
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
	<!-- Include Bootstrap JS (Popper.js is required for Bootstrap) -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		function editEmployee(empId) {
			$.ajax({
				type : 'GET',
				url : '/updateEmployee?empId=' + empId,
				success : function(response) {
					$('#empId').val(empId);
					$('#empName').val(response.empName);
					$('#empEmail').val(response.empEmail);
					$('#empPhone').val(response.empPhone);
					$('#editEmployee').modal('show');
				},
				error : function(error) {
					console.error('Error fetching employee` data: ', error);
				}
			});
		}
		</script>
</body>
</html>