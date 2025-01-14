<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="GoKid.AdminLogin" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login - GoKid</title>
    <link rel="stylesheet" href="styles.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #1a1a1a;
            color: #e0e0e0;
        }
        header {
            background: linear-gradient(90deg, #333, #555);
            color: white;
            padding: 15px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        header .logo {
            font-size: 24px;
            font-weight: bold;
            display: flex;
            align-items: center;
            gap: 10px;
        }
        nav {
            display: flex;
            gap: 15px;
        }
        nav a {
            color: white;
            text-decoration: none;
            font-size: 16px;
            display: flex;
            align-items: center;
            gap: 5px;
        }
        nav a:hover {
            text-decoration: underline;
        }
        .main-body {
            padding: 20px;
            text-align: center;
        }
        .login-form {
            max-width: 400px;
            margin: 50px auto;
            background-color: #444;
            padding: 30px;
            border-radius: 10px;
        }
        .login-form h2 {
            color: #FFD700;
            margin-bottom: 20px;
        }
        .login-form input {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            background-color: #333;
            color: #e0e0e0;
            border: 1px solid #555;
            border-radius: 5px;
            font-size: 16px;
        }
        .login-form input[type="submit"] {
            background-color: #FFD700;
            color: #333;
            cursor: pointer;
        }
        .login-form input[type="submit"]:hover {
            background-color: #FFC107;
        }
        .login-form .error-message {
            color: #ff5555;
            font-size: 14px;
            margin-bottom: 10px;
        }
        footer {
            background-color: #333;
            padding: 10px;
            text-align: center;
            border-top: 2px solid #555;
            color: white;
        }
    </style>
</head>
<body>
    <header>
        <div class="logo">
            <i class="fa-solid fa-car"></i> GoKid
        </div>
        <nav>
            <a href="Home.aspx"><i class="fa-solid fa-house"></i> Home</a>
            <a href="#"><i class="fa-solid fa-gear"></i> Settings</a>
            <a href="Login.aspx"><i class="fa-solid fa-sign-in"></i> Login</a>
            <a href="AdminLogin.aspx"><i class="fa-solid fa-user-shield"></i> Admin Login</a>
        </nav>
    </header>

    <div class="main-body">
        <h1>Admin Login</h1>
        <p>Welcome! Please enter your credentials to access to the GoKid admin panel.</p>

        <div class="login-form">
            <h2>Login to Admin Panel</h2>
            <form id="adminLoginForm" runat="server">
                <div id="errorMessage" class="error-message" style="display: none;"></div>

                <input type="text" name="username" id="username" placeholder="Username" required />
                <input type="password" name="password" id="password" placeholder="Password" required />
                <input type="submit" value="Login" id="submitButton" />
            </form>
        </div>
    </div>

    <footer>
        <p>&copy; 2024 GoKid. All rights reserved.</p>
    </footer>

    <script>
        
        document.getElementById("adminLoginForm").onsubmit = function(event) {
            event.preventDefault(); 

            
            const username = document.getElementById("username").value;
            const password = document.getElementById("password").value;
            const errorMessage = document.getElementById("errorMessage");

          
            if (username === "admin" && password === "admin123") {
                
                window.location.href = "Admin.aspx"; 
            } else {
                
                errorMessage.style.display = "block";
                errorMessage.textContent = "Invalid username or password. Please try again.";
            }
        }
    </script>
</body>
</html>
