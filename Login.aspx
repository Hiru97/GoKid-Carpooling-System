<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GoKid.Login" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GoKid Login</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #1a1a1a;
            color: #e0e0e0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .login-container {
            background-color: #333;
            padding: 50px;
            border-radius: 15px;
            box-shadow: 0 6px 10px rgba(0, 0, 0, 0.3);
            width: 450px;
            text-align: center;
        }
        .login-container h1 {
            margin-bottom: 30px;
            color: #FFD700;
            font-size: 28px;
        }
        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: calc(100% - 32px);
            padding: 15px;
            margin: 15px 0;
            border: none;
            border-radius: 5px;
            background-color: #444;
            color: white;
            font-size: 18px;
        }
        .login-container .button-group {
            display: flex;
            justify-content: space-between;
            gap: 10px;
        }
        .login-container button {
            width: calc(50% - 5px);
            padding: 15px;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s;
            text-align: center;
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
        }
        .login-btn {
            background-color: #FFD700;
            color: #333;
        }
        .login-btn:hover {
            background-color: #e6c300;
        }
        .secondary-btn {
            background-color: #555;
        }
        .secondary-btn:hover {
            background-color: #777;
        }
        .forgot-password {
            text-decoration: none;
            color: #FFD700;
            margin-top: 10px;
            display: inline-block;
        }
        .forgot-password:hover {
            text-decoration: underline;
        }
        .error-message {
            color: red;
            font-size: 14px;
            margin-top: 10px;
        }
        .registration-buttons {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }
        .registration-buttons a {
            background-color: #555;
            text-decoration: none;
            padding: 15px;
            border-radius: 5px;
            color: white;
            flex: 1;
            text-align: center;
            margin: 0 5px;
            transition: background-color 0.3s;
            font-size: 16px;
        }
        .registration-buttons a:hover {
            background-color: #777;
        }
    </style>
    <script>
        function handleLogin(event) {
            event.preventDefault();
            const username = document.querySelector('input[name="username"]').value;
            const password = document.querySelector('input[name="password"]').value;
            const errorMessage = document.getElementById('error-message');
            
            if (username === 'admin' && password === 'admin') {
                window.location.href = 'Home.aspx';
            } else {
                errorMessage.textContent = 'Invalid username or password. Please try again.';
            }
        }

        function handleExit() {
            window.close();
        }

        function redirectToCustomerRegistration() {
            window.location.href = 'CustomerReg.aspx';
        }

        function redirectToDriverRegistration() {
            window.location.href = 'DriverReg.aspx';
        }
    </script>
</head>
<body>
    <div class="login-container">
        <h1>Login to GoKid</h1>
        <form onsubmit="handleLogin(event)">
            <input type="text" name="username" placeholder="Username" required>
            <input type="password" name="password" placeholder="Password" required>
            <div class="button-group">
                <button type="submit" class="login-btn"><i class="fa-solid fa-sign-in"></i> Login</button>
                <button type="button" class="secondary-btn" onclick="handleExit()"><i class="fa-solid fa-times"></i> Exit</button>
            </div>
        </form>
        <div id="error-message" class="error-message"></div>
        <a href="#" class="forgot-password"><i class="fa-solid fa-key"></i> Forgot Password</a>
        <div class="registration-buttons">
            <a href="#" class="secondary-btn" onclick="redirectToCustomerRegistration()"><i class="fa-solid fa-user"></i> Customer Registration</a>
            <a href="#" class="secondary-btn" onclick="redirectToDriverRegistration()"><i class="fa-solid fa-id-badge"></i> Driver Registration</a>
        </div>
    </div>
</body>
</html>
