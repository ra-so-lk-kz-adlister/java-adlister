package com.codeup.adlister.controllers;


import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.EditProfileServlet", urlPatterns = "/profile/edit")
public class EditProfileServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/users/editprofile.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // get user id
        User oldUser = (User) request.getSession().getAttribute("user");

        // validate input
        String username = request.getParameter("newUsername");
        String email = request.getParameter("newEmail");
        String password = request.getParameter("newPassword");
        String passwordConfirmation = request.getParameter("newConfirm_password");

        // validate input
        boolean inputHasErrors = username.isEmpty()
                || email.isEmpty()
                || password.isEmpty()
                || (! password.equals(passwordConfirmation));

        if (inputHasErrors) {
            response.sendRedirect("/editprofile");
            return;
        }

        // create and save a new user
        User user = new User(
                oldUser.getId(),
                username,
                email,
                "filler");
        user.setPassword(password);

        //update the database
        DaoFactory.getUsersDao().updateUser(user);

        //redirect with appropriate info
        request.getSession().setAttribute("user", user);
        response.sendRedirect("/profile");
    }
}
