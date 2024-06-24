package com.example.dao;

import com.example.model.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/EmployeeDB";
    private String jdbcUsername = "root";
    private String jdbcPassword = "";
    private Connection jdbcConnection;

    protected void connect() throws Exception {
        if (jdbcConnection == null || jdbcConnection.isClosed()) {
            Class.forName("com.mysql.cj.jdbc.Driver");
            jdbcConnection = DriverManager.getConnection(jdbcURL, jdbcUsername, "");
        }
    }

    protected void disconnect() throws Exception {
        if (jdbcConnection != null && !jdbcConnection.isClosed()) {
            jdbcConnection.close();
        }
    }

    public boolean registerUser(User user) throws Exception {
        String sql = "INSERT INTO Employee (username, password, email) VALUES (?, ?, ?)";
        connect();

        PreparedStatement statement = jdbcConnection.prepareStatement(sql);
        statement.setString(1, user.getUsername());
        statement.setString(2, user.getPassword());
        statement.setString(3, user.getEmail());

        boolean rowInserted = statement.executeUpdate() > 0;
        statement.close();
        disconnect();
        return rowInserted;
    }

    public boolean validate(String username, String password) throws Exception {
        String sql = "SELECT * FROM Employee WHERE username = ? and password = ?";
        connect();

        PreparedStatement statement = jdbcConnection.prepareStatement(sql);
        statement.setString(1, username);
        statement.setString(2, password);

        ResultSet resultSet = statement.executeQuery();
        boolean status = resultSet.next();
        statement.close();
        disconnect();
        return status;
    }
}

