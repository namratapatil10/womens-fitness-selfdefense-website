<%-- 
    Document   : myevent_booking_view
    Created on : 11 Mar, 2025, 3:41:52 PM
    Author     : VAIBHAV
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Course Booking table</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
         <style>
        .container {
            margin: 30px auto;
            max-width: 1500px;
            background-color: white;
           
        }
        .table-title {
            text-align: center;
            margin-bottom: 20px;
        }
         body{
                background-color:#9f5f91;
            }
    </style>
    </head>
    <body>
         <div class="container">
        <h2 class="table-title">Event Booking table</h2>
        
        <table class="table table-bordered table-striped">
            <thead class="table-dark">
                <tr> 
                    <th scope="col">E_ID</th>
                    <th scope="col">EventName</th>
                    <th scope="col">Price</th>
                    <th scope="col">StartDate</th>
                    <th scope="col">EndDate</th>
                    <th scope="col">TrainerID</th>
                    
                </tr>
            </thead>
            <tbody>
                <!-- Static Example Rows -->
                <tr>
                    
                    <%
         Connection cn=null;
        Statement st=null;
         try
        {
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fit_defencehub","root","root");
            st=cn.createStatement();
            String sql="select * from Event_Booking inner join admin_event on Event_Booking.event_id=admin_event.AdminEvent_ID ";
            ResultSet result=st.executeQuery(sql);
            while(result.next())
            {
            %>
            
            <tr>
                <td><%=result.getString("AdminEvent_ID")%></td>
                    <td><%=result.getString("EventName")%></td>
                    <td><%=result.getString("Price")%></td>
                    <td><%=result.getString("StartDate")%></td>
                    <td><%=result.getString("EndDate")%></td>
                    <td><%=result.getString("TrainerID")%></td>
            </tr>
            
            
            
            <%
            
            
            }
         }
        catch(Exception ex)
        {
             out.println(ex.toString());      
         }
    
    
    %>
                    
                    
                </tr>
                
            </tbody>
        </table>
    </body>
</html>


       