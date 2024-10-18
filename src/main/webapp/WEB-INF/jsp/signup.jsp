<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup - Create Account</title>

    <!-- External CSS for styling -->
	<style><%@include file="/WEB-INF/Css/signup.css"%></style>
</head>
<body>

    <div class="container">
        <h1>Create a New Account</h1>
        <h2>Signup to Get Started</h2>

        <!-- Error message display if signup fails -->
        <p class="error-message">${errorMessage}</p>

        <!-- Signup form -->
        <form method="post" action="processSignup">
            <label for="username">User Name:</label>
            <input type="text" id="username" name="username" required />

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required />

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required />

            <input type="submit" value="Signup" />
        </form>

        <!-- Redirect to login page -->
        <div class="login">
            <p>Already have an account?</p>
            <button onclick="window.location.href='login'">Login</button>
        </div>
    </div>

</body>
</html>
