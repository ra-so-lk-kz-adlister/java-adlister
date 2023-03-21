package com.codeup.adlister.models;

public class Ad {
    private int id;
    private int user_id;
    private String ad_name;
    private String description;
    private int release_year;
    private int rating;
    private int price;

    public Ad(int id, int user_id, String ad_name, int release_year, int rating, String description, int price) {
        this.id = id;
        this.user_id = user_id;
        this.ad_name = ad_name;
        this.release_year = release_year;
        this.rating = rating;
        this.description = description;
        this.price = price;
    }

    public Ad(int user_id, String ad_name, int release_year, int rating, String description, int price) {
        this.user_id = user_id;
        this.ad_name = ad_name;
        this.release_year = release_year;
        this.rating = rating;
        this.description = description;
        this.price = price;
    }

    public Ad(int user_id, String ad_name, String description) {
        this.user_id = user_id;
        this.ad_name = ad_name;
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getAd_name() {
        return ad_name;
    }

    public void setAd_name(String ad_name) {
        this.ad_name = ad_name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getRelease_year() {
        return release_year;
    }

    public void setRelease_year(int release_year) {
        this.release_year = release_year;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }
}
