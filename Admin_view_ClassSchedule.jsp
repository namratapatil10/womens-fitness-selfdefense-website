<%-- 
    Document   : Admin_view_ClassSchedule
    Created on : 10 Feb, 2025, 7:41:22 PM
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
        <title>list Page</title>
        <link rel="stylesheet" href="bootstrap.css"/>
    </head>
    <body>
       <table class="table">
  <thead class="thead-dark">
    <tr>
        
      <th scope="col">ID</th>
      <th scope="col">Course Name</th>
      <th scope="col">TrainerID</th>
      <th scope="col">Duration</th>
      <th scope="col">Days of Week</th>
      <th scope="col">Time</th>
    
      <th scope="col">StartDate</th>
        <th scope="col">EndDate</th>
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
            String sql="select * from admin_classschedule";
            ResultSet result=st.executeQuery(sql);
            while(result.next())
            {
            %>
            
            <tr>
                <form action="Admin_ClassSchedule" method="post">
                <td><input type="text" name="ClassSched_ID"  value="<%=result.getString("ClassSched_ID")%>" class="form-control"/></td>
                <td><input type="CourseName" name="txt_Coursename" value="<%=result.getString("Coursename")%>"  class="form-control"/></td>
                <td><input type="text" name="course" value="<%=result.getString("TrainerID")%>" class="form-control"/></td>
            
                <td><input type="Duration" name="txt_Duration"   value="<%=result.getString("Duration")%>" class="form-control"/></td>
                <td><input type="Days" name="txt_Days" value="<%=result.getString("DaysofWeek")%>" class="form-control"/></td>
                <td><input type="text" name="txt_number" value="<%=result.getString("cTime")%>" class="form-control"/></td>
               
                <td><input type="text" name="dob" value="<%=result.getString("StartDate")%>" class="form-control"/></td>
                <td><input type="text" name="txtdob" value="<%=result.getString("EndDate")%>" class="form-control"/></td>
                <td>
                    <input type="submit" name="txt_sub" value="Update" class="btn btn-primary"/>
                </td>
                <td>
                    <input type="submit" name="txt_sub" value="Delete" class="btn btn-danger"/>
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
