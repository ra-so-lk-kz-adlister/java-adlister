package com.codeup.adlister.dao;

import com.codeup.adlister.Config;
import com.codeup.adlister.models.Ad;


import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public List<Ad> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM arcade_ads");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public List<Ad> findById2(int userId) {
        try {
            String insertQuery = "SELECT * FROM arcade_ads WHERE arcade_ads.user_id LIKE ?";
            PreparedStatement stmt = connection.prepareStatement(insertQuery);
            stmt.setInt(1, userId);
            stmt.executeQuery();
            return createAdsFromResults(stmt.getResultSet());
        } catch (SQLException e) {
            throw new RuntimeException("Error searching for user.", e);
        }
    }

    @Override
    public Ad findById(int adsId) {
        try {
            String insertQuery = "SELECT * FROM arcade_ads WHERE id = ?";
            PreparedStatement stmt = connection.prepareStatement(insertQuery);
            stmt.setInt(1, adsId);
            ResultSet rs = stmt.executeQuery();
            rs.next();
            return extractAd(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error searching for user.", e);
        }
    }

    @Override
    public Long insert(Ad ad) {
        try {
            String insertQuery = "INSERT INTO arcade_ads(user_id, ad_name, release_year, rating, description, price) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, ad.getUser_id());
            stmt.setString(2, ad.getAd_name());
            stmt.setInt(3, ad.getRelease_year());
            stmt.setInt(4, ad.getRating());
            stmt.setString(5, ad.getDescription());
            stmt.setInt(6, ad.getPrice());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    private Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(
                rs.getInt("id"),
                rs.getInt("user_id"),
                rs.getString("ad_name"),
                rs.getInt("release_year"),
                rs.getInt("rating"),
                rs.getString("description"),
                rs.getInt("price")
        );
    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }




    public void deleteAd(Ad ad) {
        try {
            String query = "DELETE FROM arcade_ads WHERE id = ?";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setInt(1, ad.getId());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Failed to delete ad");
        }
    }



    public void editAd(int adId, String adName, int releaseYear, int rating, String description, double price){
        try {
            String query = "UPDATE arcade_ads SET ad_name = ?, release_year = ?, rating = ?, description = ?, price = ? WHERE  id = ?";
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, adName);
            stmt.setInt(2, releaseYear);
            stmt.setInt(3, rating);
            stmt.setString(4, description);
            stmt.setDouble(5, price);
            stmt.setInt(6, adId);
            stmt.executeUpdate();


        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Failed to delete ad");
        }
    }


}
