<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Form</title>
<style>
    /* Reset and General Styles */
    * {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
        
    }

    body {
        font-family: 'Jost', sans-serif;
        background-color: #f0f0f0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .container {
        max-width: 400px;
        width: 100%;
        padding: 20px;
    }

    /* Login Form Styles */
    .login-container {
        background-color: #ffffff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
    }

    .login-container h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #333333;
    }

    .input-group {
        margin-bottom: 15px;
    }

    .input-group input {
        width: 100%;
        padding: 10px;
        border: 1px solid #ddd;
        border-radius: 5px;
        font-size: 16px;
    }

    input[type="text"],
    input[type="password"] {
        outline: none;
    }

    button {
        width: 100%;
        padding: 12px;
        border: none;
        background-color: #007bff;
        color: #ffffff;
        font-size: 16px;
        cursor: pointer;
        border-radius: 5px;
        transition: background-color 0.3s ease;
    }

    button:hover {
        background-color: #0056b3;
    }

    @media screen and (max-width: 600px) {
        .container {
            padding: 10px;
        }

        .login-container {
            padding: 20px;
        }
    }
</style>
</head>
<body>
    <div class="container">
        <div class="login-container">
            <form method="post" action="AgentLogin" onsubmit="return validateForm()">
                <h2>Login</h2>
                <div class="input-group">
                    <input type="text" name="Mobno" placeholder="Mobile Number" required>
                </div>
                <div class="input-group">
                    <input type="password" name="pswd" placeholder="Password" required>
                </div>
                <button type="submit">Login</button>
            </form>
        </div>
    </div>

    <script>
        function validateForm() {
            var mobno = document.getElementsByName("Mobno")[0].value;
            var mobnoRegex = /^\d{10}$/;

            if (!mobnoRegex.test(mobno)) {
                alert("Please enter a 10-digit mobile number.");
                return false;
            }

            return true;
        }
    </script>
</body>
</html>
