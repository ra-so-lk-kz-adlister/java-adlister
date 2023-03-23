package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "AdDetailsServlet", value = "/detail")
public class ViewAdDetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");

        if (user == null) {
            response.sendRedirect("/login");
            return;
        }


        int sentId = Integer.parseInt( request.getParameter("adId"));
        Ad helperAd = DaoFactory.getAdsDao().findById(sentId);

        List<Ad> helperList = new ArrayList<>();
        helperList.add(helperAd);
        request.setAttribute("details", helperList);
        request.getRequestDispatcher("/WEB-INF/ads/detailsAll.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
