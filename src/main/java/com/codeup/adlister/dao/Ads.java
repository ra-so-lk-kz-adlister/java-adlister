package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import java.sql.ResultSet;
import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);

//    List<Ad>all(User user);
List<Ad> findById2(int userId);
    Ad findById(int userId);

    void deleteAd(Ad ad);

    void editAd(int adId, String adName, int releaseYear, int rating, String description, double price);

    //List<Ad> findById(int userId);
    //void deleteAd(int id);
}
