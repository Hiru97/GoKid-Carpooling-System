<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerReg.aspx.cs" Inherits="GoKid.CustomerReg" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Registration</title>
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
            min-height: 100vh;
        }
        .registration-container {
            background-color: #333;
            padding: 50px;
            border-radius: 15px;
            box-shadow: 0 6px 10px rgba(0, 0, 0, 0.3);
            width: 100%;
            max-width: 450px;
            text-align: center;
            box-sizing: border-box;
        }
        .registration-container h1 {
            margin-bottom: 30px;
            color: #FFD700;
            font-size: 28px;
        }
        .registration-container input {
            width: calc(100% - 20px);
            padding: 15px;
            margin: 15px 0;
            border: none;
            border-radius: 5px;
            background-color: #444;
            color: white;
            font-size: 18px;
            box-sizing: border-box;
        }
        .registration-container .button-group {
            display: flex;
            justify-content: space-between;
            gap: 10px;
        }
        .registration-container button {
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
        .register-btn {
            background-color: #FFD700;
            color: #333;
        }
        .register-btn:hover {
            background-color: #e6c300;
        }
        .back-btn {
            background-color: #555;
        }
        .back-btn:hover {
            background-color: #777;
        }
    </style>
    <script>
        function handleRegistration(event) {
            event.preventDefault();
            const password = document.querySelector('input[name="password"]').value;
            const confirmPassword = document.querySelector('input[name="confirm_password"]').value;

            if (password !== confirmPassword) {
                alert('Passwords do not match!');
                return false;
            }

            alert('Registration successful!');
            return true;
        }

        function handleBack() {
            window.location.href = 'Login.aspx';
        }
    </script>
</head>
<body>
    <div class="registration-container">
        <h1>Customer Registration</h1>
        <form method="post" action="CustomerReg.aspx" onsubmit="return handleRegistration(event)">
            <input type="text" name="name" placeholder="Name" required>
            <input type="tel" name="mobile" placeholder="Mobile Number" pattern="[0-9]{10}" required>
            <input type="email" name="email" placeholder="Email" required>
            <input type="date" name="dob" placeholder="Date of Birth" required>
            <input type="text" name="address" placeholder="Address" required>
            <input type="text" name="nic" placeholder="NIC" required>
            <input type="password" name="password" placeholder="Password" required>
            <input type="password" name="confirm_password" placeholder="Confirm Password" required>
            <div class="button-group">
                <button type="submit" class="register-btn"><i class="fa-solid fa-user-plus"></i> Register</button>
                <button type="button" class="back-btn" onclick="handleBack()"><i class="fa-solid fa-arrow-left"></i> Back</button>
            </div>
        </form>
    </div>
</body>
</html>
