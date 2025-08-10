<%-- 
    Document   : Admin_ClassSchedule
    Created on : 8 Jan, 2025, 10:46:06 AM
    Author     : VAIBHAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Class Schedule</title>
        <link rel="stylesheet" href="bootstrap.css"/>
        <style type="text/css">
            .jumbotron{
              background-color:  #e0e0d1;
                opacity: 0.8;
                margin: auto auto auto auto;
                margin-top: 40px;
                padding-left: 30px;
                padding-right: 30px;
                padding-top: 30px;
                padding-bottom: 30px;
                margin-left: 30px;
                
            }
            body{
               font-family: Arial, sans-serif;  
      
                  background-image: url("images/cs1.jpg");
                  background-size: 100% 100%;
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
          <%@include  file="Admin_Header.jsp" %>
        <form action="Admin_ClassSchedule" method="post">
        <script src="validation.js"></script>
        <div class="jumbotron w-50">
            
              <h2><center>Course Schedule</center></h2>
              <hr/>
                   <label>Course Name:</label>
                   <input type="CourseName" name="txt_Coursename" onkeypress="javascript:return isString(event)" placeholder="Enter Course Name " required class="form-control"/>
                   <br/> 
                   <label>Trainer Name:</label>
                   <select name="course" required class="form-control">
                           <option selected disabled hidden >Select Trainer</option>
                        <option  value="Mrs.Shruti Patil">Mrs.Shruti Patil</option>
                        <option  value="Miss.riya rane">Miss.Riya rane</option> 
                        <option  value="Mrs.sanika mane">Mrs.Sanika mane</option>  
                        <option  value="Mrs.Madhura kasale">Mrs.Madhura kasale</option> 
                        <option  value="Mrs.Priyaka patil">Mrs.Priyaka patil</option> 
                     </select>
                   <br>
                   <lable>Time:</lable>
                    <select  name="txt_number" required class="form-control">
                        <option selected disabled hidden >Select Course Time</option>
                         <option  value="06.00AM-07.00AM">06.00AM-07.00AM</option>
                          <option  value="06.00AM-07.00AM">07.00AM-08.00AM</option>
                        <option  value="08.00AM-09.00AM">08.00AM-09.00AM</option> 
                        <option  value="09.00AM-10.00AM">09.00AM-10.00AM</option>    
                         <option  value="10.00AM-11.00AM">10.00AM-11.00AM</option> 
                        <option  value="11.00AM-12.00PM">11.00AM-12.00PM</option>
                        <option  value="03.00PM-04.00PM">03.00PM-04.00PM</option> 
                        <option  value="04.00PM-05.00PM">04.00PM-05.00PM</option>
                     </select>
                   <br>
                    <div class="row">
                     <div class="col sm-6">
                    <label>Duration:</label>
                     <input type="Duration" name="txt_Duration" onkeypress="javascript:return isAlphanumric(event)"  placeholder="Enter Course Duration " required class="form-control"/>
                     <br>
                   
                    
                     </div>
                        <div class="col sm-6">
                            <label>Days of Week:</label>
                        <input type="Days" name="txt_Days" onkeypress="javascript:return isString(event)" placeholder="Enter Days " required class="form-control"/>
                             </br>
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
                    <div class="button-container">
                        <button type="submit" name="txt_sub" value="Submit">Submit</button>
                    <button type="reset" name="txt_sub"  value="Submit">Clear</button>
             </div> 
            </form>
      </body>
</html>
