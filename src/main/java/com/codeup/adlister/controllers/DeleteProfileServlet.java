package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteProfileServlet", value = "/profile/delete")
public class DeleteProfileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/deleteprofile.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        User userCurrent = (User) request.getSession().getAttribute("user");
        User user = DaoFactory.getUsersDao().findByUsername(userCurrent.getUsername());

        if (user != null && user.getId() == userCurrent.getId() ) {
            DaoFactory.getUsersDao().deleteUser(user);
            response.sendRedirect("/logout");
        }
    }
}
