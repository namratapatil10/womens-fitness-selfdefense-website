<%-- 
    Document   : Admin_Event
    Created on : 9 Jan, 2025, 8:00:44 PM
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
                
                margin: auto auto auto auto;
                margin-top: 60px;
                padding-left: 35px;
                padding-right: 35px;
                 padding-top: 30px;
                padding-bottom: 30px;
                 background-color:  #e0e0d1;
                opacity: 0.8;
           
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
            }

            .button-container button:hover {
                background: #2575fc;  
            }
            
        </style>
    </head>
    <body>
          <%@include  file="Admin_Header.jsp" %>
        <form action="Admin_Event" method="post">
        <script src="validation.js"></script>
        <div class="jumbotron w-50">
        
              <h2><center>Event & Workshop</center></h2>
              <hr>
              <label>Event Name:</label>
              <input type="fullName" name="txt_fullname" onkeypress="javascript:return isString(event)"  placeholder="Enter Event Name " required class="form-control"/>
              <br> 
             <label>Guest Name:</label>
             <input type="EventName" name="txt_EventName" onkeypress="javascript:return isString(event)"  placeholder="Enter Guest Name" required class="form-control"/>
             <br> 
                  <div class="row">
                 <div class="col sm-6">
                    <lable>Time:</lable>
                    
                    <select  name="txt_number" required class="form-control">
                        <option selected disabled hidden >Select Course Time</option>
                         <option  value="06.00AM-07.00AM">06.00AM-07.00AM</option>
                        <option  value="08.00AM-09.00AM">08.00AM-09.00AM</option> 
                        <option  value="09.00AM-10.00AM">09.00AM-10.00AM</option>    
                         <option  value="10.00AM-11.00AM">10.00AM-11.00AM</option> 
                        <option  value="11.00AM-12.00PM">11.00AM-12.00PM</option>
                        <option  value="11.00AM-12.00PM">11.00AM-01.00PM</option>
                        <option  value="03.00PM-04.00PM">03.00PM-04.00PM</option> 
                        <option  value="04.00PM-05.00PM">04.00PM-05.00PM</option>
                     </select>
                   
                 </div>
                  <br>
                  <div class="col sm-6">
                    <label>Duration:</label>
                     <input type="Duration" name="txt_Duration" onkeypress="javascript:return isAlphanumric(event)"  placeholder="Enter Duration in days " required class="form-control"/>
                  </div>
             
              </div>
             <br>
              <script>
        // Function to calculate the End Date based on the duration in days
        function calculateEndDate() {
            // Get the values for start date and duration
            const startDate = document.querySelector('input[name="dob"]').value;
            const duration = document.querySelector('input[name="txt_Duration"]').value;

            if (startDate && duration) {
                // Parse start date and duration
                const start = new Date(startDate);
                const durationDays = parseInt(duration);

                // Check if duration is a valid number
                if (!isNaN(durationDays)) {
                    // Calculate end date by adding the duration (in days) to the start date
                    start.setDate(start.getDate() + durationDays);

                    // Set the end date in the input field (formatted as yyyy-mm-dd)
                    const endDate = start.toISOString().split('T')[0];
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
                    <input type="date" name="dob" onchange="calculateEndDate()" required class="form-control"/>
                    
                 </div>
                 <div class="col sm-6">
                    <lable>EndDate:</lable>
                    <input type="date" name="txtdob" required class="form-control"/>
                    
                 </div>
             </div> 
              <br>
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
                         <option  value="18-50 year">18-50 year</option> 
                         <option  value="18-70 year">18-70 year</option> 
                        <option  value="18-80year">18-80year</option> 
                        <option  value="15-90+year">15-90+year</option> 
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
                  <br>
                 <div class="col sm-6">
                   <label>Description:</label>
                   <textarea class="form-control" name="txt_des" onkeypress="javascript:return isAlphanumric(event)" placeholder="Enter Description " rows="3" cols="10"></textarea> 
                
                 </div>
             </div>
                 <div class="row">
                 <div class="col sm-6">
                     <label>Price:</lable> 
                      <input type="Float" name="txt_p" onkeypress="javascript:return isAlphanumric(event)"  style="width:125%;" placeholder="Enter Course Price " required class="form-control"/> 
                 </div>
                 <div class="col sm-6">
                     <label>Location:</label>
                  <input type="Location" name="txt_Location" onkeypress="javascript:return isAlphanumric(event)"  placeholder="Enter Course Location " required class="form-control"/>
                 
                 </div>
            </div>   
                   <br>
             <div class="button-container">
                 <button type="submit" name="txt_btn" value="Submit">Submit</button>
                 <button type="reset" name="txt_btn" value="Submit">Clear</button>
             </div> 
        </div>
            
        </div> 
    </form>
    </body>
</html>
