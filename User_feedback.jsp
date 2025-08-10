<%-- 
    Document   : User_feedback
    Created on : 7 Jan, 2025, 11:39:15 AM
    Author     : VAIBHAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback Page</title>
        <link rel="stylesheet" href="bootstrap.css"/>
        <style type="text/css">
            .jumbotron{
                background-color: white;
                margin: auto auto auto auto;
                margin-top: 60px;
                padding-left: 35px;
                padding-right: 35px;
                padding-top: 30px;
                padding-bottom: 30px;
               width: 40%;
                 background-color:  #e0e0d1;
    opacity: 0.8;
            }
            body{
                 background-image: url("images/Feedback1.png");
                  background-size: 100% 110%;
            font-family: Arial, sans-serif;
               
            }
             /* Button */
        .button-container {
                display: flex;          
                justify-content: center; 
                gap: 10px;              
                margin-top: 20px;      
            }

        .button-container button {
                width: 50%;          
                padding: 10px 20px;   
                background: #6a11cb;   
                color: white;         
                border: none;
                border-radius: 5px;   
                cursor: pointer;
                font-size: 16px;
            }

            .button-container button:hover {
                background: #2575fc;  
            }
            </style>
    </head>
    <body>
        <%@include  file="User_Header.jsp" %>
        <form action="User_feedback" method="post">
        <script src="validation.js"></script>
            <div class="jumbotron"> 
            
            <h2><center>Feedback</center></h2>
            <hr>
            <label>Full Name</label>
             <input type="UserID" name="txt_id" placeholder="Enter Full Name" onkeypress="javascript:return isAlphanumric(event)" required class="form-control"/>
             <br>
             <label>Course Name</label>
             
             <input type="Select" name="Select_course" placeholder="Enter Course Name" onkeypress="javascript:return isAlphanumric(event)" required class="form-control"/>
             <br> 
             <label>Comments</label>
            <textarea class="form-control" name="txt_comments" onkeypress="javascript:return isAlphanumric(event)" placeholder="Enter Comments " rows="2" cols="10"></textarea> 
            <br>
             <div class="button-container">
             <button type="submit1" value="Submit" name="btn_submit">Submit</button>
             </div> 
            </form> 
    </body>
</html>
