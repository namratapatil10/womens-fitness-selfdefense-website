<%-- 
    Document   : EventRegistration
    Created on : 2 Mar, 2025, 12:30:35 PM
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
        <title>Course Registration</title>
        <link rel="stylesheet" href="bootstrap.css"/>
        <style type="text/css">
            .jumbotron{
                 background-color: white;
                margin:20px 20px 20px 20px;
                margin-top: 30px;
               
                margin-right: 20px;
                
            }
            body{
                 background-color:#9f5f91;
            }
            .card:hover {
    transform: translateY(-15px);
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
}
            /* Button */
        .button-container {
                display: flex;          
                justify-content: center; 
                gap: 10px;              
                margin-top: 20px;       
            }

        .button-container button {
                width: 90%;          
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
            .card-deck{
                margin-top: 50px;
                margin-left: 10px;
                margin-right: 10px;
            }
        </style>
    </head>
    <body> 
        <%@include  file="User_Header.jsp" %>
        <script src="validation.js"></script>
        <div class="jumbotron">
         <div class="row">   
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
            
            <div class="card" style="width: 32.50%;margin: 5px">
                <form action="Usereventinfo.jsp" method="POST"> 
                    <input type="hidden" name="EventID" value="<%=result.getString("AdminEvent_ID")%>"/>
                    <img class="card-img-top" src="images/<%=result.getString("img")%>" width="300px" height="300px"   alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title"><%=result.getString("EventName")%></h5>
                    <p class="card-text"><%=result.getString("Description")%></p>
                    <br>
                      
               <div class="button-container">             
                   <button type="submit" name=txt_sub" class="mt-auto">Apply now</button>
      </div> 
    </div>
                </form>
  </div>
            
            
            
            <%
            
            
            }
         }
        catch(Exception ex)
        {
             out.println(ex.toString());      
         }
    
    
    %>        
 
            
         </div>  
        </div>


    </body> 
</html>
