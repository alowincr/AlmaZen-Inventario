<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>
<%
    // Forzar encoding UTF-8 para la respuesta
    response.setCharacterEncoding("UTF-8");
    request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Dashboard - Cliente</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    </head>
    <body class="dashboard-body">

        <div class="dashboard-container">

            <!-- Incluir el Sidebar del Administrador -->
            <!-- Verifica que la ruta sea correcta -->
            <%@include file="/WEB-INF/jsp/comunes/sidebarAdmin.jspf"%>

            <main class="main-content">
                <header class="main-header">
                    <div class="header-title" id="header-title">
                        ${empty tituloPagina ? "Dashboard Administrador" : tituloPagina}
                    </div>
                    <div class="user-info" id="show-profile-trigger" title="Ver Perfil">
                        <i class="fas fa-user-circle icon"></i>
                        <span id="header-username">
                            ${empty sessionScope.usuarioNombre ? "Admin" : sessionScope.usuarioNombre}
                        </span>
                    </div>
                </header>

                <div class="content-area">
                    <h3>
                        Resumen General de mi Mercadería
                        <br/>
                        <small>${mensajeBienvenida}</small>
                    </h3>

                    <div class="stats-grid">
                        <div class="stat-card">
                            <h4>Total Inventario</h4>
                            <p>2,456</p>
                            <span><i class="fas fa-box icon-stat"></i> Productos en stock</span>
                        </div>
                        <div class="stat-card">
                            <h4>Ventas Mensuales</h4>
                            <p>S/ 45,678</p>
                            <span><i class="fas fa-dollar-sign icon-stat"></i> Último mes</span>
                        </div>
                        <div class="stat-card">
                            <h4>Órdenes Pendientes</h4>
                            <p>18</p>
                            <span><i class="fas fa-clock icon-stat"></i> Por procesar</span>
                        </div>
                        <div class="stat-card">
                            <h4>Stock Bajo</h4>
                            <p>23</p>
                            <span><i class="fas fa-exclamation-triangle icon-stat"></i> Items críticos</span>
                        </div>
                    </div>
                    
                    <h3>Actividad Reciente</h3>
                    <ul class="activity-list">
                        <li>
                            <span><i class="fas fa-plus-circle text-success"></i> Nuevo producto agregado: Monitor LCD 24"</span> 
                            <span class="time">Hace 2 horas</span>
                        </li>
                        <li>
                            <span><i class="fas fa-check-circle text-success"></i> Envío completado: Orden #45678</span>
                            <span class="time">Hace 5 horas</span>
                        </li>
                        <li>
                            <span><i class="fas fa-user-plus text-info"></i> Nuevo empleado registrado: María González</span> 
                            <span class="time">Hace 1 día</span>
                        </li>
                        <li>
                            <span><i class="fas fa-exchange-alt text-warning"></i> Transferencia iniciada: Alm. Central → Alm. Norte</span> 
                            <span class="time">Hace 1 día</span>
                        </li>
                    </ul>
                </div>
            </main>
        </div>

        <script src="${pageContext.request.contextPath}/js/script.js"></script>

    </body>
</html>