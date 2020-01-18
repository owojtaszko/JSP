package com.sda.services.servlet;

import javax.servlet.ServletConfig;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(
        name="HelloWordServlet"
        , urlPatterns = "/"
        , initParams = {
                @WebInitParam(name="userId", value = "123456"),
                @WebInitParam(name = "localization", value = "Poland")
                }
)

public class HelloWordServlet extends HttpServlet {

    private String userId, localization;

    @Override
    public void init(ServletConfig config){
        userId = config.getInitParameter("userId");
        localization = config.getInitParameter("localization");
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        PrintWriter writer = response.getWriter();
        writer.println("UserId: " + userId + "<br>");
        writer.print("Localization: " + localization);
    }
}
