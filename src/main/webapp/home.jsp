<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="com.trainingprogram.model.RegisteredAccount"%>
<%@page import="com.trainingprogram.model.New"%>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Home</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
<link rel="stylesheet" href="css/style.css" />
<style>
.card {
	border: none;
}

.card+.card {
	margin-top: 1.5rem;
}

.card-body {
	display: flex;
	flex-direction: column;
	justify-content: center;
}
</style>
</head>
<body class="bg-white text-dark">

	<%
	RegisteredAccount ra = (RegisteredAccount) request.getAttribute("AccountInfo");
	%>
	<section class="container mt-2 mb-2">
		<div
			class="row align-items-center overflow-hidden flex-wrap-reverse mt-3">
			<div class="col-12 text-center ">
				<img
					src="https://www.aihr.com/wp-content/uploads/Learning-development-jobs.jpg"
					class="img-fluid" alt="" />
			</div>

		</div>
		<div class="row justify-content-center align-items-center">
			<div class="col-md-8 col-lg-6 text-center mb-5">
				<h1 class="animate__animated animate__fadeInDown">
					Welcome
					<%=ra.getName()%>
				</h1>
				<p class="animate__animated animate__fadeInUp">Here you can
					access and manage your courses.</p>
			</div>
		</div>
		<div class="row justify-content-center cards">
			<div class="col-md-6 col-lg-4 mb-4">
				<div class="card">
					<div class="card-body">
						<h2 class="card-title mb-3 text-center">To View Your
							Registered Courses</h2>
						<a
							href="<%=request.getContextPath()%>/enrolledCourse?email=<%=ra.getEmail()%>"
							class="btn mx-auto mt-2" style="background-color: #FFA500;">
							View Courses </a>
					</div>
				</div>
			</div>
			<div class="col-md-6 col-lg-4 mb-4"></div>
			<div class="col-md-6 col-lg-4 mb-4">
				<div class="card">
					<div class="card-body">
						<h2 class="card-title mb-3 text-center">To Register New
							Courses</h2>
						<%
						New a = new New();
						String b = "/new?name=" + ra.getName() + "&email=" + ra.getEmail();
						a.setA(b);
						application.setAttribute("newInstance", a);
						%>

						<a
							href="<%=request.getContextPath()%>/new?name=<%=ra.getName()%>&email=<%=ra.getEmail()%>"
							class="btn mx-auto mt-2" style="background-color: #FFA500;">
							Register New Course </a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
	<script src="index.js"></script>
</body>
</html>
