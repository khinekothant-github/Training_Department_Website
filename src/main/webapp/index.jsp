<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Landing Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <link rel="stylesheet" href="css/style.css" />
    <style>
        .center-content {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
            height: 100%;
        }
        .center-content > * {
            margin-bottom: 3rem;
        }
    </style>
</head>
<body class="text-bg-dark d-flex align-items-center justify-content-center">
    <!-- nav -->

    <!-- hero section -->
    <section class="container">
  <div class="row align-items-center overflow-hidden flex-wrap-reverse mt-3" >
    <div class="col-12 text-center ">
      <img src="https://www.aihr.com/wp-content/uploads/Learning-development-jobs.jpg" class="img-fluid" alt="" />
    </div>
    
    </div>
   <div class="row align-items-center overflow-hidden flex-wrap-reverse gap-4 p-4 gap-lg-0 p-lg-0" style="min-height: 80vh">
   
    <div class="col-12 text-center animate__animated animate__fadeInLeft">
    <div class="col-12 text-center">
      <h1 class="fs-1 fw-bold mb-3">
        <span class="typed">Training Department</span>
      </h1>
    </div>
      <p class="fs-6" style="text-align: justify; text-justify: inter-word">
      
        Welcome to our solution for the Training Department's monthly courses. Our application simplifies the process of selecting training sessions with a user-friendly form based on the department's course spreadsheet. Users have the flexibility to choose any course that suits their needs, with morning sessions from 9:00 AM to 11:00 AM, afternoon sessions from 12:30 PM to 2:30 PM, and evening sessions from 3:00 PM to 5:00 PM. Once selections are made, the solution generates a summary document and emails it to the user, making it easy to plan and keep track of their chosen sessions.
      </p>
      <div class="text-center">
        <a href="login.jsp" class="btn btn-outline-light rounded-2 w-46 px-3 fs-5" style="background-color: #FFA500;">Register Now!</a>
      </div>
    </div>
  </div>
</section>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.12"></script>
    <script src="index.js"></script>
    <script type="text/javascript">
        /* document.querySelector(".leftSide").addEventListener("animationend",function(){
            new Typed('.typed', {
                strings: ["Training Department"],
                typeSpeed: 30
            });
        }) */
    </script>
</body>

</html>
