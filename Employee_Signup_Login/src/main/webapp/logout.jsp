<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%
    session.invalidate(); // Invalidate the session to log the user out
%>
<!DOCTYPE html>
<html>
<head>
    <title>Logout</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(120deg, #3498db, #8e44ad);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            text-align: center;
            color: #fff;
        }

        .logout-box {
            background: rgba(0, 0, 0, 0.6);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            width: 300px;
        }

        .logout-box h2 {
            margin-bottom: 20px;
        }

        .logout-box p {
            margin-bottom: 20px;
            font-size: 18px;
        }

        .btn {
            background: #e74c3c;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            font-size: 16px;
            transition: background 0.3s ease;
        }

        .btn:hover {
            background: #c0392b;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="logout-box">
            <h2>Successfully Logged Out</h2>
            <p>Thank you for visiting!</p>
            <a href="login.jsp" class="btn">Login Again</a>
        </div>
    </div>
</body>
</html>
