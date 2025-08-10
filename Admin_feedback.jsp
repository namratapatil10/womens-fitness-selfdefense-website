<%-- 
    Document   : Admin_feedback
    Created on : 27 Jan, 2025, 7:54:19 PM
    Author     : VAIBHAV
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Feedback Page</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .container {
            margin: 30px auto;
            max-width: 900px;
            background-color: white;
        }
        .table-title {
            text-align: center;
            margin-bottom: 20px;
           
        }
        body{
                     background-color:#9f5f91;
                 font-family: Arial, sans-serif;
            }
    </style>
</head>
<body>
     <%@include  file="Admin_Header.jsp" %>
    <div class="container">
        <h2 class="table-title">User Feedback</h2>
         <table class="table table-bordered table-striped">
            <thead class="table-dark">
                <tr> 
                    <th scope="col">ID</th>
                    <th scope="col">Full Name</th>
                    <th scope="col">CourseName</th>
                    <th scope="col">Comments</th>
                   
                    
                </tr>
            </thead>
            <tbody>
                <!-- Static Example Rows -->
           
                            
                    <%
         Connection cn=null;
        Statement st=null;
         try
        {
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fit_defencehub","root","root");
            st=cn.createStatement();
            String sql="select * from User_feedback ";
            ResultSet result=st.executeQuery(sql);
            while(result.next())
            {
            %>
            
            <tr>
            <form action="User_feedback" method="post">
                 <td><%=result.getString("Userfeedback_ID")%></td>
                <td><%=result.getString("UserID")%></td>
                    <td><%=result.getString("CourseName")%></td>
                    <td><%=result.getString("Comments")%></td>
                   
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
    </div>
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

        </body>

</html>

