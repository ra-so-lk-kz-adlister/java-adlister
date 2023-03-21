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
//        if (request.getSession().getAttribute("user") == null) {
//            response.sendRedirect("/login");
//            return;
//        }
        request.getRequestDispatcher("/WEB-INF/ads/create.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        User user = (User) request.getSession().getAttribute("user");
//        Ad ad = new Ad(
//            user.getId(),
//            request.getParameter("title"),
//            request.getParameter("description")
//        );
//        DaoFactory.getAdsDao().insert(ad);
        String title = request.getParameter("title");
        int release_year = Integer.parseInt(request.getParameter("releaseYear"));
        int rating = Integer.parseInt(request.getParameter("rating"));
        String[] genres = request.getParameterValues("genre");
        String description = request.getParameter("description");
        int price_in_cents = Integer.parseInt(request.getParameter("price"));

        System.out.println(title + release_year + rating + description + price_in_cents);
        System.out.printf("Title: %s%nRelease Year: %d%nRating: %d%nDescription: %s%nPrice: %d%n", title, release_year, rating, description, price_in_cents);

        if (genres != null) {
            for (String genre : genres) {
                int genreValue = Integer.parseInt(genre);
                System.out.println(genreValue);
            }
        }

        response.sendRedirect("/ads/create");
    }
}
