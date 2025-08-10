<%-- 
    Document   : UserEvent
    Created on : 4 Jan, 2025, 6:41:26 PM
    Author     : VAIBHAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Event & Workshop Page</title>
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
            }
            body{
                 background-color:#9f5f91;
               
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
         <form action="UserEvent" method="post">
        <script src="validation.js"></script>
        <div class="jumbotron w-50">
        
              <h2><center>Event & Workshop Registration</center></h2>
              <hr>
              <label>FullName</label>
              <input type="fullName" name="txt_fullname"onkeypress="javascript:return isString(event)"  placeholder="Enter FullName" required class="form-control"/>
              <br> 
             <label>Event Name</label>
             <input type="EventName" name="txt_EventName"onkeypress="javascript:return isString(event)"  placeholder="Enter Event name" required class="form-control"/>
             <br> 
             <lable>Contactno</lable>
             <input type="number" name="txt_number" onkeypress="javascript:return isContactno(event)" placeholder="Enter Contactno "required class="form-control"/> 
             <br>
            <label>Email</label>
            <input type="email" name="txt_email" placeholder="Enter Email" required class="form-control"/>
            <br>
             
            <div class="button-container">
                <button type="submit" value="Submit" name="btn_submit">Submit</button>           
             </div> 
        </div>
         </form>
    </body>
</html>
