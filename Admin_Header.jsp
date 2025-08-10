<%-- 
    Document   : Admin_Header
    Created on : 21 Jan, 2025, 10:43:52 AM
    Author     : VAIBHAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AdminNavbar Page</title>
        
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a class="navbar-brand" href="#">FitDefence_Hub</a>

  <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item active">
        <a class="nav-link" href="index_1.html">Home <span class="sr-only">(current)</span></a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="Admin_CourseCreation.jsp">Course</a>
      </li>
       <li class="nav-item">
        <a class="nav-link disabled" href="Admin_TrainerProfile.jsp">Trainer Profile</a>
      </li> 
      <li class="nav-item">
        <a class="nav-link disabled" href="Admin_ClassSchedule.jsp">ClassSchedule</a>
      </li>
      
      <li class="nav-item">
          <a class="nav-link disabled" href="Admin_Event.jsp">Event</a>
      </li>
       
      <li class="nav-item">
        <a class="nav-link disabled" href="Admin_feedback.jsp">Feedback</a>
      </li> 
     
      <li class="nav-item">
        <a class="nav-link disabled" href="mycourse_booking_View.jsp">Course booking</a>
      </li> 
      <li class="nav-item">
        <a class="nav-link disabled" href="myevent_booking_view.jsp">Event_Booking</a>
      </li> 
       <li class="nav-item">
        <a class="nav-link disabled" href="Admin_VIEW_CashPayment.jsp">Course Cash</a>
      </li> 
       <li class="nav-item">
        <a class="nav-link disabled" href="Admin_cashEvent.jsp">Event Cash</a>
      </li> 
      
    </ul>
      <form class="form-inline my-2 my-1g-0">
          <a href="index_1.html" class="btn btn-primary">Logout</a>
      </form>
  </div>
</nav>
</body>
</html>
