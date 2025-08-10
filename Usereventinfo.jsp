<%-- 
    Document   : Usereventinfo
    Created on : 29 Jan, 2025, 11:13:58 AM
    Author     : VAIBHAV
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Event Information</title>
    <link rel="stylesheet" href="bootstrap.css">
    <link rel="stylesheet" href="styles.css">
    <style type="text/css">
        /* General Reset */
body, h1, p, div {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Body Styling */
body {
    font-family: 'Arial', sans-serif;
  background-color:#9f5f91;
    
    
}

/* Container */
.container {
    width: 100%;
    max-width: 900px;
    padding: 20px;
    margin-top: 50px;
}

/* Card Design */
.card {
    background-color: #fff;
    border-radius: 15px;
    overflow: hidden;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
    padding: 15px;
}

.card:hover {
    transform: translateY(-10px);
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
}

/* Image Styling */
.card-image {
    width: 100%;
    height: 100%;
    border-radius: 10px;
    
    background-size: cover;
}

/* Card Content */
.card-content {
    display: flex;
    flex-direction: column;
    justify-content: center;
    padding: 10px;
}

.card-content h1 {
    color: #333;
    font-size: 2rem;
    margin-bottom: 10px;
}

.card-content p {
    color: #555;
    font-size: 1rem;
    margin-bottom: 10px;
}

/* Payment Button */
.payment-btn {
    background-color: #8e44ad;
    color: white;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    font-size: 1rem;
    cursor: pointer;
    transition: background-color 0.3s ease;
    margin-top: 10px;
}

.payment-btn:hover {
    background-color: #3498db;
}

/* Responsive Design */
@media (max-width: 768px) {
    .row {
        flex-direction: column;
    }

    .card-content {
        text-align: center;
    }
}
  </style>
</head>
<body>
    <%@include  file="User_Header.jsp" %>
    <%
         Connection cn=null;
        Statement st=null;
         try
        {
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fit_defencehub","root","root");
            st=cn.createStatement();
            String sql="select * from admin_event where AdminEvent_ID='"+request.getParameter("EventID")+"'";
            
            ResultSet result=st.executeQuery(sql);
            if(result.next())
            {
            %>
    <div class="container">
        <div class="card">
            <div class="row">
                <!-- Image Section -->
                <div class="col-sm-6">
                 
                        <img src="images/<%=result.getString("img")%>" alt="Yoga Image"   class="card-image img-fluid">
                   
                </div>
                <!-- Content Section -->
                <div class="col-sm-6">
                    <div class="card-content">
                        <form action="Event_Booking" method="POST">
                            <input type="hidden" name="event_id" value="<%=result.getString("AdminEvent_ID")%>"/>
                            <input type="hidden" name="price" value="<%=result.getString("Price")%>"/>
                        <h1><%=result.getString("EventName")%></h1>
                        <br>
                        <p><strong>Guest Name:</strong><%=result.getString("GuestName")%></p>
                        
                        <p><strong>Description:</strong><%=result.getString("Description")%></p>
                        <p><strong>Price:</strong><%=result.getString("Price")%></p>
                        <p><strong>Duration:</strong><%=result.getString("Duration")%></p>
                        <p><strong>Start Date:</strong><%=result.getString("StartDate")%></p>
                        <p><strong>End Date:</strong><%=result.getString("EndDate")%></p>
                        <p><strong>Age Limit:</strong><%=result.getString("Agelimit")%></p>
                        <p><strong>Time:</strong><%=result.getString("cTime")%></p>
                         
                        <p><strong>Location:</strong></strong><%=result.getString("Location")%></p>
                        <button class="payment-btn"  type="submit" name="btn_book">Payment</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
                        <%
            
            
            }

         }
        catch(Exception ex)
        {
             out.println(ex.toString());      
         }
    
    
    %>   
        
</body>
</html>
