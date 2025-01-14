<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="GoKid.Home" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GoKid</title>
    <link rel="stylesheet" href="styles.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&callback=initMap" async defer></script>
    <script>
        function initMap() {
            const colombo = { lat: 6.9271, lng: 79.8612 };
            const map = new google.maps.Map(document.getElementById("map"), {
                zoom: 12,
                center: colombo,
            });

            new google.maps.Marker({
                position: colombo,
                map: map,
                title: "Colombo",
            });
        }
    </script>
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
            min-height: 350px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
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
        .option .service {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            background-color: #555;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            margin: 5px 0;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
            width: 90%;
        }
        .option .service:hover {
            background-color: #777;
        }
        #map {
            margin: 20px auto;
            height: 400px;
            width: 100%;
            border: 2px solid #555;
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
            <a href="Login.aspx"><i class="fa-solid fa-sign-in"></i> Login</a>
            <a href="AdminLogin.aspx"><i class="fa-solid fa-user-shield"></i> Admin Login</a>
        </nav>
    </header>


    <div class="main-body">
        <h1>Welcome to GoKid</h1>
        <p>GoKid made easy for busy parents. Save time, reduce costs, and help the environment.</p>

        <div class="options">
            <div class="option">
                <i class="fa-solid fa-car-side"></i>
                <h3>Driver Options</h3>
                <div class="service"><i class="fa-solid fa-route"></i> Ongoing Trip</div>
                <div class="service"><i class="fa-solid fa-calendar"></i> Schedule Trips</div>
                <div class="service"><i class="fa-solid fa-dollar-sign"></i> Earnings</div>
                <div class="service"><i class="fa-solid fa-clock"></i> Ride History</div>
                <div class="service"><i class="fa-solid fa-user-check"></i> Passenger Management</div>
                <div class="service"><i class="fa-solid fa-circle-question"></i> Help</div>
            </div>
            <div class="option">
                <i class="fa-solid fa-user"></i>
                <h3>Rider Options</h3>
                <div class="service"><i class="fa-solid fa-plus"></i> New Booking</div>
                <div class="service"><i class="fa-solid fa-route"></i> Ongoing Trip</div>
                <div class="service"><i class="fa-solid fa-calendar-check"></i> Schedule Booking</div>
                <div class="service"><i class="fa-solid fa-star"></i> Driver Ratings</div>
                <div class="service"><i class="fa-solid fa-user-plus"></i> Invite Friends</div>
                <div class="service"><i class="fa-solid fa-circle-question"></i> Help</div>
            </div>
        </div>

        <div id="map"></div>

        <section>
            <h2>About</h2>
            <p>
                GoKid is designed to reduce traffic congestion, minimize travel costs, and provide a safe and reliable way for parents to transport their children. By leveraging digital connections, GoKid ensures that families can collaborate effectively and reduce their carbon footprint.
            </p>
        </section>
    </div>

    <footer>
        <p>&copy; 2024 GoKid. All rights reserved.</p>
    </footer>
</body>
</html>
