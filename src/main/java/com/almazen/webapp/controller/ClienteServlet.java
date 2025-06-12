package com.almazen.webapp.controller;

import java.io.IOException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ClienteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        String forwardPath = "/WEB-INF/jsp/cliente/dashboardCliente.jsp"; // Default page
        String pageTitle = "Mi Panel de Cliente";

        if (action == null) {
            action = "dashboard"; // Default action if none is provided
        }

        switch (action) {
            case "dashboard":
                // Already set by default
                break;
            case "solicitarGuardado":
                forwardPath = "/WEB-INF/jsp/cliente/solicitarGuardado.jsp";
                pageTitle = "Solicitar Guardado";
                break;
            case "solicitarRetiro":
                forwardPath = "/WEB-INF/jsp/cliente/solicitarRetiro.jsp";
                pageTitle = "Solicitar Retiro";
                break;
            case "verInventario":
                forwardPath = "/WEB-INF/jsp/cliente/verInventario.jsp";
                pageTitle = "Ver Inventario";
                break;
            case "verOrdenes":
                forwardPath = "/WEB-INF/jsp/cliente/verOrdenesCliente.jsp";
                pageTitle = "Mis Órdenes";
                break;
            default:
                // Optionally, handle unknown actions, e.g., redirect to dashboard or an error page
                pageTitle = "Página no encontrada";
                // You might want to forward to an error page or just the dashboard
                // forwardPath = "/WEB-INF/jsp/error.jsp";
                break;
        }

        request.setAttribute("tituloPagina", pageTitle);
        RequestDispatcher dispatcher = request.getRequestDispatcher(forwardPath);
        dispatcher.forward(request, response);
    }
}