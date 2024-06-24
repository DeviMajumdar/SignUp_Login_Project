<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #6a11cb, #2575fc);
            color: #ffffff;
            margin: 0;
            padding: 0;
        }
        h1 {
            text-align: center;
            margin-top: 50px;
            font-size: 3em;
        }
        nav {
            background-color: rgba(0, 0, 0, 0.5);
            padding: 10px 0;
        }
        nav ul {
            list-style-type: none;
            padding: 0;
            text-align: center;
        }
        nav ul li {
            display: inline;
            margin: 0 20px;
        }
        nav ul li a {
            color: #ffffff;
            text-decoration: none;
            font-size: 1.2em;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        nav ul li a:hover {
            background-color: #ffffff;
            color: #6a11cb;
        }
        .container {
            text-align: center;
            margin-top: 150px;
        }
        a.button {
            display: inline-block;
            background-color: #ffffff;
            color: #6a11cb;
            padding: 15px 25px;
            margin: 20px;
            border-radius: 5px;
            text-decoration: none;
            font-size: 1.5em;
            transition: background-color 0.3s ease, color 0.3s ease;
        }
        a.button:hover {
            background-color: #2575fc;
            color: #ffffff;
        }
    </style>
</head>
<body>
    <nav>
        <ul>
            <li><a href="home.jsp">Home</a></li>
            <li><a href="about.jsp">About</a></li>
            <li><a href="services.jsp">Services</a></li>
            <li><a href="contact.jsp">Contact</a></li>
        </ul>
    </nav>
    <div class="container">
        <h1>Welcome to the Employee Management System</h1>
        <a href="login.jsp" class="button">Login</a>
        <a href="signup.jsp" class="button">Sign Up</a>
    </div>
</body>
</html>
