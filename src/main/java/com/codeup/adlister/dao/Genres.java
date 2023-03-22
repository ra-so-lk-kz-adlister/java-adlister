package com.codeup.adlister.dao;

import com.codeup.adlister.models.Genre;

import java.util.List;

public interface Genres {
    Long insert(Genre genre);
    List<Genre> all();
    void deleteGenre(int adID);
}
