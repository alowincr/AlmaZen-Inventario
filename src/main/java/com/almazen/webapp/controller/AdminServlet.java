package com.almazen.webapp.controller;

import java.io.IOException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AdminServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // Forzar encoding UTF-8 ANTES de cualquier procesamiento
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        // Obtener el parámetro 'action' de la URL
        String action = request.getParameter("action");

        // Variable para guardar el nombre de la página actual para el sidebar
        String currentPage = "inicio"; // Valor por defecto (dashboard principal)

        // Variable para el título de la página
        String tituloPagina = "Dashboard Administrador"; // Título por defecto

        // Lógica para determinar qué vista de admin mostrar y qué título/página activa establecer
        if (action != null) {
            switch (action) {
                case "empleados":
                    currentPage = "empleados";
                    tituloPagina = "Gestión de Empleados";
                    // Aquí, en un futuro, cargarías los datos de empleados.
                    // Por ahora, solo preparamos para la vista.
                    break;
                case "ventas":
                    currentPage = "ventas";
                    tituloPagina = "Registro de Ventas";
                    break;
                case "compras":
                    currentPage = "compras";
                    tituloPagina = "Registro de Compras";
                    break;
                case "inventario":
                    currentPage = "inventario";
                    tituloPagina = "Gestión de Inventario";
                    break;
                case "almacen":
                    currentPage = "almacen";
                    tituloPagina = "Gestión de Almacenes";
                    break;
                case "ayuda":
                    currentPage = "ayuda";
                    tituloPagina = "Ayuda y Soporte";
                    break;
                // Puedes añadir más 'case' para otras acciones/secciones
                default:
                    // Si la acción no es ninguna de las conocidas, volvemos al inicio (dashboard principal)
                    currentPage = "inicio";
                    tituloPagina = "Dashboard Administrador";
                    break;
            }
        }
        // Si 'action' es null, currentPage ya es "inicio" y tituloPagina es "Dashboard Administrador".

        // Establecemos los atributos para que el JSP los pueda usar
        request.setAttribute("tituloPagina", tituloPagina);
        request.setAttribute("currentPage", currentPage); // Para el sidebar activo

        // Hacemos forward al JSP principal del dashboard del administrador.
        // Este JSP es el que debe incluir tu sidebarAdmin.jspf.
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/admin/dashboardAdmin.jsp");
        dispatcher.forward(request, response);
    }

    // El método doPost podría manejar envíos de formularios (crear empleado, registrar venta, etc.)
    // protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // Lógica para procesar formularios
    // }
}
