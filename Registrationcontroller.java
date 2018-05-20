/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.UserDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author haya
 */
public class Registrationcontroller extends HttpServlet {

    UserDao userDAO = UserDao.getInstance();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd;
        String error = "";
        boolean hasErrors = false;
        String firstname = request.getParameter("first");
        String lastname = request.getParameter("last");
        String email = request.getParameter("mail");
        String gender = request.getParameter("gender");

        String DateOfBirth = request.getParameter("dob");
        //DateOfBirth = DateOfBirth.compareTo("") == 0 ? null : DateOfBirth;

        String IBAN = request.getParameter("iban");
        String password = request.getParameter("pass");
        String Repeatpassword = request.getParameter("repass");

        if (userDAO.userExists(firstname)) {
            hasErrors = true;
            error = "Username already exists";
        }
        if (hasErrors) {
            request.setAttribute("ERRORS", error);
            rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
        } else {
            if (!userDAO.createUser(firstname, lastname, email, gender, IBAN, DateOfBirth, password)) {
                request.setAttribute("ERRORS", error);
                rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
            }
            rd = request.getRequestDispatcher("LogIn.jsp");
            rd.forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
