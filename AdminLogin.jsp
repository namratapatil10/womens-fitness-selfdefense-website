<%-- 
    Document   : AdminLogin
    Created on : 7 Jan, 2025, 8:22:01 PM
    Author     : VAIBHAV
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="styles.css">
    <style type="text/css">
        /* General Styling */
body {
    background-image: url("images/meditation.jpg");
  background-size: 100% 100%;

   background-repeat: no-repeat;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    font-family: Arial, sans-serif;
    
  }


/* Container */
.login-container {
    margin-left:550px; 
  
}

/* Login Box */
.login-box {
    background: #fff;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    text-align: center;
    padding: 30px;
    width: 350px;
    position: relative;
    overflow: visible;
    margin-top: 50px;
    background-color: #fff;
    opacity: 0.7;
}

/* Avatar */
.avatar {
    position: absolute;
    top: -50px; /* Move the avatar upward */
    left: 50%;
    transform: translateX(-50%);
    z-index: 2;
}

.avatar img {
    width: 150px;
    height: 150px;
    border-radius: 50%;
    border: 5px solid #fff; /* Add a border to blend with the box */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

/* Heading */
h2 {
    margin-top: 90px; /* Add space below the avatar */
    margin-bottom: 20px;
    color: #333;
}

/* Input Fields */
.input-box {
    position: relative;
    margin: 20px 0;
}

.input-box input {
    width: 100%;
    padding: 10px;
    border: none;
    border-bottom: 2px solid #ccc;
    outline: none;
    background: transparent;
}

.input-box label {
    position: absolute;
    left: 0;
    top: 10px;
    color: #888;
    transition: 0.3s;
    pointer-events: none;
}

.input-box input:focus + label,
.input-box input:valid + label {
    top: -10px;
    font-size: 12px;
    color: #6a11cb;
}

/* Terms Checkbox */
.terms {
    text-align: left;
    margin: 10px 0;
    font-size: 12px;
   
    
}

.terms input {
    margin-right: 5px;
}

/* Button */
button {
    width: 100%;
    padding: 10px;
    background: #6a11cb;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
    margin-top: 10px;
}

button:hover {
    background: #2575fc;
}
    </style>
</head>
<body> 
   
    <form action="AdminLogin" method="post">
    <div class="login-container">
        <div class="login-box">
            <div class="avatar">
                <img src="images/logo1.png" alt="Avatar">
            </div>
            <h2>Login</h2>
            <form>
                <div class="input-box">
                   <input type="email" name="txt_email" required/>
                    <label>Email</label>
                </div>
                <div class="input-box">
                    <input type="password" minlength="6" maxlength="6" name="txt_pass" required>
                    <label>Password</label>
                </div>
                
                <div class="terms">
                    <input type="checkbox" id="terms">
                    <label for="terms">I accept the Terms & Conditions</label>
                </div>
                <button type="submit" name="btn_submit" value="Login">Login</button>
                <br>
                <br>
             <a href="Admin_Registration.jsp" class="d-block text-center mt-2">Sign up</a>
        </div>
    </form>
</body> 
</html>
    