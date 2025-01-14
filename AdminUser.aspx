<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminUser.aspx.cs" Inherits="GoKid.AdminUser" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Management</title>
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
        .table-container {
            display: flex;
            justify-content: space-around;
            gap: 30px;
            margin-top: 40px;
        }
        table {
            width: 45%;
            background-color: #444;
            border-collapse: collapse;
            border-radius: 10px;
            overflow: hidden;
        }
        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #555;
        }
        th {
            background-color: #333;
            color: #FFD700;
        }
        td {
            color: #e0e0e0;
        }
        td .btn {
            background-color: #555;
            color: white;
            padding: 5px 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        td .btn:hover {
            background-color: #777;
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
            <i class="fa-solid fa-user-shield"></i> Admin - User Management
        </div>
        <nav>
            <a href="Admin.aspx"><i class="fa-solid fa-arrow-left"></i> Back to Dashboard</a>
            <a href="#"><i class="fa-solid fa-sign-out-alt"></i> Logout</a>
        </nav>
    </header>

    <div class="main-body">
        <h1>User Management</h1>

        <div class="table-container">
          
            <table>
                <caption><strong>Customer Management</strong></caption>
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Mobile Number</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>John Doe</td>
                        <td>+94 123 456 789</td>
                        <td>
                            <button class="btn">Edit</button>
                            <button class="btn">Delete</button>
                        </td>
                    </tr>
                    <tr>
                        <td>Jane Smith</td>
                        <td>+94 987 654 321</td>
                        <td>
                            <button class="btn">Edit</button>
                            <button class="btn">Delete</button>
                        </td>
                    </tr>
                   
                </tbody>
            </table>

           
            <table>
                <caption><strong>Driver Management</strong></caption>
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Mobile Number</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Mark Lee</td>
                        <td>+94 555 666 777</td>
                        <td>
                            <button class="btn">Edit</button>
                            <button class="btn">Delete</button>
                        </td>
                    </tr>
                    <tr>
                        <td>Anna Kelly</td>
                        <td>+94 888 999 000</td>
                        <td>
                            <button class="btn">Edit</button>
                            <button class="btn">Delete</button>
                        </td>
                    </tr>
                   
                </tbody>
            </table>
        </div>
    </div>

    <footer>
        <p>&copy; 2024 GoKid. All rights reserved.</p>
    </footer>
</body>
</html>
