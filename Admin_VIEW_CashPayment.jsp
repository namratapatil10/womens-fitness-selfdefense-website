<%-- 
    Document   : Admin_VIEW_CashPayment
    Created on : 15 Mar, 2025, 8:33:35 PM
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
    <title>Admin Cash Payment</title>
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
                     background-color:#ADA996;
                 font-family: Arial, sans-serif;
            }
    </style>
</head>
<body>
     <%@include  file="Admin_Header.jsp" %>
    <div class="container">
        <h2 class="table-title">Cash Payment</h2>
         <table class="table table-bordered table-striped">
            <thead class="table-dark">
                <tr> 
                    <th scope="col">ID</th>
                  
                    <th scope="col">Full Name</th>
                    <th scope="col">Amount</th>
                    <th scope="col">Payment Date</th>
                    <th scope="col">Received Payment</th>
                    <th scope="col">pending Payment</th>
                    <th scope="col">Payment status</th>
                    
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
            String sql="select * from  User_Payment";
            ResultSet result=st.executeQuery(sql);
            while(result.next())
            {
            %>
            
            <tr>
            <form action="User_feedback" method="post">
                 <td><%=result.getString("UserPayment_ID")%></td>
              
                <td><%=result.getString("FullN")%></td>
                    <td><%=result.getString("Amou")%></td>
                    <td><%=result.getString("PaymentD")%></td>
                    <td><%=result.getString("ReceivedP")%></td>
                    <td><%=result.getString("pendingP")%></td>
                    <td><%=result.getString("Payments")%></td>
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


