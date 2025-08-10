<%-- 
    Document   : User_profileform
    Created on : 3 Jan, 2025, 12:22:14 PM
    Author     : VAIBHAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile Form</title>
        <link rel="stylesheet" href="bootstrap.css"/>
        <style type="text/css">
            .jumbotron{
                background-color: white;
                margin: auto auto auto auto;
                margin-top:60px;
                margin-bottom: 60px;
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
        <form action="User_profileform" method="post">
        <script src="validation.js"></script>
        <div class="jumbotron w-50">
            
            <h4><center>Create User Profile</center></h4>
            <hr>
            <label>FullName:</label>
            <input type="fullName" name="txt_fullname" onkeypress="javascript:return isString(event)" placeholder="Enter FullName" required class="form-control"/>
            <br>
            <label>UserID:</label>
            <input type="UserID" name="txt_id" placeholder="Enter UserID" required class="form-control"/>
            <br>
            <label>EmailID:</label>
            <input type="email" name="txt_email" placeholder="Enter Email" required class="form-control"/>
            <br>
            <div class="row">
                <div class="col sm-6">
                <lable>Contact No:</lable>
                <input type="number" name="txt_number" onkeypress="javascript:return isContactno(event)" placeholder="Enter Contact No" required class="form-control"/>
            </div>
                <div class="col sm-6">
                <br>
                <label>Gender:</label>
                <input type="radio" name="Gender" value="M"/>Male
                <input type="radio" name="Gender" value="F"/>Female
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col sm-6">
                    <label>Age:</label> 
                    <input type="number" name="txt_Age" onkeypress="javascript:return isNumber(event)"  placeholder="Enter Age"  required class="form-control"/>
                </div>
                <div class="col sm-6">
                    <label>Upload profile Photo:</label>
                    <input type="file" name="profile_upload" required class="form-control"/>
                </div>
            </div>
            <br>
            <div class="button-container">
                <button type="submit" value="Submit" name="btn_submit">Submit</button>
            <button type="reset" value="Submit" name="btn_submit">Clear</button>
             </div> 
            </div>
    </form>
    </body>
</html>
