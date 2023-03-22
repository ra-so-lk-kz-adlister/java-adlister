package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.Genre;
import com.codeup.adlister.models.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EditServlet", value = "/edit")
public class EditServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        User user = (User) request.getSession().getAttribute("user");

        int sentId = Integer.parseInt( request.getParameter("edit_id"));
        Ad ad = DaoFactory.getAdsDao().findById(sentId);


        request.setAttribute("ad", ad);

        request.getRequestDispatcher("/WEB-INF/ads/edit.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int num = Integer.parseInt(request.getParameter("adId"));
        DaoFactory.getAdsDao().editAd(
                num,
                request.getParameter("adName"),
                Integer.parseInt(request.getParameter("releaseYear")),
                Integer.parseInt(request.getParameter("rating")),
                request.getParameter("description"),
                Integer.parseInt(request.getParameter("price")));

        String[] genres = request.getParameterValues("genre");

        //we remove all the set genres
        DaoFactory.getGenresDao().deleteGenre(num);

        //add genres if any exist
        if (genres != null) {
            for (String genre : genres) {
                int genreId = Integer.parseInt(genre);
                Genre type = new Genre(num, genreId);
                DaoFactory.getGenresDao().insert(type);
            }
        }

        response.sendRedirect("/profile");

        //directly set in the editAd method | old code:
        //        int adId = Integer.parseInt(request.getParameter("adId"));
        //        String adName = request.getParameter("adName");
        //        int releaseYear = Integer.parseInt(request.getParameter("releaseYear"));
        //        int rating = Integer.parseInt(request.getParameter("rating"));
        //        String description = request.getParameter("description");
        //        int price = Integer.parseInt(request.getParameter("price"));

    }
}
