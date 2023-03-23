package com.codeup.adlister.dao;

import com.codeup.adlister.Config;
import com.codeup.adlister.models.Genre;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLGenresDao implements Genres {
    private Connection connection;

    public MySQLGenresDao(Config config) {
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
    public Long insert(Genre genre) {
        try{
            String insertQuery = "INSERT INTO ads_genre(ad_id, genre_id) VALUES (?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setInt(1, genre.getAd_id());
            stmt.setInt(2, genre.getGenre_id());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error inserting genre id into the db", e);
        }
    }
    //be able to translate genre_id to the string of genre type
    @Override
    public void deleteGenre(int adID) {
        try {
            String query = "DELETE FROM ads_genre WHERE ad_id = ?";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setInt(1, adID);
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Failed to delete genre");
        }
    }
    @Override
    public List<Genre> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads_genre");
            ResultSet rs = stmt.executeQuery();
            return createGenresFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }
    private List<Genre> createGenresFromResults(ResultSet rs) throws SQLException {
        List<Genre> genres = new ArrayList<>();
        while (rs.next()) {
            Genre genre = extractGenre(rs);
            String genreName = findGenreNameById(genre.getGenre_id());
            genre.setGenreName(genreName);
            genres.add(genre);
        }
        return genres;
    }
    private Genre extractGenre(ResultSet rs) throws SQLException {
        return new Genre(
                rs.getInt("ad_id"),
                rs.getInt("genre_id")
        );
    }
    private String findGenreNameById(int genreId) {
        try {
            String query = "SELECT genre FROM genre WHERE id = ?";
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setInt(1, genreId);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return rs.getString("genre");
            } else {
                return null;
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error finding the genre name by genre id.", e);
        }
    }
}
