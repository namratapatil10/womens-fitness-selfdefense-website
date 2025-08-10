<%-- 
    Document   : user_contact
    Created on : 28 Jan, 2025, 12:40:48 PM
    Author     : VAIBHAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="bootstrap.css"/>
        <style type="text/css">
            
    body {
    background-color: #ADA996;
    font-family: Arial, sans-serif;
}

.container {
    margin-top: 50px;
}

.contact-section {
    background: white;
    padding: 40px;
    border-radius: 10px;
    box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.2);
 
}

h2 {
    text-align: center;
    margin-bottom: 20px;
}

.illustration img {
    width: 100%;
    height:60%;
    margin-top: 20px;
}

.form-control {
    border-radius: 5px;
    border: 1px solid #ccc;
}

.btn-dark {
    background-color: blue;
    border: none;
    
}
</style>
    
</head>
<body>
     <script src="validation.js"></script>
    <div class="container">
        <div class="contact-section">
            <div class="row">
                <div class="col-md-6">
                    <div class="illustration">
                        
                        <img src="images/contact.png" alt="img"/>
                    </div>
                </div>
                <div class="col-md-6">
                    <h2>Keep In Touch</h2>
                    <hr>
                    <form>
                        <div class="mb-3">
                            <label>Full Name</label>
                            <input type="text" class="form-control" onkeypress="javascript:return isString(event)" placeholder="  ">
                        </div>
                        <div class="mb-3">
                            <label>Email</label>
                            <input type="email" class="form-control" placeholder="  ">
                        </div>
                        <div class="mb-3">
                            <label>Contact No</label>
                            <input type="Contact" class="form-control" onkeypress="javascript:return isContactno(event)" maxlength="10" placeholder="  ">
                        </div>
                        <div class="mb-3">
                            <label>Message</label>
                            <textarea class="form-control" rows="4" onkeypress="javascript:return isString(event)" placeholder="  "></textarea>
                        </div>
                        <div class="button">
                                <center>
                                   <button type="button" style="margin-left:20px ; gap:40px" class="btn btn-primary btn-lg">Send your message</button>
                                     <button type="button" class="btn btn-primary btn-lg">Reset</button>
                                  
                 
                                </center>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

</body>
</html>