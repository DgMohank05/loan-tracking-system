<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Loan Track App</title>
    <link rel="stylesheet" href="styles.css">
    <!-- Add FontAwesome for the eye icon -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style><%@include file="/WEB-INF/Css/login.css"%></style>
</head>
<body>
    <header>
        <div class="header-left">
            <img src="img/loan-track-logo.png" alt="Loan Track Logo" height="50px" width="50px">
            <h1>Loan Track</h1>
        </div>
        <div class="header-right">
            <!-- Keeping only the Home button in the navigation bar -->
            <nav>
                <ul>
                    <li><a href="home">Home</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <section id="login">
        <h2>Login to Your Account</h2>
        <div class="form">
            <!-- Change the form action to a JSP file for backend login logic -->
            <form action="login" method="POST">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required><br>
                
                <label for="password">Password:</label>
                <div class="password-wrapper">
                    <input type="password" id="password" name="password" required>
                    <i class="fas fa-eye" id="togglePassword"></i>
                </div>
                
                <button type="submit">Login</button>
            </form>
            <p><a href="#" id="forgotPasswordLink">Forgot Password?</a></p>
        </div>
        <div id="signup-section">
            <p>Don't have an account? <a href="signup" class="signup-link">Sign Up</a>.</p>
            <p>Sign up now to enjoy all the benefits of Loan Track!</p>
        </div>
    </section>

    <!-- Forgot Password Modal (For Dynamic Content, JSP should interact with a servlet) -->
    <div id="forgotPasswordModal" class="modal">
        <div class="modal-content">
            <span class="close">&times;</span>
            <h2>Forgot Password</h2>
            <p>Enter your email or mobile number to receive an OTP:</p>
            <form id="forgotPasswordForm" action="send_otp.jsp" method="POST">
                <label for="contact">Email/Mobile Number:</label>
                <input type="text" id="contact" name="contact" required>
                <button type="submit">Send OTP</button>
            </form>
            <div id="otpSection" style="display: none;">
                <h2>Enter OTP</h2>
                <form id="verifyOtpForm" action="verify_otp.jsp" method="POST">
                    <label for="otp">OTP:</label>
                    <input type="text" id="otp" name="otp" required>
                    <button type="submit">Verify OTP</button>
                </form>
            </div>
        </div>
    </div>

    <footer>
        <p>&copy; 2024 Loan Track. All rights reserved.</p>
    </footer>

    <script>
        // Password visibility toggle
        document.getElementById('togglePassword').addEventListener('click', function () {
            const passwordInput = document.getElementById('password');
            const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
            passwordInput.setAttribute('type', type);
            this.classList.toggle('fa-eye');
            this.classList.toggle('fa-eye-slash');
        });

        // Modal functionality
        const modal = document.getElementById("forgotPasswordModal");
        const btn = document.getElementById("forgotPasswordLink");
        const span = document.getElementsByClassName("close")[0];

        btn.onclick = function() {
            modal.style.display = "block";
        }

        span.onclick = function() {
            modal.style.display = "none";
        }

        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }

        // Handle OTP form visibility
        document.getElementById('forgotPasswordForm').addEventListener('submit', function(event) {
            event.preventDefault();
            // Here you would send the OTP request to the server
            // Assuming success, show the OTP section
            document.getElementById('otpSection').style.display = 'block';
        });

        document.getElementById('verifyOtpForm').addEventListener('submit', function(event) {
            event.preventDefault();
            // Here you would verify the OTP with the server
            // Assuming success, allow the user to reset their password
            alert('OTP verified. Redirect to password reset page.');
            modal.style.display = 'none';
        });

        // Submit form when pressing Enter
        document.getElementById('username').addEventListener('keydown', function(event) {
            if (event.key === 'Enter') {
                event.preventDefault();
                document.forms[0].submit();
            }
        });

        document.getElementById('password').addEventListener('keydown', function(event) {
            if (event.key === 'Enter') {
                event.preventDefault();
                document.forms[0].submit();
            }
        });
    </script>
</body>
</html>
