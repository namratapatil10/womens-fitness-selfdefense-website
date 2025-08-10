<%-- 
    Document   : User_Payment
    Created on : 7 Jan, 2025, 11:40:18 AM
    Author     : VAIBHAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment Page</title>
        <link rel="stylesheet" href="bootstrap.css"/>
         <script>
        // Function to hide both divs
        function hideDivs() {
            document.getElementById("div1").style.display = "none";
            document.getElementById("div2").style.display = "none";
             document.getElementById("div3").style.display = "none";
        }

        // Function to show the appropriate div based on the button click
        function showDiv(divId) {
            hideDivs();  // Hide both divs before showing the selected one
            document.getElementById(divId).style.display = "block";
        }

        // Ensure div1 is displayed on page load
        window.onload = function() {
            showDiv("div1");
        }
    </script>
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
               background-color: #ADA996; 
               
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
   <form action="User_Payment" method="post">
         <script src="validation.js"></script>
         
            <div class="jumbotron w-50"> 
            
            <h2><center>Payment</center></h2>
            <hr>
            <label>Payment Method</label>
            <button type="button" class="btn btn-outline-primary " onclick="showDiv('div1')" name="btnmethod" value="MPayment">Card</button>
            <button type="button" class="btn btn-outline-success" onclick="showDiv('div2')" name="btnmethod" value="MPayment">UPI</button>            
             <button type="button" class="btn btn-info" onclick="showDiv('div3')" name="btnmethod" value="MPayment">Cash</button>
             <br>
             <br>
           
            </div>
         
         
         <div class="jumbotron w-50" id="div1"> 
            
            <h2><center>Payment Card</center></h2>
            <hr>
            <label>FullName</label>
              <input type="fullName" name="txt_fullname"onkeypress="javascript:return isString(event)"  placeholder="Enter FullName"  class="form-control"/>
              <br> 
            <lable>Card Number</lable>
                <input type="Float" name="txt_number1" onkeypress="javascript:return isFloat(event)"  placeholder="Enter Card Number"  class="form-control"/>
                <br>
            <lable>CVC</lable>
                <input type="Float" name="txt_number2" onkeypress="javascript:return isFloat(event)"  placeholder="Enter Card Number"  class="form-control"/>
                <br>
             <lable>Expiry</lable>
                <input type="Float" name="txt_number3" onkeypress="javascript:return isFloat(event)"  placeholder="MM/YY"  class="form-control"/>
                <br> 
                <label>Amount</label>
                <input type="Float" value="<%=session.getAttribute("price")%>" name="txt_number4" onkeypress="javascript:return isFloat(event)"  placeholder="Enter Course Price " class="form-control"/>
                <br>
             <div class="button-container">
                   <a href="myCourse.jsp" class="btn btn-primary">Payment</a>
             <br>
           
            </div> 
                
             </div>
                
                
             <div class="jumbotron w-50" id="div2"> 
            <h2><center>Payment UPI</center></h2>
            <hr>
            
            <lable>UPI Number</lable>
            <input type="Float" name="txt_number5" onkeypress="javascript:return isFloat(event)"  placeholder="Enter Card Number"  class="form-control"/>
            <br>
            <label>Amount</label>
            <input type="Float" name="txt_number6" value="<%=session.getAttribute("price")%>" onkeypress="javascript:return isFloat(event)"  placeholder="Enter Course Price " class="form-control"/>
            <br>
            <div class="button-container">
                <a href="myCourse.jsp" class="btn btn-primary">Payment</a>
            <br>
            
          </div>
            
          </div>
            
            <div class="jumbotron w-50" id="div3"> 
            <h2><center>Payment Cash</center></h2>
            <hr>
            <form action="User_Payment" method="POST">
            <label>Full Name</label>
              <input type="fullName" name="txt_fullna"onkeypress="javascript:return isString(event)"  placeholder="Enter FullName"  class="form-control"/>
            <br>
            <label>Amount</label>
            <input type="Float" name="txt_num" value="<%=session.getAttribute("price")%>" onkeypress="javascript:return isFloat(event)"  placeholder="Enter Course Price " class="form-control"/>
            <br
            <label>Payment Date</label>
            <input type="date" name="txt_date"   placeholder="Enter Course Price " class="form-control"/>
            <br>
            <label>Received Payment</label>
            <input type="Float" name="txt_Received"  onkeypress="javascript:return isFloat(event)"  placeholder="Enter Received Payment " class="form-control"/>
            <br>
            <label>pending Payment</label>
            <input type="Float" name="txt_pending"  onkeypress="javascript:return isFloat(event)"  placeholder="Enter pending Payment " class="form-control"/>
            <br>
            <label>Payment status</label>
            <select name="txt_status" onkeypress="javascript:return isString(event)" class="form-control" required>
                <option value="">Select Payment Status</option>
                <option value="pending">Pending</option>
                <option value="partially_paid">Partially Paid</option>
                <option value="paid">Paid</option>
                <option value="failed">Failed</option>
                <option value="refunded">Refunded</option>
            </select>
            <br>
            <div class="button-container">
            <input type="submit" name="btn" value="Pay" class="btn btn-primary"/>
            <br>
            </div>
            </form>
          </div>
</form>
    </body>
</html>
