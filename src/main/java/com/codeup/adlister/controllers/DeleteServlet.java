package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteServlet", value = "/delete")
public class DeleteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/ads/delete.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        int sentId = Integer.parseInt(request.getParameter("delete_id"));
        User user = (User) request.getSession().getAttribute("user");

        Ad ad = DaoFactory.getAdsDao().findById(sentId);

        if (user != null && user.getId() == ad.getUser_id() ) {
            DaoFactory.getAdsDao().deleteAd(ad);
            response.sendRedirect(request.getContextPath() + "/profile");
        }



//        User user = (User) request.getSession().getAttribute("user");
//        int id = Integer.parseInt(request.getParameter("id"));
//
//        Ad ad = DaoFactory.getAdsDao().findById(id);
//
//        if (user != null && user.getId() == ad.getUser_id() ) {
//            DaoFactory.getAdsDao().deleteAd(id);
//            response.sendRedirect(request.getContextPath() + "/profile");
//        }else{
//            response.sendRedirect(request.getContextPath() + "/profile");
//        }
    }
}
