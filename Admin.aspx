<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="GoKid.Admin" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GoKid Admin Dashboard</title>
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
        .options {
            display: flex;
            justify-content: center;
            gap: 30px;
            flex-wrap: wrap;
            max-width: 1200px;
            margin: 40px auto;
        }
        .option {
            background-color: #444;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            flex: 0 0 45%;
            max-width: 400px;
            min-height: 250px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            cursor: pointer;
        }
        .option:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.3);
        }
        .option h3 {
            color: #FFD700;
            margin-bottom: 15px;
        }
        .option i {
            font-size: 50px;
            color: #FFD700;
            margin-bottom: 15px;
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
            <i class="fa-solid fa-user-shield"></i> Admin Dashboard
        </div>
        <nav>
            <a href="Home.aspx"><i class="fa-solid fa-house"></i> Home</a>
            <a href="#"><i class="fa-solid fa-sign-out-alt"></i> Logout</a>
        </nav>
    </header>

    <div class="main-body">
        <h1>GoKid Admin Dashboard</h1>

        <div class="options">
            <div class="option" onclick="window.location.href='AdminUser.aspx'">
                <i class="fa-solid fa-users"></i>
                <h3>User Management</h3>
                <p>Manage user accounts, roles, and profiles.</p>
            </div>
            <div class="option">
                <i class="fa-solid fa-route"></i>
                <h3>Booking Management</h3>
                <p>Oversee and manage ride bookings and schedules.</p>
            </div>
            <div class="option">
                <i class="fa-solid fa-dollar-sign"></i>
                <h3>Transactions Management</h3>
                <p>Monitor payments, refunds, and driver earnings.</p>
            </div>
            <div class="option">
                <i class="fa-solid fa-lock"></i>
                <h3>Security</h3>
                <p>Handle security settings, user verifications, and reports.</p>
            </div>
            <div class="option">
                <i class="fa-solid fa-gears"></i>
                <h3>System Settings</h3>
                <p>Configure platform-wide settings and preferences.</p>
            </div>
        </div>
    </div>

    <footer>
        <p>&copy; 2024 GoKid. All rights reserved.</p>
    </footer>
</body>
</html>
