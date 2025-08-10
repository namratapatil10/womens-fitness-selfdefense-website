<%-- 
    Document   : Admin_view_CourseCreation
    Created on : 10 Feb, 2025, 8:16:49 PM
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
        <title>JSP Page</title>
        <link rel="stylesheet" href="bootstrap.css"/>
    </head>
    <body>
       <table class="table">
  <thead class="thead-dark">
    <tr>
        
      <th scope="col">ID</th>
      <th scope="col">Course Name</th>
      <th scope="col">Location</th>
      <th scope="col">Price</th>
       <th scope="col">Duration</th>
        <th scope="col">StartDate</th>
        <th scope="col">EndDate</th>
        <th scope="col">TrainerID</th>
        <th scope="col">Agelimit</th>
        <th scope="col">Upload image</th>
         <th scope="col">Description</th> 
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
            String sql="select * from admin_coursecreation";
            ResultSet result=st.executeQuery(sql);
            while(result.next())
            {
            %>
            
            <tr>
                <form action="Admin_CourseCreation" method="post">
                <td><input type="Courseid" class="form-control" name="AdminCourseCreat_ID" value="<%=result.getString("AdminCourseCreat_ID")%>"/> </td>
                <td><input type="CourseName" name="txt_Coursename" value="<%=result.getString("Coursename")%>"  class="form-control"/></td>
                <td><input type="Location" name="txt_Location" value="<%=result.getString("location")%>" class="form-control"/></td>
                <td><input type="text" name="txt_p" value="<%=result.getString("Price")%>" class="form-control"/></td>
                <td><input type="Duration" name="txt_Duration" value="<%=result.getString("Duration")%>" class="form-control" /></td>
                <td><input type="date" name="dob" value="<%=result.getString("StartDate")%>" class="form-control" /></td>
                 <td><input type="date" name="txtdob" value="<%=result.getString("EndDate")%>" class="form-control"/></td>
                <td><input type="text" name="course" value="<%=result.getString("TrainerID")%>" class="form-control"/></td>
                <td><input type="text" name="txt_age"  value="<%=result.getString("Agelimit")%>" class="form-control"/></td>
                <td><input type="file" name="profile_upload" value="<%=result.getString("Uploadimage")%>" class="form-control" /></td>
                 <td><textarea name="txt_des" class="form-control"><%=result.getString("Description")%></textarea></td>
                
                <td>
                    <input type="submit" name="txt_Submit" value="Update" class="btn btn-primary"/>
                </td>
                <td>
                    <input type="submit" name="txt_Submit" value="Delete" class="btn btn-danger"/>
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

