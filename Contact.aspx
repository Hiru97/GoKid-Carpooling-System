<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="GoKid.Contact" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - GoKid</title>
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
        .contact-form {
            max-width: 600px;
            margin: 30px auto;
            background-color: #444;
            padding: 30px;
            border-radius: 10px;
        }
        .contact-form h2 {
            color: #FFD700;
            margin-bottom: 20px;
        }
        .contact-form input, .contact-form textarea {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            background-color: #333;
            color: #e0e0e0;
            border: 1px solid #555;
            border-radius: 5px;
            font-size: 16px;
        }
        .contact-form input[type="submit"] {
            background-color: #FFD700;
            color: #333;
            cursor: pointer;
        }
        .contact-form input[type="submit"]:hover {
            background-color: #FFC107;
        }
        .thank-you-message {
            color: #FFD700;
            font-size: 18px;
            font-weight: bold;
            margin-top: 20px;
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
            <a href="Contact.aspx"><i class="fa-solid fa-envelope"></i> Contact</a>
            <a href="#"><i class="fa-solid fa-comments"></i> In-App Messaging</a>
            <a href="#"><i class="fa-solid fa-gear"></i> Settings</a>
            <a href="#"><i class="fa-solid fa-sign-in"></i> Login</a>
            <a href="#"><i class="fa-solid fa-user-shield"></i> Admin Login</a>
        </nav>
    </header>

    <div class="main-body">
        <h1>Contact Us</h1>
        <p>If you have any questions or need assistance, please feel free to reach out to us using the form below.</p>

        <div class="contact-form">
            <h2>Send Us a Message</h2>
            <form id="contactForm" runat="server">
                <input type="text" name="name" id="name" placeholder="Your Name" required />
                <input type="email" name="email" id="email" placeholder="Your Email" required />
                <textarea name="message" id="message" rows="5" placeholder="Your Message" required></textarea>
                <input type="submit" value="Submit" id="submitButton" />
            </form>

            <div id="thankYouMessage" class="thank-you-message" style="display: none;">
                Thank you for your message! We will get back to you shortly.
            </div>
        </div>
    </div>

    <footer>
        <p>&copy; 2024 GoKid. All rights reserved.</p>
    </footer>

    <script>
        
        document.getElementById("contactForm").onsubmit = function(event) {
            event.preventDefault(); 
            
            document.getElementById("thankYouMessage").style.display = "block";

            document.getElementById("contactForm").reset();
        }
    </script>
</body>
</html>
