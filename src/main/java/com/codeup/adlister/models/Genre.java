package com.codeup.adlister.models;

public class Genre {
    private int id;
    private int ad_id;
    private int genre_id;
    public Genre(){};
    public Genre(int ad_id, int genre_id) {
        this.ad_id = ad_id;
        this.genre_id = genre_id;
    }
    public Genre(int id, int ad_id, int genre_id)
    {
        this.id = id;
        this.ad_id = ad_id;
        this.genre_id = genre_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAd_id() {
        return ad_id;
    }

    public void setAd_id(int ad_id) {
        this.ad_id = ad_id;
    }

    public int getGenre_id() {
        return genre_id;
    }

    public void setGenre_id(int genre_id) {
        this.genre_id = genre_id;
    }
}
