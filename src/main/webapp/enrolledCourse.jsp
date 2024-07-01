<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.trainingprogram.model.RegisteredAccount"%>
<!DOCTYPE html>
<%@page import="com.trainingprogram.model.CourseRegister"%>
<%@page import="com.trainingprogram.model.New"%>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Enrolled Courses</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css
    " />
</head>
<%
RegisteredAccount ra = (RegisteredAccount) request.getAttribute("AccountInfo");
%>
<body class="text-bg-dark">

	<div class="container animate__animated animate__fadeIn animate__slow">
		<div class="row align-items-center" style="min-height: 80vh">
			<div class="col">
				<div class="text-center d-flex flex-column gap-5">
					<h1 class="display-5 fw-bold text-success">Registered Courses
					</h1>

					<div class="rounded p-3 overflow-hidden">
						<table class="table table-light table-hover">
							<thead>
								<th>Course Name</th>
								<th>Time</th>
							</thead>
							<%
							List<CourseRegister> courseRegister = (List<CourseRegister>) request.getAttribute("registeredCourses");
							for (CourseRegister i : courseRegister) {
							%>
							<tr>
								<td><%=i.getCourseName()%></td>
								<td><%=i.getTime()%></td>
							</tr>
							<%
							}
							%>
						</table>
					</div>

					<div class="d-flex gap-3 justify-content-center mb-5">
						<button class="btn btn-outline-light rounded-pill p-3"
						
							style="background-color: #FFA500; margin-right: 10rem" onclick="history.go(-1)">Go
							Back To Home Page</button>
							<%
New a = (New) application.getAttribute("newInstance");
							String s="";
if (a != null) {
    // use the instance of New
    s=a.getA();
    System.out.print(s);
    
}
%>
							
						<a href="<%=request.getContextPath()+s%>" class="btn btn-outline-light rounded-pill p-3" style="background-color: #FFA500; text-decoration: none; margin-right:0; margin-left:0;">Register New Course</a>


					</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js
    "></script>
	<script src="index.js"></script>
	<script type="text/javascript">
		/* const backBtn = document.querySelector("button");
		btn.addEventListener("click",function(){
		history.back(1);
		}) */
	</script>
</body>
</html>
