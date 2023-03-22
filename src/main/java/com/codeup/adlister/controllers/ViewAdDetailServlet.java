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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "controllers.ViewAdDetailServlet", urlPatterns = "/detail")
public class ViewAdDetailServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        User user = (User) request.getSession().getAttribute("user");

        if (user == null) {
            response.sendRedirect("/login");
            return;
        }

        int num = Integer.parseInt(request.getParameter("adId"));
        Ad helperAd = DaoFactory.getAdsDao().findById(num);
        List<Ad> helperList = new ArrayList<>();
        helperList.add(helperAd);
        request.setAttribute("details", helperList);
        request.getRequestDispatcher("/WEB-INF/ads/details.jsp").forward(request, response);
    }

}
