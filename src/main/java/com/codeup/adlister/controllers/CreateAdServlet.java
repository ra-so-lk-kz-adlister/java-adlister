package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
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
        DaoFactory.getAdsDao().insert(ad);

//        This is for being able to see the genre of each ad.
        String[] genres = request.getParameterValues("genre");

        System.out.printf("Title: %s%nRelease Year: %d%nRating: %d%nDescription: %s%nPrice: %d%nUser input:%s-%d%n", ad.getAd_name(), ad.getRelease_year(), ad.getRating(), ad.getDescription(), ad.getPrice(), user.getUsername(), ad.getUser_id());

        if (genres != null) {
            for (String genre : genres) {
                int genreValue = Integer.parseInt(genre);
                System.out.println(genreValue);
            }
        }

        response.sendRedirect("/ads/create");
    }
}
