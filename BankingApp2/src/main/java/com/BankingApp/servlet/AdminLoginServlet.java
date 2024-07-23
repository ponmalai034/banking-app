package com.BankingApp.servlet;

import com.BankingApp.dao.DatabaseConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            PrintWriter out = response.getWriter();
            response.setContentType("text/html");

            DatabaseConnection db = new DatabaseConnection();
            String name = request.getParameter("username");
            String pwd = request.getParameter("password");

            PreparedStatement ps = db.createPreparedStatement("select username from admin where username=? and password=?");
            ps.setString(1, name);
            ps.setString(2, pwd);
            ResultSet rs = db.executeQuery(ps);

            if(rs.next()) {
                RequestDispatcher rd = request.getRequestDispatcher("admin_dashboard.jsp");
                rd.forward(request, response);
            } else {
                out.println("Login Failed!!!");
                out.println("<a href=admin_login.jsp>Try Again!!!</a>");
            }

            db.closeConnection();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
