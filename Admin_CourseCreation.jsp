<%-- 
    Document   : Admin_CourseCreation
    Created on : 7 Jan, 2025, 8:31:09 PM
    Author     : VAIBHAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Course Creation</title>
        <link rel="stylesheet" href="bootstrap.css"/>
        <style type="text/css">
            .jumbotron{
                background-color: white;
                margin: auto auto auto auto;
                margin-top: 40px;
                padding-left: 30px;
                padding-right: 30px;
                padding-top: 30px;
                padding-bottom: 30px;
                background-color:  #e0e0d1;
                opacity: 0.9;
            }
            body{
                 background-image: url("images/backcouse.jpg");
                  background-size: 100% 100%;
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
                margin-bottom: 5px;
            }

            .button-container button:hover {
                background: #2575fc;  
            }
        </style>
    </head>
    <body>
          <%@include  file="Admin_Header.jsp" %>
      <form action="Admin_CourseCreation" method="post">
        <script src="validation.js"></script>
        <div class="jumbotron w-50">
           
              <h2><center>Course</center></h2>
              <hr>
               <div class="row">
                 <div class="col sm-6">
                   <label>Course Name:</label>
                   <input type="CourseName" name="txt_Coursename" onkeypress="javascript:return isString(event)" placeholder="Enter Course Name " required class="form-control"/>
                   <br>
                 </div>
                  <div class="col sm-6"> 
                  <label>Location:</label>
                  <input type="Location" name="txt_Location" onkeypress="javascript:return isAlphanumric(event)"  placeholder="Enter Course Location " required class="form-control"/>
                  <br>
                  </div>
               </div>
            <div class="row">
                 <div class="col sm-6">
                     <label>Price:</lable> 
                     <input type="text" name="txt_p" onkeypress="javascript:return isAlphanumric(event)" placeholder="Enter Course Price " style="width:140%;" required class="form-control"/> 
                      <br>
                 </div>
                 <div class="col sm-6">
                     <label>Duration:</label>
                     <input type="Duration" name="txt_Duration" onkeypress="javascript:return isAlphanumric(event)"  placeholder="Enter Course Duration " required class="form-control"/>
                     <br>
           
                 </div>
            </div>   
                  <script>
        // Function to validate alphanumeric input (optional)
        function isAlphanumeric(event) {
            const charCode = event.charCode;
            // Allowing numbers, letters, and basic punctuation (you can extend this regex if needed)
            return (charCode >= 48 && charCode <= 57) || (charCode >= 65 && charCode <= 90) || (charCode >= 97 && charCode <= 122);
        }

        // Function to calculate the End Date based on months
        function calculateEndDate() {
            // Get the values for start date and duration
            const startDate = document.querySelector('input[name="dob"]').value;
            const duration = document.querySelector('input[name="txt_Duration"]').value;

            if (startDate && duration) {
                // Parse start date and duration
                const start = new Date(startDate);
                const durationMonths = parseInt(duration);

                // Check if duration is a valid number
                if (!isNaN(durationMonths)) {
                    // Calculate end date by adding the duration (in months) to the start date
                    start.setMonth(start.getMonth() + durationMonths);

                    // Set the end date in the input field
                    const endDate = start.toISOString().split('T')[0]; // Format the date as yyyy-mm-dd
                    document.querySelector('input[name="txtdob"]').value = endDate;
                } else {
                    alert('Please enter a valid duration.');
                }
            } else {
                alert('Please fill both Start Date and Duration.');
            }
        }
    </script>
              <div class="row">
                 <div class="col sm-6">
                    <lable>StartDate:</lable>
                    <input type="date" name="dob" onchange="calculateEndDate()"  required class="form-control"/>
                    <br>
                 </div>
                 <div class="col sm-6">
                    <lable>EndDate:</lable>
                    <input type="date" name="txtdob" required class="form-control"/>
                    <br>
                 </div>
             </div>               
              
              <div class="row">
                 <div class="col sm-6">
                    <label>Trainer Name:</label>
                     <select name="course" required class="form-control">
                        <option selected disabled hidden >Select Trainer</option>
                        <option  value="Mrs.Shruti Patil">Mrs.Shruti Patil</option>
                        <option  value="Miss.riya rane">Miss.Riya rane</option> 
                        <option  value="Mrs.sanika mane">Mrs.Sanika mane</option>  
                        <option  value="Mrs.Madhura kasale">Mrs.Madhura kasale</option> 
                        <option  value="Mrs.Priyaka patil">Mrs.Priyaka patil</option> 
                     </select>
                    
                 </div>
                 <div class="col sm-6">
                    <lable>Agelimit:</lable>
                    <select  name="txt_age" required class="form-control">
                        <option selected disabled hidden >Select Trainer</option>
                        <option  value="5-7 year">5-7 year</option>
                        <option  value="8-11 year">8-11 year</option> 
                        <option  value="12-14 year">12-14 year</option>  
                        <option  value="15-18 year">15-18 year</option> 
                        <option  value="19-25 year">19-25 year</option> 
                         <option  value="26-35 year">26-35 year</option> 
                        <option  value="36-50 year">36-50 year</option> 
                         <option  value="15-50 year">15-50 year</option> 
                          <option  value="18-50 year">18-60 year</option> 
                         <option  value="18-70 year">18-70 year</option> 
                        <option  value="18-80year">18-80year</option> 
                        <option  value="5-90+year">15-90+year</option> 
                         <option  value="80+ year">80+ year</option> 
                     </select>
                   
               </div>
             </div>
              <br>
              <div class="row">
                 <div class="col sm-6">
                   <label>Upload image:</label>
                    <input type="file" name="profile_upload" required class="form-control"/> 
                 </div>
                 <div class="col sm-6">
                   <label>Description:</label>
                  <textarea class="form-control" name="txt_des"onkeypress="javascript:return isAlphanumric(event)" placeholder="Enter Description " rows="4" cols="10"></textarea> 
               
                 </div>
             </div>
              
             <div class="button-container">             
                 <button type="submit" name="txt_Submit" value="Submit">Submit</button>
                 <button type="reset" name="txt_Submit" value="Submit">Clear</button>
             </div> 
        </div>
            </form> 
    </body>
</html>
