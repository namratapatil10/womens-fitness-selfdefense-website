<%-- 
    Document   : Adminpayment
    Created on : 23 Jan, 2025, 8:27:32 AM
    Author     : VAIBHAV
--%>

              
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Management</title>
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
            }
    </style>
</head>
<body>
      <%@include  file="Admin_Header.jsp" %>
    <div class="container">
        <h2 class="table-title">Payment Management</h2>
        <table class="table table-bordered table-striped">
            <thead class="table-dark">
                <tr> 
                    <th scope="col">PID</th>
                    <th scope="col">Full Name</th>
                    <th scope="col">Method</th>
                    <th scope="col">Price</th>
                    <th scope="col">Date</th>
                    <th scope="col">Status</th>
                </tr>
            </thead>
            <tbody>
                <!-- Static Example Rows -->
                <tr>
                    <td>101</td>
                    <td>John Doe</td>
                    <td>Credit Card</td>
                    <td>100</td>
                    <td>2025-01-27</td>
                    <td>Paid</td>
                </tr>
                <tr>
                    <td>102</td>
                    <td>Jane Smith</td>
                    <td>Cash</td>
                    <td>50</td>
                    <td>2025-01-26</td>
                    <td>Pending</td>
                </tr>
                
            </tbody>
        </table>
    </div>
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>