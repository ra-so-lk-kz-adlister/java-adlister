package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;
import com.mysql.cj.x.protobuf.MysqlxPrepare;
import model.Config;

import java.sql.*;

public class MySQLUsersDao implements Users {
    private Connection connection = null;
    public MySQLUsersDao(Config config){
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUsername(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            System.out.println(e);
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public User findByUsername(String username) {
        PreparedStatement stmt = null;
        User foundUser = null;
        String searchTWW = "%" + username + "%";
        try {
            String sql = "SELECT * FROM users WHERE username LIKE ?";
            System.out.println(username);
            stmt = connection.prepareStatement(sql);

            stmt.setString(1, searchTWW);
            ResultSet rst = stmt.executeQuery();

            if (rst.next()) { // check if any rows were returned
                foundUser = new User(
                        rst.getString("username"),
                        rst.getString("email"),
                        rst.getString("password")
                );
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error finding username.", e);
        }
        return foundUser;
    }

    @Override
    public Long insert(User user) {
        try {
            PreparedStatement stmt = connection.prepareStatement(
              "INSERT INTO users (username, email, password) VALUES (?, ?, ?)", Statement.RETURN_GENERATED_KEYS
            );
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }
}
