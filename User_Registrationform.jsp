<%-- 
    Document   : User_Registrationform
    Created on : 2 Jan, 2025, 11:06:13 AM
    Author     : VAIBHAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Signup Page</title>
        <link rel="stylesheet" href="bootstrap.css"/>
        <style type="text/css">
            .jumbotron{
                background-color: white;
                margin: auto auto auto auto;
                margin-right: 60px;
                padding-left: 35px;
                padding-right: 35px;
                padding-top: 30px;
                padding-bottom: 30px;
                width: 40%;
                background-color:  #e0e0d1;
                opacity: 0.7;
                margin-top: 40px;
            }
            body{
               background-image: url("images/meditation.jpg");
                  background-size: 100% 130%;
           
                   background-repeat: no-repeat;
                
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
        
        <form  action="User_Registrationform" method="post">
        <script src="validation.js"></script>
            <div class="jumbotron"> 
          
            <h2><center>SignUp</center></h2>
            <hr>
            <label>FullName</label>
            <input type="fullName" name="txt_fullname"onkeypress="javascript:return isString(event)" placeholder="Enter FullName" required class="form-control"/>
            <br>
            
            
                    <label>Email</label>
                    <input type="email" name="txt_email" placeholder="Enter Email" required class="form-control"/>
               
                    <br>
                
                      <label>Password</label>
                      <input type="password" name="txt_pass" placeholder="Enter Password" minlength="6" maxlength="6" required class="form-control"/>
                      <br>
             <div class="button-container">
                 <button type="submit" name="btn_submit" value="SignUp">SignUp</button>            
             </div>       
            </div>
        </form>
    </body>
</html>
