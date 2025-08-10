<%-- 
    Document   : Admin_Event_view
    Created on : 10 Feb, 2025, 8:52:22 PM
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
        <title>Event </title>
        <link rel="stylesheet" href="bootstrap.css"/>
    </head>
    <body>
       <table class="table">
  <thead class="thead-dark">
    <tr>
        
      <th scope="col">ID</th>
      <th scope="col">EventName</th>
      <th scope="col">Guest Name</th>
     <th scope="col">Duration</th>
      <th scope="col">Time</th>
      <th scope="col">StartDate</th>
      <th scope="col">EndDate</th>
      <th scope="col">Trainer Name</th>
      <th scope="col">Agelimitation</th>
      
      <th scope="col">Upload image</th>
      <th scope="col">Description</th>
      
      <th scope="col">price</th>
      <th scope="col">location</th>      
      <th scope="col">Action</th>
      <th> </th>
    </tr>
  </thead>
  <tbody>
    <%
         Connection cn=null;
        Statement st=null;
         try
        {
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fit_defencehub","root","root");
            st=cn.createStatement();
            String sql="select * from admin_event";
            ResultSet result=st.executeQuery(sql);
            while(result.next())
            {
            %>
            
            <tr>
                <form action="Admin_Event" method="post">
                <td><input type="text" name="AdminEvent_ID" value="<%=result.getString("AdminEvent_ID")%>"/></td>
                <td><input type="fullName" name="txt_fullname" value="<%=result.getString("EventName")%>" class="form-control"/></td>
                <td><input type="EventName" name="txt_EventName" value="<%=result.getString("GuestName")%>"class="form-control"/></td>
                <td><input type="Duration" name="txt_Duration" value="<%=result.getString("Duration")%>" class="form-control"/></td>
                <td><input type="text" name="txt_number" value="<%=result.getString("cTime")%>" class="form-control"/></td>
                <td><input type="date" name="dob" value="<%=result.getString("StartDate")%>" class="form-control"/></td>
                <td><input type="date" name="txtdob" value="<%=result.getString("EndDate")%>" class="form-control"/></td>
                <td><input type="text" name="course" value="<%=result.getString("TrainerID")%>" class="form-control"/></td>
                <td><input type="text" name="txt_age"  value="<%=result.getString("Agelimit")%>" class="form-control"/></td>
                <td><input type="file" name="profile_upload" value="<%=result.getString("img")%>" class="form-control"/></td>
               <td><textarea name="txt_des" class="form-control"><%=result.getString("Description")%></textarea></td>
                
                <td><input type="Float" name="txt_p" value="<%=result.getString("Price")%>" class="form-control"/></td>
                <td><input type="Location" name="txt_Location" value="<%=result.getString("Location")%>" class="form-control"/></td>
                <td>  
                <input type="submit" name="txt_btn" value="Update" class="btn btn-primary"/>
                </td>
                <td>
                    <input type="submit" name="txt_btn" value="Delete" class="btn btn-danger"/>
                </td>
                </form>
            </tr>
            
            <%
            
            
            }
         }
        catch(Exception ex)
        {
             out.println(ex.toString());      
         }
    
    
    %>
  </tbody>
</table>


    </body>
</html>
