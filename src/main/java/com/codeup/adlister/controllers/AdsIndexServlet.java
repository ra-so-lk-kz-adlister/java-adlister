package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;


@WebServlet(name = "controllers.AdsIndexServlet", urlPatterns = "/ads")
public class AdsIndexServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        // Get the HttpSession object for the current user
        HttpSession session = request.getSession();

        // Get the current visit count from the session attribute, or initialize it to 0 if it doesn't exist
        Integer visitCount = (Integer) session.getAttribute("visitCount");
        if (visitCount == null) {
            visitCount = 0;
        }
        visitCount++;
        session.setAttribute("visitCount", visitCount);

        // Set the visit count as a request attribute
        request.setAttribute("visitCount", visitCount);


        if (user == null) {
            response.sendRedirect("/login");
            return;
        }
        System.out.println(visitCount);
        List<Ad> ads = DaoFactory.getAdsDao().all();
        if (visitCount % 2 == 0) {
            ads.sort(new Comparator<Ad>() {
                @Override
                public int compare(Ad ad1, Ad ad2) {
                    return ad1.getAd_name().compareTo(ad2.getAd_name());
                }
            });
        } else {
            ads.sort(new Comparator<Ad>() {
                @Override
                public int compare(Ad ad1, Ad ad2) {
                    return ad2.getAd_name().compareTo(ad1.getAd_name());
                }
            });
        }
        request.setAttribute("ads", ads);

        request.setAttribute("genres", DaoFactory.getGenresDao().all());


        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect(request.getContextPath() + "/ads");
    }
}
