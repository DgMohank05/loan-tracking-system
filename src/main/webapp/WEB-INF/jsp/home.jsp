<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Loan Tracking App</title>

    <!-- Linking the external CSS file -->
    
	<link rel="stylesheet" href="home.css">
	<style><%@include file="/WEB-INF/Css/home.css"%></style>
</head>
<body>

    <header>
        <nav class="navbar">
            <div class="logo">
				

                <h1>Loan Tracker</h1>
				
            </div>
            <ul class="nav-links">
                <li><a href="#home">Home</a></li>
                <li><a href="#services">Services</a></li>
                <li><a href="#loans">Track Loans</a></li>
                <li><a href="#contact">Contact Us</a></li>
                <li><a href="login" id="login-btn">Login/Register</a></li>
            </ul>
        </nav>
    </header>

    <section id="home" class="home-section">
        <div class="home-content">
            <h2>Welcome to the Loan Tracking App</h2>
            <p>Manage and track all your loans with ease and stay updated on your payments, interest rates, and loan statuses.</p>
            <a href="#" class="cta-button" id="track-loans-btn">Track My Loans</a>
        </div>
    </section>

    <section id="services" class="services-section">
        <h2>Our Services</h2>
        <div class="services-container">
            <div class="service-box">
                <h3>Loan Tracking</h3>
                <p>Track your loan history, payments, and status in real-time.</p>
            </div>
            <div class="service-box">
                <h3>Payment Reminders</h3>
                <p>Get automatic notifications for upcoming payment due dates.</p>
            </div>
            <div class="service-box">
                <h3>Interest Rate Management</h3>
                <p>Monitor your loan’s interest rates and manage adjustments.</p>
            </div>
        </div>
    </section>

    <section id="loans" class="loans-section">
        <h2>Track Your Loans</h2>
        <p>Log in to view and track your current and past loans.</p>
        <a href="#" class="cta-button" id="track-loans-link">Login</a>
    </section>

    <footer id="contact" class="footer">
        <h2>Contact Us</h2>
        <p>Email: support@loantracker.com</p>
        <p>Phone: +123 456 7890</p>
        <p>Address: 123 Loan Street, Finance City</p>
    </footer>

    <script>
        // JavaScript to handle redirection to the login page
        document.getElementById('login-btn').addEventListener('click', function() {
            window.location.href = '/login';
        });

        document.getElementById('track-loans-btn').addEventListener('click', function() {
            window.location.href = '/login';
        });

        document.getElementById('track-loans-link').addEventListener('click', function() {
            window.location.href = '/login';
        });
    </script>

</body>
</html>
