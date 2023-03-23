package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.Genre;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.CreateAdServlet", urlPatterns = "/ads/create")
public class CreateAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/ads/create.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        User user = (User) request.getSession().getAttribute("user");
        //create an add with required parameters
        Ad ad = new Ad(
                user.getId(),
                request.getParameter("title"),
                Integer.parseInt(request.getParameter("releaseYear")),
                Integer.parseInt(request.getParameter("rating")),
                request.getParameter("description"),
                Integer.parseInt(request.getParameter("price"))
        );
        //input the add into the DB
        Integer num = DaoFactory.getAdsDao().insert(ad).intValue();

        //This is for being able to see the genre of each ad.
        String[] genres = request.getParameterValues("genre");
        if (genres != null && (num != null)) {
            for (String genre : genres) {
                int genreId = Integer.parseInt(genre);

                Genre type = new Genre(num, genreId);
                DaoFactory.getGenresDao().insert(type);
            }
        }
        response.sendRedirect("/profile");
    }
}
