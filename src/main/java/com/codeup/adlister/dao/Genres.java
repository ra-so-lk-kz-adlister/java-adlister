package com.codeup.adlister.dao;

import com.codeup.adlister.models.Genre;

public interface Genres {
    String findGenreNameById(int genreId);
    Long insert(Genre genre);
}
