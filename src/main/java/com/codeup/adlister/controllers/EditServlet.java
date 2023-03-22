package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EditServlet", value = "/edit")
public class EditServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("ads", DaoFactory.getAdsDao().all());
        request.getRequestDispatcher("/WEB-INF/ads/edit.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int adId = Integer.parseInt(request.getParameter("adId"));
        String adName = request.getParameter("adName");
        int releaseYear = Integer.parseInt(request.getParameter("releaseYear"));
        int rating = Integer.parseInt(request.getParameter("rating"));
        String description = request.getParameter("description");
        int price = Integer.parseInt(request.getParameter("price"));




        int sentId = Integer.parseInt(request.getParameter("id"));
        User user = (User) request.getSession().getAttribute("user");

        Ad ad = DaoFactory.getAdsDao().findById(sentId);

        if (user != null && user.getId() == ad.getUser_id() ) {
            DaoFactory.getAdsDao().editAd(adId, adName, releaseYear, rating, description, price);
            response.sendRedirect(request.getContextPath() + "/profile");
        }
    }
}
