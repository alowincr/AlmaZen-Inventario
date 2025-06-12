

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AlmaZen - Sistema de Gestión de Almacén</title>
    <link rel="stylesheet" href="css/style2.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>

<body>

    <div id="landing-page">
        <header class="landing-header-v2">
            <div class="container header-container">
                <div class="logo">
                    <i class="fas fa-warehouse"></i> AlmaZen
                </div>
                <nav class="main-nav">
                    <ul>
                        <li><a href="#features">Características</a></li>
                        <li><a href="#testimonials">Testimonios</a></li>
                        <li><a href="#contact">Contacto</a></li>
                    </ul>
                </nav>
                <div class="header-actions">
                    <button id="show-login-btn" class="btn btn-secondary">Iniciar Sesión</button>
                    </div>
            </div>
        </header>

        <main>
            <section class="hero-section">
                <div class="container hero-content">
                    <div class="hero-text">
                        <h1>Gestiona tu Almacén de manera eficiente</h1>
                        <p>Optimiza tus operaciones con nuestro sistema integral de gestión de Almacén Control
                            total, desde cualquier lugar.</p>
                        <div class="hero-buttons">
                            <a href="Tour.jsp"><button class="btn btn-primary">Nuestras Instalaciones</button></a>
                            <a href="planes.jsp"> <button class="btn btn-secondary-outline">Ver Planes</button></a>
                        </div>
                    </div>
                    <div class="hero-image">
                        <div class="carousel-container">
                            <div class="carousel-track">
                                <div class="carousel-slide current-slide">
                                    <img src="images/tu-imagen-1.png" alt="Descripción Imagen 1">
                                </div>
                                <div class="carousel-slide">
                                    <img src="images/tu-imagen-2.png" alt="Descripción Imagen 2">
                                </div>
                                <div class="carousel-slide">
                                    <img src="images/tu-imagen-3.png" alt="Descripción Imagen 3">
                                </div>
                            </div>

                            <button class="carousel-button carousel-button--left hidden"> <i
                                    class="fas fa-chevron-left"></i>
                            </button>
                            <button class="carousel-button carousel-button--right">
                                <i class="fas fa-chevron-right"></i>
                            </button>

                            <div class="carousel-nav">
                                <button class="carousel-indicator current-indicator"></button>
                                <button class="carousel-indicator"></button>
                                <button class="carousel-indicator"></button>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="logos-section">
                <div class="container">
                    <p>Reconocido como el mejor servicio de control de Almacén</p>
                    <div class="logo-grid">
                        <img src="images/logoipsum-347.svg" alt="Logo Miller">
                        <img src="images/logoipsum-334.svg" alt="Logo Boheco">
                        <img src="images/logoipsum-336.svg" alt="Logo Max Marine">
                        <img src="images/logoipsum-348.svg" alt="Logo Badger">
                        <img src="images/logoipsum-356.svg" alt="Logo Element">
                    </div>
                </div>
            </section>

            <section id="features" class="features-section">
                <div class="container">
                    <h2>Características Principales</h2>
                    <div class="features-grid">
                        <div class="feature-card">
                            <i class="fas fa-chart-line feature-icon"></i>
                            <h3>Análisis en Tiempo Real</h3>
                            <p>Monitorea tu Almacén con datos actualizados y reportes detallados al instante.</p>
                        </div>
                        <div class="feature-card">
                            <i class="fas fa-mobile-alt feature-icon"></i>
                            <h3>Acceso Multiplataforma</h3>
                            <p>Gestiona tu Almacén desde cualquier dispositivo, en cualquier momento y lugar.</p>
                        </div>
                        <div class="feature-card">
                            <i class="fas fa-shield-alt feature-icon"></i>
                            <h3>Seguridad Avanzada</h3>
                            <p>Protección de datos y control de acceso multinivel para tu tranquilidad.</p>
                        </div>
                        <div class="feature-card">
                            <i class="fas fa-cogs feature-icon"></i>
                            <h3>Gestión Centralizada</h3>
                            <p>Ordena artículos, crea grupos y paquetes de productos, y centraliza el registro.</p>
                        </div>
                        <div class="feature-card">
                            <i class="fas fa-truck-moving feature-icon"></i>
                            <h3>Seguimiento Completo</h3>
                            <p>Rastrea los movimientos de los artículos y sus fechas de vencimiento.</p>
                        </div>
                        <div class="feature-card">
                            <i class="fas fa-boxes feature-icon"></i>
                            <h3>Control de Stock</h3>
                            <p>Establece puntos de reabastecimiento y realiza ajustes de inventario.</p>
                        </div>
                    </div>
                </div>
            </section>

            <section id="testimonials" class="testimonials-section">
                <div class="container">
                    <h2>Lo que dicen nuestros clientes</h2>
                    <div class="testimonials-grid">
                        <div class="testimonial-card">
                            <p>"Excelente sistema, ha mejorado significativamente nuestra eficiencia operativa.
                                ¡Totalmente recomendado!"</p>
                            <div class="testimonial-author">
                                <img src="images/MariaGarcia.jpeg" alt="Avatar Maria Garcia">
                                <div>
                                    <strong>Maria Garcia</strong>
                                    <span>Gerente General, Tech Solutions</span>
                                </div>
                            </div>
                        </div>
                        <div class="testimonial-card">
                            <p>"La mejor inversión que hemos hecho para nuestro control de inventario. Fácil de usar y
                                muy potente."</p>
                            <div class="testimonial-author">
                                <img src="images/CarlosRodriguez.jpeg" alt="Avatar Carlos Rodriguez">
                                <div>
                                    <strong>Carlos Rodríguez</strong>
                                    <span>Director Comercial, Global Parts</span>
                                </div>
                            </div>
                        </div>
                        <div class="testimonial-card">
                            <p>"Interfaz intuitiva y soporte técnico excepcional. AlmaZen nos ha facilitado enormemente
                                la gestión diaria."</p>
                            <div class="testimonial-author">
                                <img src="images/AnaMartinez.jpeg" alt="Avatar Ana Martinez">
                                <div>
                                    <strong>Ana Martínez</strong>
                                    <span>Supervisora de Almacén, LogistiCorp</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section id="contact" class="contact-section">
                <div class="container contact-layout-container">

                    <div class="contact-image">
                        <img src="images/Oficina.jpeg"
                            alt="Ilustración de contacto o equipo de AlmaZen" onerror="this.onerror=null;this.src='https://placehold.co/500x400/EEEEEE/AAAAAA?text=Imagen+no+disponible';">
                    </div>

                    <div class="contact-form-content">
                        <h3>¿Interesado? ¡Hablemos!</h3>
                        <p>Envíanos tus datos y un miembro de nuestro equipo se comunicará contigo para resolver tus
                            dudas.</p>

                        <form id="contact-form" action="#" method="POST">
                            <div class="form-group">
                                <label for="contact-name">Nombre Completo <span class="required">*</span></label>
                                <input type="text" id="contact-name" name="nombreCompleto" placeholder="Ej: Juan Pérez"
                                    required>
                            </div>
                            <div class="form-group">
                                <label for="contact-email">Correo Electrónico <span class="required">*</span></label>
                                <input type="email" id="contact-email" name="correo"
                                    placeholder="juan.perez@empresa.com" required>
                            </div>
                            <div class="form-group">
                                <label for="contact-company">Empresa</label>
                                <input type="text" id="contact-company" name="empresa"
                                    placeholder="Nombre de tu compañía">
                            </div>
                            <div class="form-group">
                                <label for="contact-role">Cargo</label>
                                <input type="text" id="contact-role" name="cargo"
                                    placeholder="Ej: Gerente de Logística">
                            </div>
                            <div class="form-group">
                                <label for="contact-phone">Teléfono (Opcional)</label>
                                <input type="tel" id="contact-phone" name="telefono" placeholder="+51 987 654 321">
                            </div>
                            <div class="form-group">
                                <label for="contact-message">Mensaje <span class="required">*</span></label>
                                <textarea id="contact-message" name="mensaje" rows="5"
                                    placeholder="Escribe tu consulta, requerimiento o mensaje aquí..."
                                    required></textarea>
                            </div>
                            <div class="form-actions-contact">
                                <button type="submit" class="btn btn-primary">Enviar Mensaje</button>
                                <a href="https://wa.me/51987654321" target="_blank" class="btn btn-whatsapp">
                                    <i class="fab fa-whatsapp"></i> Contáctanos
                                </a>
                            </div>
                        </form>
                    </div>
                </div>
            </section>

            <section class="final-cta-section">
                <div class="container cta-layout-container">

                    <div class="cta-text-content">
                        <h2>Plataforma integral para gestión y administración de Almacén</h2>
                        <p>Comienza hoy tu prueba gratuita de 14 días sin riesgos.</p>

                        <ul class="cta-benefits-list">
                            <li><i class="fas fa-check-circle"></i> Control total de tu stock en tiempo real.</li>
                            <li><i class="fas fa-check-circle"></i> Reportes y análisis para tomar mejores decisiones.
                            </li>
                            <li><i class="fas fa-check-circle"></i> Acceso seguro desde cualquier dispositivo.</li>
                        </ul>

                        <a href="planes.jsp"> <button class="btn btn-secondary-outline">Adquiérelo Ya</button></a>
                    </div>

                    <div class="cta-image-placeholder">
                        <img src="images/Ilustraicion1.jpg" alt="Ilustración o captura de AlmaZen">
                    </div>

                </div>
            </section>

        </main>

        <footer class="landing-footer-v2">
            <div class="container footer-grid">
                <div class="footer-col">
                    <h4>AlmaZen</h4>
                    <p>Soluciones integrales para la gestión de Almacén.</p>
                    <p>© 2024 AlmaZen. Todos los derechos reservados.</p>
                </div>
                <div class="footer-col">
                    <h4>Enlaces Rápidos</h4>
                    <ul>
                        <li><a href="#features">Características</a></li>
                        <li><a href="#">Precios</a></li>
                        <li><a href="#testimonials">Testimonios</a></li>
                        <li><a href="#">Blog</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h4>Contacto</h4>
                    <ul>
                        <li><i class="fas fa-envelope"></i> info@almazen-inventario.com</li>
                        <li><i class="fas fa-phone"></i> +1 234 567 890</li>
                        <li><i class="fas fa-map-marker-alt"></i> Calle Ficticia 123, Ciudad</li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h4>Síguenos</h4>
                    <div class="social-icons">
                        <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                        <a href="#" aria-label="LinkedIn"><i class="fab fa-linkedin-in"></i></a>
                        <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="container">
                    <a href="politicas_privacidad_almazen.jsp">Política de Privacidad</a> | <a href="terminos_almazen.jsp">Términos de Servicio</a> | <a
                        href="#">Cookies</a>
                </div>
            </div>
        </footer>
    </div> <div id="login-modal" class="modal hidden">
        <div class="modal-content">
            <span class="close-btn">×</span>
            <h2>Sistema Almacén</h2>
            <p>Inicie sesión para continuar</p>
            <form id="login-form">
                <div class="form-group">
                    <label for="empresa">Empresa</label>
                    <input type="text" id="empresa" name="empresa" required placeholder="Nombre de la Empresa">
                </div>
                <div class="form-group">
                    <label for="usuario">Usuario / Correo electrónico</label>
                    <input type="text" id="usuario" name="usuario" required placeholder="usuario@empresa.com">
                </div>
                <div class="form-group">
                    <label for="contrasena">Contraseña</label>
                    <input type="password" id="contrasena" name="contrasena" required placeholder="********">
                </div>
                <button type="submit" class="btn btn-primary btn-block">Iniciar Sesión</button>
            </form>
        </div>
    </div>

    <div id="app-dashboard" class="dashboard-container hidden">
        <aside class="sidebar">
            <div class="sidebar-header">
                <div class="sidebar-logo logo"> <i class="fas fa-warehouse"></i> AlmaZen
                </div>
            </div>
            <nav class="sidebar-nav">
                <ul>
                    <li><a href="#inicio" class="nav-link active" data-target="content-inicio"><i
                                class="fas fa-home icon"></i> Inicio</a></li>
                    <li><a href="#empleados" class="nav-link" data-target="content-empleados"><i
                                class="fas fa-users icon"></i> Empleados</a></li>
                    <li><a href="#ventas" class="nav-link" data-target="content-ventas"><i
                                class="fas fa-shopping-cart icon"></i> Ventas</a></li>
                    <li><a href="#compras" class="nav-link" data-target="content-compras"><i
                                class="fas fa-box-open icon"></i> Compras</a></li>
                    <li><a href="#inventario" class="nav-link" data-target="content-inventario"><i
                                class="fas fa-boxes icon"></i> Inventario</a></li>
                    <li><a href="#almacen" class="nav-link" data-target="content-almacen"><i
                                class="fas fa-warehouse icon"></i> Almacen</a></li>
                    <li><a href="#ayuda" class="nav-link" data-target="content-ayuda"><i
                                class="fas fa-question-circle icon"></i> Ayuda y soporte</a></li>
                </ul>
            </nav>
            <div class="sidebar-footer">
                <button id="logout-btn" class="btn btn-secondary">Cerrar Sesión</button>
            </div>
        </aside>

        <main class="main-content">
            <header class="main-header">
                <div class="header-title" id="header-title">Inicio</div>
                <div class="user-info" id="openUserProfileModalBtn" title="Ver Perfil"> <i class="fas fa-user-circle icon"></i>
                    <span id="header-username">Admin Usuario</span>
                </div>
            </header>

            <div class="content-area">
                <section id="content-inicio" class="content-section active">
                    <h3>Resumen General</h3>
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
                        <li><span><i class="fas fa-plus-circle text-success"></i> Nuevo producto agregado: Monitor LCD
                                24"</span> <span class="time">Hace 2 horas</span></li>
                        <li><span><i class="fas fa-check-circle text-success"></i> Envío completado: Orden #45678</span>
                            <span class="time">Hace 5 horas</span></li>
                        <li><span><i class="fas fa-user-plus text-info"></i> Nuevo empleado registrado: Maria
                                Gonzalez</span> <span class="time">Hace 1 día</span></li>
                        <li><span><i class="fas fa-exchange-alt text-warning"></i> Transferencia iniciada: Alm. Central
                                -> Alm. Norte</span> <span class="time">Hace 1 día</span></li>
                    </ul>
                </section>

                <section id="content-empleados" class="content-section">
                    <h3>Gestión de Empleados</h3>
                    <div class="controls">
                        <input type="search" placeholder="Buscar empleado...">
                        <select>
                            <option>Departamento</option>
                            <option>Ventas</option>
                            <option>Almacén</option>
                        </select>
                        <select>
                            <option>Estado</option>
                            <option>Activo</option>
                            <option>Inactivo</option>
                        </select>
                        <button class="btn btn-secondary"><i class="fas fa-filter"></i> Aplicar Filtros</button>
                        <button id="openEmployeeModalBtn" class="btn btn-primary"><i class="fas fa-plus"></i> Nuevo Empleado</button>
                    </div>
                    <table>
                        <thead>
                            <tr>
                                <th>Empleado</th>
                                <th>ID</th>
                                <th>Departamento</th>
                                <th>Cargo</th>
                                <th>Estado</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><img src="https://via.placeholder.com/30x30?text=AM" alt="avatar"
                                        class="avatar-table"> Ana Martinez <br><small>ana.martinez@empresa.com</small>
                                </td>
                                <td>EMP001</td>
                                <td>Ventas</td>
                                <td>Gerente de Ventas</td>
                                <td><span class="status-badge status-active">Activo</span></td>
                                <td>
                                    <button class="btn-icon action-edit" title="Editar"><i
                                            class="fas fa-pencil-alt"></i></button>
                                    <button class="btn-icon action-delete" title="Eliminar"><i
                                            class="fas fa-trash-alt"></i></button>
                                </td>
                            </tr>
                            <tr>
                                <td><img src="https://via.placeholder.com/30x30?text=CR" alt="avatar"
                                        class="avatar-table"> Carlos Ruiz <br><small>carlos.ruiz@empresa.com</small>
                                </td>
                                <td>EMP002</td>
                                <td>Almacén</td>
                                <td>Supervisor</td>
                                <td><span class="status-badge status-active">Activo</span></td>
                                <td>
                                    <button class="btn-icon action-edit" title="Editar"><i
                                            class="fas fa-pencil-alt"></i></button>
                                    <button class="btn-icon action-delete" title="Eliminar"><i
                                            class="fas fa-trash-alt"></i></button>
                                </td>
                            </tr>
                            <tr>
                                <td><img src="https://via.placeholder.com/30x30?text=LF" alt="avatar"
                                        class="avatar-table"> Luisa Fernandez
                                    <br><small>luisa.fernandez@empresa.com</small></td>
                                <td>EMP003</td>
                                <td>Compras</td>
                                <td>Comprador Junior</td>
                                <td><span class="status-badge status-inactive">Inactivo</span></td>
                                <td>
                                    <button class="btn-icon action-edit" title="Editar"><i
                                            class="fas fa-pencil-alt"></i></button>
                                    <button class="btn-icon action-delete" title="Eliminar"><i
                                            class="fas fa-trash-alt"></i></button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="pagination">
                        <span>Mostrando 1-3 de 25 empleados</span>
                        <button disabled><i class="fas fa-chevron-left"></i> Anterior</button>
                        <button class="active">1</button>
                        <button>2</button>
                        <button>3</button>
                        <button>Siguiente <i class="fas fa-chevron-right"></i></button>
                    </div>
                </section>

                <section id="content-ventas" class="content-section">
                    <h3>Registro de Ventas</h3>
                     <div class="controls">
                        <button id="registerSaleBtn" class="btn btn-secondary"><i class="fas fa-check-circle"></i> Simular Venta Exitosa</button>
                    </div>
                    <form class="form-grid">
                        <fieldset>
                            <legend>Información del Cliente</legend>
                            <input type="text" placeholder="Nombre del Cliente">
                            <input type="text" placeholder="RUC/DNI">
                            <input type="text" placeholder="Dirección">
                        </fieldset>
                        <fieldset>
                            <legend>Detalles de Venta</legend>
                            <input type="text" placeholder="Nº de Factura (ej. FAC-2025-001)" value="FAC-2025-001">
                            <select>
                                <option>Seleccionar Vendedor</option>
                                <option>Ana Martinez</option>
                            </select>
                            <select>
                                <option>Método de Pago</option>
                                <option selected>Efectivo</option>
                                <option>Tarjeta</option>
                                <option>Transferencia</option>
                            </select>
                        </fieldset>
                        <fieldset class="full-width">
                            <legend>Productos</legend>
                            <div class="product-line">
                                <select>
                                    <option>Seleccionar Producto</option>
                                    <option>Laptop HP 15"</option>
                                </select>
                                <input type="number" placeholder="Cantidad" value="1">
                                <span>Precio Unit. S/ 2,499.00</span>
                                <span>Subtotal S/ 2,499.00</span>
                                <button type="button" class="btn-icon action-delete" title="Quitar"><i
                                        class="fas fa-trash-alt"></i></button>
                            </div>
                            <div class="product-line">
                                <select>
                                    <option>Seleccionar Producto</option>
                                    <option>Monitor 24"</option>
                                </select>
                                <input type="number" placeholder="Cantidad" value="2">
                                <span>Precio Unit. S/ 899.00</span>
                                <span>Subtotal S/ 1,798.00</span>
                                <button type="button" class="btn-icon action-delete" title="Quitar"><i
                                        class="fas fa-trash-alt"></i></button>
                            </div>
                            <button type="button" class="btn btn-secondary"><i class="fas fa-plus"></i> Agregar
                                Producto</button>
                        </fieldset>
                        <div class="totals-summary">
                            <p>Subtotal: <span>S/ 4,297.00</span></p>
                            <p>IGV (18%): <span>S/ 773.46</span></p>
                            <p><strong>Total:</strong> <span><strong>S/ 5,070.46</strong></span></p>
                            <div class="form-actions">
                                <button type="button" class="btn btn-secondary">Cancelar</button>
                                <button type="submit" class="btn btn-primary"><i class="fas fa-save"></i> Registrar
                                    Venta</button>
                            </div>
                        </div>
                    </form>
                </section>

                <section id="content-compras" class="content-section">
                    <h3>Registro de Compras</h3>
                    <div class="controls">
                         <button id="generatePOBtn" class="btn btn-secondary"><i class="fas fa-file-alt"></i> Ver Orden de Compra (Ejemplo)</button>
                    </div>
                    <form class="form-grid">
                        <fieldset>
                            <legend>Información del Proveedor</legend>
                            <input type="text" placeholder="Nombre del Proveedor">
                            <input type="text" placeholder="RUC">
                            <input type="text" placeholder="Dirección">
                            <input type="text" placeholder="Contacto">
                        </fieldset>
                        <fieldset>
                            <legend>Detalles de Compra</legend>
                            <input type="text" placeholder="Nº de Orden de Compra (ej. OC-2025-001)"
                                value="OC-2025-001">
                            <select>
                                <option>Almacén Destino</option>
                                <option selected>Almacén Central</option>
                                <option>Almacén Norte</option>
                            </select>
                            <select>
                                <option>Tipo de Compra</option>
                                <option selected>Nacional</option>
                                <option>Internacional</option>
                            </select>
                            <select>
                                <option>Condición de Pago</option>
                                <option selected>Contado</option>
                                <option>Crédito 30 días</option>
                            </select>
                        </fieldset>
                        <fieldset class="full-width">
                            <legend>Productos a Comprar</legend>
                            <div class="product-line-compras">
                                <span>PRD001</span>
                                <select>
                                    <option>Seleccionar Producto</option>
                                    <option selected>Laptop HP 15"</option>
                                </select>
                                <input type="number" placeholder="Cantidad" value="10">
                                <select>
                                    <option>Unidad</option>
                                    <option selected>Unidades</option>
                                </select>
                                <input type="text" placeholder="Precio Unit." value="S/ 1,800.00">
                                <input type="date" placeholder="Fecha Entrega">
                                <span>Subtotal S/ 18,000.00</span>
                                <button type="button" class="btn-icon action-delete" title="Quitar"><i
                                        class="fas fa-trash-alt"></i></button>
                            </div>
                            <button type="button" class="btn btn-secondary"><i class="fas fa-plus"></i> Agregar
                                Producto</button>
                        </fieldset>
                        <fieldset class="full-width">
                            <legend>Costos Adicionales</legend>
                            <input type="text" placeholder="Flete" value="S/ 150.00">
                            <input type="text" placeholder="Seguro" value="S/ 50.00">
                            <input type="text" placeholder="Otros Gastos">
                        </fieldset>
                        <div class="totals-summary">
                            <p>Subtotal: <span>S/ 18,000.00</span></p>
                            <p>Costos Adicionales: <span>S/ 200.00</span></p>
                            <p>IGV (18%): <span>S/ 3,276.00</span></p>
                            <p><strong>Total:</strong> <span><strong>S/ 21,476.00</strong></span></p>
                            <div class="form-actions">
                                <button type="button" class="btn btn-secondary">Guardar Borrador</button>
                                <button type="button" class="btn btn-secondary">Cancelar</button>
                                <button type="submit" class="btn btn-primary"><i class="fas fa-check"></i> Generar Orden
                                    de Compra</button>
                            </div>
                        </div>
                    </form>
                </section>

                <section id="content-inventario" class="content-section">
                    <h3>Gestión de Inventario</h3>
                    <div class="stats-grid">
                        <div class="stat-card">
                            <h4>Total Productos</h4>
                            <p>2,547</p><span><i class="fas fa-boxes icon-stat"></i> Activos</span>
                        </div>
                        <div class="stat-card">
                            <h4>Stock Bajo</h4>
                            <p>23</p><span><i class="fas fa-exclamation-triangle icon-stat"></i> Necesitan
                                reposición</span>
                        </div>
                        <div class="stat-card">
                            <h4>Valor Total</h4>
                            <p>S/ 154,230.00</p><span><i class="fas fa-dollar-sign icon-stat"></i> Valorizado</span>
                        </div>
                        <div class="stat-card">
                            <h4>Movimientos Hoy</h4>
                            <p>47</p><span><i class="fas fa-sync-alt icon-stat"></i> Entradas/Salidas</span>
                        </div>
                    </div>
                    <div class="controls">
                        <input type="search" placeholder="Buscar productos...">
                        <select>
                            <option>Todas las Categorías</option>
                            <option>Electrónicos</option>
                            <option>Oficina</option>
                        </select>
                        <select>
                            <option>Todos los Almacenes</option>
                            <option>Central</option>
                            <option>Norte</option>
                        </select>
                        <select>
                            <option>Estado de Stock</option>
                            <option>Disponible</option>
                            <option>Bajo</option>
                            <option>Agotado</option>
                        </select>
                        <button id="openNewProductModalBtn" class="btn btn-primary"><i class="fas fa-plus"></i> Nuevo Producto</button>
                    </div>
                    <table>
                        <thead>
                            <tr>
                                <th>Código</th>
                                <th>Producto</th>
                                <th>Categoría</th>
                                <th>Stock</th>
                                <th>Precio Unit.</th>
                                <th>Ubicación</th>
                                <th>Estado</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>PRD001</td>
                                <td>Laptop HP 15"</td>
                                <td>Electrónicos</td>
                                <td>45 unidades</td>
                                <td>S/ 2,499.00</td>
                                <td>Almacén Central</td>
                                <td><span class="status-badge status-active">Activo</span></td>
                                <td>
                                    <button class="btn-icon action-edit" title="Editar"><i
                                            class="fas fa-pencil-alt"></i></button>
                                    <button class="btn-icon action-view" title="Ver Detalles"><i
                                            class="fas fa-eye"></i></button>
                                </td>
                            </tr>
                            <tr>
                                <td>PRD002</td>
                                <td>Monitor 24"</td>
                                <td>Electrónicos</td>
                                <td><span class="text-danger">5 unidades</span></td>
                                <td>S/ 899.00</td>
                                <td>Almacén Norte</td>
                                <td><span class="status-badge status-low-stock">Stock Bajo</span></td>
                                <td>
                                    <button class="btn-icon action-edit" title="Editar"><i
                                            class="fas fa-pencil-alt"></i></button>
                                    <button class="btn-icon action-view" title="Ver Detalles"><i
                                            class="fas fa-eye"></i></button>
                                </td>
                            </tr>
                            <tr>
                                <td>PRD003</td>
                                <td>Silla Oficina Ergonomic</td>
                                <td>Mobiliario</td>
                                <td>150 unidades</td>
                                <td>S/ 350.00</td>
                                <td>Almacén Central</td>
                                <td><span class="status-badge status-active">Activo</span></td>
                                <td>
                                    <button class="btn-icon action-edit" title="Editar"><i
                                            class="fas fa-pencil-alt"></i></button>
                                    <button class="btn-icon action-view" title="Ver Detalles"><i
                                            class="fas fa-eye"></i></button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="pagination">
                        <span>Mostrando 1-10 de 2,547 productos</span>
                        <button disabled><i class="fas fa-chevron-left"></i> Anterior</button>
                        <button class="active">1</button>
                        <button>2</button>
                        <button>...</button>
                        <button>255</button>
                        <button>Siguiente <i class="fas fa-chevron-right"></i></button>
                    </div>
                    <h3>Actividad Reciente (Inventario)</h3>
                    <ul class="activity-list">
                        <li><span><i class="fas fa-exchange-alt text-info"></i> Transferencia de productos entre
                                almacenes</span> <span class="time">Hace 5 minutos</span></li>
                        <li><span><i class="fas fa-plus-circle text-success"></i> Nuevo producto agregado: Laptop HP
                                15"</span> <span class="time">Hace 15 minutos</span></li>
                        <li><span><i class="fas fa-exclamation-triangle text-warning"></i> Alerta de stock bajo: Monitor
                                24"</span> <span class="time">Hace 30 minutos</span></li>
                    </ul>
                </section>

                <section id="content-almacen" class="content-section">
                    <h3>Gestión de Almacén</h3>
                    <div class="stats-grid">
                        <div class="stat-card">
                            <h4>Total Almacenes</h4>
                            <p>4</p><span><i class="fas fa-warehouse icon-stat"></i> Activos</span>
                        </div>
                        <div class="stat-card">
                            <h4>Total Estanterías</h4>
                            <p>156</p><span><i class="fas fa-th icon-stat"></i> Registradas</span>
                        </div>
                        <div class="stat-card">
                            <h4>Capacidad Utilizada</h4>
                            <p>78%</p><span><i class="fas fa-chart-pie icon-stat"></i> Promedio</span>
                        </div>
                        <div class="stat-card">
                            <h4>Transferencias Pendientes</h4>
                            <p>12</p><span><i class="fas fa-truck-loading icon-stat"></i> En proceso</span>
                        </div>
                    </div>
                    <div class="controls">
                        <button id="openNewWarehouseModalBtn" class="btn btn-primary"><i class="fas fa-plus"></i> Nuevo Almacén</button>
                        <button id="openNewTransferModalBtn" class="btn btn-primary"><i class="fas fa-exchange-alt"></i> Nueva Transferencia</button>
                        <button id="openManageShelvesModalBtn" class="btn btn-secondary"><i class="fas fa-tasks"></i> Gestionar Estanterías</button>
                    </div>
                    <div class="warehouse-grid">
                        <div class="warehouse-card">
                            <h4>Almacén Central <span class="badge primary">Principal</span></h4>
                            <p><i class="fas fa-ruler-combined"></i> Capacidad: 2500m²</p>
                            <p><i class="fas fa-percent"></i> Ocupación: 85%</p>
                            <p><i class="fas fa-th-large"></i> Estanterías: 48</p>
                            <p><i class="fas fa-box"></i> Productos: 1,245</p>
                            <button class="btn btn-secondary"><i class="fas fa-search-plus"></i> Ver Detalles</button>
                        </div>
                        <div class="warehouse-card">
                            <h4>Almacén Norte <span class="badge secondary">Secundario</span></h4>
                            <p><i class="fas fa-ruler-combined"></i> Capacidad: 1800m²</p>
                            <p><i class="fas fa-percent"></i> Ocupación: 65%</p>
                            <p><i class="fas fa-th-large"></i> Estanterías: 36</p>
                            <p><i class="fas fa-box"></i> Productos: 856</p>
                            <button class="btn btn-secondary"><i class="fas fa-search-plus"></i> Ver Detalles</button>
                        </div>
                        </div>
                    <h3>Transferencias Recientes</h3>
                    <table>
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Origen</th>
                                <th>Destino</th>
                                <th>Productos</th>
                                <th>Estado</th>
                                <th>Fecha</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>TRF001</td>
                                <td>Almacén Central</td>
                                <td>Almacén Norte</td>
                                <td>23 items</td>
                                <td><span class="status-badge status-in-process">En Proceso</span></td>
                                <td>2025-01-15</td>
                                <td><button class="btn-icon action-view" title="Ver"><i class="fas fa-eye"></i></button>
                                </td>
                            </tr>
                            <tr>
                                <td>TRF002</td>
                                <td>Almacén Norte</td>
                                <td>Almacén Sur</td>
                                <td>15 items</td>
                                <td><span class="status-badge status-completed">Completado</span></td>
                                <td>2025-01-14</td>
                                <td><button class="btn-icon action-view" title="Ver"><i class="fas fa-eye"></i></button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <h3>Gestión de Estanterías (Vista Simplificada)</h3>
                    <div class="shelving-grid">
                        <div class="shelving-section">
                            <h4>Sección A <span class="text-warning">(90% Lleno)</span></h4>
                            <ul>
                                <li>A-1: Electrónicos</li>
                                <li>A-2: Periféricos</li>
                                <li>A-3: Disponible</li>
                            </ul>
                        </div>
                        <div class="shelving-section">
                            <h4>Sección B <span class="text-success">(75% Lleno)</span></h4>
                            <ul>
                                <li>B-1: Mobiliario</li>
                                <li>B-2: Disponible</li>
                                <li>B-3: Accesorios</li>
                            </ul>
                        </div>
                        <div class="shelving-section">
                            <h4>Sección C <span class="text-info">(60% Lleno)</span></h4>
                            <ul>
                                <li>C-1: Papelería</li>
                                <li>C-2: Varios</li>
                                <li>C-3: Disponible</li>
                            </ul>
                        </div>
                    </div>
                </section>

                <section id="content-ayuda" class="content-section">
                    <h3>Ayuda y soporte</h3>
                    <p>Encuentra respuestas y resuelve tus dudas rápidamente</p>
                    <div class="controls">
                        <input type="search" placeholder="Buscar en la ayuda..." class="full-width">
                    </div>

                    <h4>Preguntas Frecuentes</h4>
                    <details class="faq-item">
                        <summary><i class="fas fa-question-circle"></i> ¿Cómo agregar un nuevo producto al inventario?
                        </summary>
                        <p>Para agregar un nuevo producto, ve a la sección de <strong>Inventario</strong> y haz clic en
                            el botón <button class="btn btn-primary btn-sm" id="openNewProductModalBtnInFAQ"><i class="fas fa-plus"></i> Nuevo
                                Producto</button>. Completa todos los campos requeridos y guarda los cambios.</p>
                    </details>
                    <details class="faq-item">
                        <summary><i class="fas fa-question-circle"></i> ¿Cómo realizar una transferencia entre
                            almacenes?</summary>
                        <p>Accede a la sección de <strong>Almacén</strong>, selecciona <button
                                class="btn btn-primary btn-sm" id="openNewTransferModalBtnInFAQ"><i class="fas fa-exchange-alt"></i> Nueva
                                Transferencia</button> y elige el almacén de origen y destino. Selecciona los productos
                            y cantidades a transferir.</p>
                    </details>
                    <details class="faq-item">
                        <summary><i class="fas fa-question-circle"></i> ¿Qué hago si el stock no se actualiza?</summary>
                        <p>Verifica que todas las transacciones se hayan guardado correctamente. Si el problema
                            persiste, realiza una actualización manual del stock desde la sección de inventario o
                            contacta a soporte.</p>
                    </details>

                    <h4>Guías y Tutoriales</h4>
                    <div class="guides-grid">
                        <div class="guide-card">
                            <i class="fas fa-book-open guide-icon"></i>
                            <h5>Guía de inicio rápido</h5>
                            <p>Aprende los conceptos básicos para comenzar a usar el sistema.</p>
                            <button class="btn btn-secondary"><i class="fas fa-arrow-right"></i> Ver más</button>
                        </div>
                        <div class="guide-card">
                            <i class="fas fa-tasks guide-icon"></i>
                            <h5>Cómo gestionar tu inventario</h5>
                            <p>Tutorial completo sobre gestión de inventario y stock.</p>
                            <button class="btn btn-secondary"><i class="fas fa-arrow-right"></i> Ver más</button>
                        </div>
                        <div class="guide-card">
                            <i class="fas fa-chart-bar guide-icon"></i>
                            <h5>Reportes y análisis</h5>
                            <p>Aprende a generar y analizar reportes del sistema.</p>
                            <button class="btn btn-secondary"><i class="fas fa-arrow-right"></i> Ver más</button>
                        </div>
                    </div>

                    <h4>¿Necesitas más ayuda?</h4>
                    <p>Habla con nuestro equipo si necesitas ayuda personalizada.</p>
                    <button id="openSupportModalBtn" class="btn btn-primary"><i class="fas fa-headset"></i> Contactar con soporte</button>
                    <button id="openQuickQueryModalBtn" class="btn btn-secondary" style="margin-left: 10px;"><i class="fas fa-search"></i> Consulta Rápida</button>
                </section>

            </div> </main> </div> <div id="employeeModal" class="fixed inset-0 bg-gray-600 bg-opacity-50 overflow-y-auto h-full w-full justify-center items-center p-4 z-50 opacity-0 hidden"> <div class="bg-white p-6 md:p-8 rounded-lg shadow-xl w-full max-w-2xl mx-auto scale-95" id="modalContent"> <div class="flex justify-between items-center border-b border-gray-200 pb-3 mb-4"><h3 class="text-2xl font-semibold text-gray-800">Agregar Nuevo Empleado</h3><button id="closeEmployeeModalBtn" class="text-gray-500 hover:text-gray-700 text-2xl font-bold cursor-pointer">×</button></div> <form id="newEmployeeForm"> <div class="grid grid-cols-1 md:grid-cols-2 gap-4 md:gap-6"><div><label for="nombre" class="block text-sm font-medium text-gray-700 mb-1">Nombre Completo</label><input type="text" id="nombre" name="nombre" class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-amber-500 focus:border-amber-500 sm:text-sm" placeholder="Ej: Ana Martínez" required=""></div><div><label for="email" class="block text-sm font-medium text-gray-700 mb-1">Email</label><input type="email" id="email" name="email" class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-amber-500 focus:border-amber-500 sm:text-sm" placeholder="Ej: ana.martinez@empresa.com" required=""></div><div><label for="idEmpleado" class="block text-sm font-medium text-gray-700 mb-1">ID Empleado</label><input type="text" id="idEmpleado" name="idEmpleado" value="EMP004" class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm bg-gray-100 focus:outline-none sm:text-sm" readonly=""></div><div><label for="departamento" class="block text-sm font-medium text-gray-700 mb-1">Departamento</label><select id="departamento" name="departamento" class="mt-1 block w-full px-3 py-2 border border-gray-300 bg-white rounded-md shadow-sm focus:outline-none focus:ring-amber-500 focus:border-amber-500 sm:text-sm" required=""><option value="" disabled="" selected="">Seleccione un departamento</option><option value="Ventas">Ventas</option><option value="Almacén">Almacén</option><option value="Compras">Compras</option><option value="Tecnología">Tecnología</option><option value="Recursos Humanos">Recursos Humanos</option><option value="Otro">Otro</option></select></div><div><label for="cargo" class="block text-sm font-medium text-gray-700 mb-1">Cargo</label><input type="text" id="cargo" name="cargo" class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-amber-500 focus:border-amber-500 sm:text-sm" placeholder="Ej: Desarrollador Web" required=""></div><div><label for="estado" class="block text-sm font-medium text-gray-700 mb-1">Estado</label><select id="estado" name="estado" class="mt-1 block w-full px-3 py-2 border border-gray-300 bg-white rounded-md shadow-sm focus:outline-none focus:ring-amber-500 focus:border-amber-500 sm:text-sm" required=""><option value="Activo" selected="">Activo</option><option value="Inactivo">Inactivo</option></select></div><div class="md:col-span-2"><label for="fotoUrl" class="block text-sm font-medium text-gray-700 mb-1">URL de Foto (Opcional)</label><input type="url" id="fotoUrl" name="fotoUrl" class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-amber-500 focus:border-amber-500 sm:text-sm" placeholder="https://example.com/foto.jpg"><p class="text-xs text-gray-500 mt-1">Pega la URL de la imagen del empleado.</p></div></div> <div class="mt-6 pt-4 border-t border-gray-200 flex justify-end space-x-3"><button type="button" id="cancelEmployeeModalBtn" class="bg-gray-200 hover:bg-gray-300 text-gray-800 font-semibold py-2 px-4 rounded-lg cursor-pointer">Cancelar</button><button type="submit" class="bg-amber-400 hover:bg-amber-500 text-gray-800 font-semibold py-2 px-4 rounded-lg shadow cursor-pointer">Guardar Empleado</button></div> </form> </div> </div>
    <div id="successModal" class="hidden opacity-0 fixed inset-0 bg-gray-600 bg-opacity-50 overflow-y-auto h-full w-full justify-center items-center p-4 z-50"> <div class="bg-white p-6 md:p-8 rounded-lg shadow-xl w-full max-w-sm mx-auto scale-95 text-center" id="successModalContent"><p class="text-xl text-gray-700">¡Operación realizada exitosamente!</p><div class="flex justify-center my-6"><svg xmlns="http://www.w3.org/2000/svg" class="h-16 w-16 text-orange-500" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path></svg></div><button id="closeSuccessModalBtn" class="bg-amber-400 hover:bg-amber-500 text-gray-800 font-semibold py-2 px-4 rounded-lg shadow cursor-pointer">Cerrar</button></div> </div>
    <div id="purchaseOrderModal" class="hidden opacity-0 fixed inset-0 bg-gray-600 bg-opacity-50 overflow-y-auto h-full w-full justify-center items-start p-4 pt-8 md:pt-12 z-50"> <div class="bg-white rounded-lg shadow-xl w-full max-w-4xl mx-auto scale-95" id="purchaseOrderModalContent"> <div class="flex justify-between items-center border-b border-gray-200 p-4 md:p-6"><div class="flex items-center space-x-3"><svg xmlns="http://www.w3.org/2000/svg" class="h-7 w-7 text-green-500" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path></svg><h3 class="text-xl md:text-2xl font-semibold text-gray-800">Orden de Compra Generada Exitosamente</h3></div><button id="closePOModalBtn" class="text-gray-500 hover:text-gray-700 text-2xl font-bold cursor-pointer">×</button></div> <div class="p-4 md:p-6 text-sm"><div class="po-grid mb-6"><div class="po-section"><h4>Información del Proveedor</h4><div class="po-grid-item"><span class="po-label">Nombre:</span><span class="po-value">Tech Distributors S.A.C.</span></div><div class="po-grid-item"><span class="po-label">RUC:</span><span class="po-value">20123456789</span></div><div class="po-grid-item"><span class="po-label">Dirección:</span><span class="po-value">Av. Principal 123, Lima</span></div><div class="po-grid-item"><span class="po-label">Contacto:</span><span class="po-value">Juan Perez - jperez@techdist.com</span></div></div><div class="po-section"><h4>Detalles de Compra</h4><div class="po-grid-item"><span class="po-label">N° Orden:</span><span class="po-value">OC-2025-001</span></div><div class="po-grid-item"><span class="po-label">Almacén:</span><span class="po-value">Almacén Central</span></div><div class="po-grid-item"><span class="po-label">Tipo:</span><span class="po-value">Nacional</span></div><div class="po-grid-item"><span class="po-label">Condición:</span><span class="po-value">Contado</span></div></div></div><div class="po-section"><h4>Productos</h4><div class="po-table-header"><span>ID Prod.</span><span>Descripción</span><span>Cantidad</span><span>Unidad</span><span>Precio Unit.</span><span>Subtotal</span></div><div class="po-table-row"><span>PRD001</span><span>Laptop HP 15" Core i5 8GB</span><span>10</span><span>Unidades</span><span id="po-unit-price">S/ 1,800.00</span><span id="po-product-subtotal">S/ 18,000.00</span></div></div><div class="po-section"><h4>Costos Adicionales y Totales</h4><div class="po-totals-grid"><span class="po-totals-label">Subtotal Productos:</span><span class="po-totals-value" id="po-subtotal1">S/ 18,000.00</span><span class="po-totals-label">Transporte:</span><span class="po-totals-value">S/ 150.00</span><span class="po-totals-label">Seguros:</span><span class="po-totals-value">S/ 50.00</span><span class="po-totals-label">Subtotal General:</span><span class="po-totals-value" id="po-subtotal2">S/ 18,200.00</span><span class="po-totals-label">IGV (18%):</span><span class="po-totals-value" id="po-igv">S/ 3,276.00</span><span class="po-totals-label text-lg">Total Orden:</span><span class="po-totals-value text-lg" id="po-total">S/ 21,476.00</span></div></div></div> <div class="border-t border-gray-200 p-4 md:p-6 flex justify-end"><button id="exportPOBtn" class="bg-amber-400 hover:bg-amber-500 text-gray-800 font-semibold py-2 px-4 rounded-lg shadow cursor-pointer flex items-center space-x-2"><svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M4 16v1a3 3 0 003 3h10a3 3 0 003-3v-1m-4-4l-4 4m0 0l-4-4m4 4V4"></path></svg><span>Exportar</span></button></div> </div> </div>
    <div id="newProductModal" class="hidden opacity-0 fixed inset-0 bg-gray-600 bg-opacity-50 overflow-y-auto h-full w-full justify-center items-center p-4 z-50"> <div class="bg-white p-6 md:p-8 rounded-lg shadow-xl w-full max-w-3xl mx-auto scale-95" id="newProductModalContent"> <div class="flex justify-between items-center border-b border-gray-200 pb-3 mb-4"><h3 class="text-2xl font-semibold text-gray-800">Agregar Nuevo Producto</h3><button id="closeNewProductModalBtn" class="text-gray-500 hover:text-gray-700 text-2xl font-bold cursor-pointer">×</button></div> <form id="newProductForm"> <div class="grid grid-cols-1 md:grid-cols-2 gap-4 md:gap-6"> <div><label for="prodCodigo" class="block text-sm font-medium text-gray-700 mb-1">Código</label><input type="text" id="prodCodigo" name="prodCodigo" value="PRD004" class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm bg-gray-100 focus:outline-none sm:text-sm" readonly=""></div> <div class="md:col-span-1"><label for="prodNombre" class="block text-sm font-medium text-gray-700 mb-1">Nombre del Producto</label><input type="text" id="prodNombre" name="prodNombre" class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-amber-500 focus:border-amber-500 sm:text-sm" placeholder="Ej: Teclado Inalámbrico" required=""></div> <div><label for="prodCategoria" class="block text-sm font-medium text-gray-700 mb-1">Categoría</label><select id="prodCategoria" name="prodCategoria" class="mt-1 block w-full px-3 py-2 border border-gray-300 bg-white rounded-md shadow-sm focus:outline-none focus:ring-amber-500 focus:border-amber-500 sm:text-sm" required=""><option value="" disabled="" selected="">Seleccione categoría</option><option value="Electrónicos">Electrónicos</option><option value="Mobiliario">Mobiliario</option><option value="Oficina">Oficina</option><option value="Limpieza">Limpieza</option><option value="Otro">Otro</option></select></div> <div><label for="prodStock" class="block text-sm font-medium text-gray-700 mb-1">Stock Inicial</label><input type="number" id="prodStock" name="prodStock" min="0" class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-amber-500 focus:border-amber-500 sm:text-sm" placeholder="Ej: 50" required=""></div> <div><label for="prodPrecio" class="block text-sm font-medium text-gray-700 mb-1">Precio Unitario</label><div class="mt-1 relative rounded-md shadow-sm"><div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none"><span class="text-gray-500 sm:text-sm">S/</span></div><input type="number" id="prodPrecio" name="prodPrecio" min="0" step="0.01" inputmode="decimal" class="block w-full pl-7 pr-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-amber-500 focus:border-amber-500 sm:text-sm" placeholder="0.00" required=""></div></div> <div><label for="prodUbicacion" class="block text-sm font-medium text-gray-700 mb-1">Ubicación</label><select id="prodUbicacion" name="prodUbicacion" class="mt-1 block w-full px-3 py-2 border border-gray-300 bg-white rounded-md shadow-sm focus:outline-none focus:ring-amber-500 focus:border-amber-500 sm:text-sm" required=""><option value="" disabled="" selected="">Seleccione ubicación</option><option value="Almacén Central">Almacén Central</option><option value="Almacén Norte">Almacén Norte</option><option value="Almacén Sur">Almacén Sur</option><option value="Tienda Principal">Tienda Principal</option></select></div> <div class="md:col-span-2"><label for="prodEstado" class="block text-sm font-medium text-gray-700 mb-1">Estado Inicial</label><select id="prodEstado" name="prodEstado" class="mt-1 block w-full px-3 py-2 border border-gray-300 bg-white rounded-md shadow-sm focus:outline-none focus:ring-amber-500 focus:border-amber-500 sm:text-sm" required=""><option value="Activo" selected="">Activo</option><option value="Inactivo">Inactivo</option></select></div> </div> <div class="mt-6 pt-4 border-t border-gray-200 flex justify-end space-x-3"><button type="button" id="cancelNewProductModalBtn" class="bg-gray-200 hover:bg-gray-300 text-gray-800 font-semibold py-2 px-4 rounded-lg cursor-pointer">Cancelar</button><button type="submit" class="bg-amber-400 hover:bg-amber-500 text-gray-800 font-semibold py-2 px-4 rounded-lg shadow cursor-pointer">Guardar Producto</button></div> </form> </div> </div>
    <div id="newWarehouseModal" class="hidden opacity-0 fixed inset-0 bg-gray-600 bg-opacity-50 overflow-y-auto h-full w-full justify-center items-center p-4 z-50"> <div class="bg-white p-6 md:p-8 rounded-lg shadow-xl w-full max-w-lg mx-auto scale-95" id="newWarehouseModalContent"> <div class="flex justify-between items-center border-b border-gray-200 pb-3 mb-4"><h3 class="text-2xl font-semibold text-gray-800">Agregar Nuevo Almacén</h3><button id="closeNewWarehouseModalBtn" class="text-gray-500 hover:text-gray-700 text-2xl font-bold cursor-pointer">×</button></div> <form id="newWarehouseForm"> <div class="space-y-4"> <div><label for="whName" class="block text-sm font-medium text-gray-700 mb-1">Nombre del Almacén</label><input type="text" id="whName" name="whName" class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-amber-500 focus:border-amber-500 sm:text-sm" placeholder="Ej: Almacén Este" required=""></div> <div><label for="whAddress" class="block text-sm font-medium text-gray-700 mb-1">Dirección</label><input type="text" id="whAddress" name="whAddress" class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-amber-500 focus:border-amber-500 sm:text-sm" placeholder="Ej: Av. Las Flores 456" required=""></div> <div><label for="whCapacity" class="block text-sm font-medium text-gray-700 mb-1">Capacidad (m²)</label><input type="number" id="whCapacity" name="whCapacity" min="0" class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-amber-500 focus:border-amber-500 sm:text-sm" placeholder="Ej: 1500" required=""></div> <div><label for="whType" class="block text-sm font-medium text-gray-700 mb-1">Tipo</label><select id="whType" name="whType" class="mt-1 block w-full px-3 py-2 border border-gray-300 bg-white rounded-md shadow-sm focus:outline-none focus:ring-amber-500 focus:border-amber-500 sm:text-sm" required=""><option value="" disabled="" selected="">Seleccione tipo</option><option value="Principal">Principal</option><option value="Secundario">Secundario</option><option value="Tránsito">Tránsito</option></select></div> </div> <div class="mt-6 pt-4 border-t border-gray-200 flex justify-end space-x-3"><button type="button" id="cancelNewWarehouseModalBtn" class="bg-gray-200 hover:bg-gray-300 text-gray-800 font-semibold py-2 px-4 rounded-lg cursor-pointer">Cancelar</button><button type="submit" class="bg-amber-400 hover:bg-amber-500 text-gray-800 font-semibold py-2 px-4 rounded-lg shadow cursor-pointer">Guardar Almacén</button></div> </form> </div> </div>
    <div id="newTransferModal" class="hidden opacity-0 fixed inset-0 bg-gray-600 bg-opacity-50 overflow-y-auto h-full w-full justify-center items-center p-4 z-50"> <div class="bg-white p-6 md:p-8 rounded-lg shadow-xl w-full max-w-xl mx-auto scale-95" id="newTransferModalContent"> <div class="flex justify-between items-center border-b border-gray-200 pb-3 mb-4"><h3 class="text-2xl font-semibold text-gray-800">Registrar Nueva Transferencia</h3><button id="closeNewTransferModalBtn" class="text-gray-500 hover:text-gray-700 text-2xl font-bold cursor-pointer">×</button></div> <form id="newTransferForm"> <div class="space-y-4"> <div class="grid grid-cols-1 md:grid-cols-2 gap-4"> <div><label for="trOrigin" class="block text-sm font-medium text-gray-700 mb-1">Almacén Origen</label><select id="trOrigin" name="trOrigin" class="mt-1 block w-full px-3 py-2 border border-gray-300 bg-white rounded-md shadow-sm focus:outline-none focus:ring-amber-500 focus:border-amber-500 sm:text-sm" required=""><option value="" disabled="" selected="">Seleccione origen</option><option value="Almacén Central">Almacén Central</option><option value="Almacén Norte">Almacén Norte</option><option value="Almacén Sur">Almacén Sur</option></select></div> <div><label for="trDestination" class="block text-sm font-medium text-gray-700 mb-1">Almacén Destino</label><select id="trDestination" name="trDestination" class="mt-1 block w-full px-3 py-2 border border-gray-300 bg-white rounded-md shadow-sm focus:outline-none focus:ring-amber-500 focus:border-amber-500 sm:text-sm" required=""><option value="" disabled="" selected="">Seleccione destino</option><option value="Almacén Central">Almacén Central</option><option value="Almacén Norte">Almacén Norte</option><option value="Almacén Sur">Almacén Sur</option><option value="Tienda Principal">Tienda Principal</option></select></div> </div> <div><label for="trDate" class="block text-sm font-medium text-gray-700 mb-1">Fecha</label><input type="date" id="trDate" name="trDate" class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-amber-500 focus:border-amber-500 sm:text-sm" required=""></div> <div><label class="block text-sm font-medium text-gray-700 mb-1">Productos</label><div class="mt-1 p-4 border border-dashed border-gray-300 rounded-md text-center text-gray-500"> Área para agregar productos (funcionalidad compleja no implementada en este ejemplo). </div></div> <div><label for="trState" class="block text-sm font-medium text-gray-700 mb-1">Estado Inicial</label><select id="trState" name="trState" class="mt-1 block w-full px-3 py-2 border border-gray-300 bg-white rounded-md shadow-sm focus:outline-none focus:ring-amber-500 focus:border-amber-500 sm:text-sm" required=""><option value="Pendiente" selected="">Pendiente</option><option value="En Proceso">En Proceso</option></select></div> </div> <div class="mt-6 pt-4 border-t border-gray-200 flex justify-end space-x-3"><button type="button" id="cancelNewTransferModalBtn" class="bg-gray-200 hover:bg-gray-300 text-gray-800 font-semibold py-2 px-4 rounded-lg cursor-pointer">Cancelar</button><button type="submit" class="bg-amber-400 hover:bg-amber-500 text-gray-800 font-semibold py-2 px-4 rounded-lg shadow cursor-pointer">Registrar Transferencia</button></div> </form> </div> </div>
    <div id="manageShelvesModal" class="hidden opacity-0 fixed inset-0 bg-gray-600 bg-opacity-50 overflow-y-auto h-full w-full justify-center items-center p-4 z-50"> <div class="bg-white p-6 md:p-8 rounded-lg shadow-xl w-full max-w-3xl mx-auto scale-95" id="manageShelvesModalContent"> <div class="flex justify-between items-center border-b border-gray-200 pb-3 mb-4"><h3 class="text-2xl font-semibold text-gray-800">Gestionar Estanterías</h3><button id="closeManageShelvesModalBtn" class="text-gray-500 hover:text-gray-700 text-2xl font-bold cursor-pointer">×</button></div> <div class="space-y-4"> <div><label for="shelfWarehouse" class="block text-sm font-medium text-gray-700 mb-1">Seleccionar Almacén</label><select id="shelfWarehouse" name="shelfWarehouse" class="mt-1 block w-full px-3 py-2 border border-gray-300 bg-white rounded-md shadow-sm focus:outline-none focus:ring-amber-500 focus:border-amber-500 sm:text-sm"><option value="Almacén Central" selected="">Almacén Central</option><option value="Almacén Norte">Almacén Norte</option><option value="Almacén Sur">Almacén Sur</option></select></div> <div class="grid grid-cols-1 md:grid-cols-3 gap-4 pt-4"> <div class="shelf-section"> <div class="shelf-title">Sección A (90% Lleno)</div> <div class="shelf-item">A-1: Electrónicos</div> <div class="shelf-item">A-2: Periféricos</div> <div class="shelf-item text-gray-400">A-3: Disponible</div> <div class="shelf-item text-gray-400">A-4: Disponible</div> </div> <div class="shelf-section"> <div class="shelf-title">Sección B (75% Lleno)</div> <div class="shelf-item">B-1: Mobiliario</div> <div class="shelf-item text-gray-400">B-2: Disponible</div> <div class="shelf-item">B-3: Accesorios</div> <div class="shelf-item text-gray-400">B-4: Disponible</div> </div> <div class="shelf-section"> <div class="shelf-title">Sección C (60% Lleno)</div> <div class="shelf-item">C-1: Papeleria</div> <div class="shelf-item">C-2: Varios</div> <div class="shelf-item text-gray-400">C-3: Disponible</div> <div class="shelf-item text-gray-400">C-4: Disponible</div> </div> </div> <div class="text-center text-gray-500 text-sm mt-4"> (Vista simplificada. Funcionalidad de edición no implementada.) </div> </div> <div class="mt-6 pt-4 border-t border-gray-200 flex justify-end"><button type="button" id="acceptManageShelvesModalBtn" class="bg-amber-400 hover:bg-amber-500 text-gray-800 font-semibold py-2 px-4 rounded-lg shadow cursor-pointer">Cerrar</button></div> </div> </div>
    <div id="contactSupportModal" class="hidden opacity-0 fixed inset-0 bg-gray-600 bg-opacity-50 overflow-y-auto h-full w-full justify-center items-center p-4 z-50"> <div class="bg-white p-6 md:p-8 rounded-lg shadow-xl w-full max-w-xl mx-auto scale-95" id="contactSupportModalContent"> <div class="flex justify-between items-center border-b border-gray-200 pb-3 mb-4"><h3 class="text-2xl font-semibold text-gray-800">Contactar con Soporte</h3><button id="closeSupportModalBtn" class="text-gray-500 hover:text-gray-700 text-2xl font-bold cursor-pointer">×</button></div> <form id="supportForm"> <div class="space-y-4"> <div><label for="supportUser" class="block text-sm font-medium text-gray-700 mb-1">Usuario</label><input type="text" id="supportUser" name="supportUser" value="Admin Usuario (Detectado)" class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm bg-gray-100 focus:outline-none sm:text-sm" readonly=""></div> <div><label for="supportSubject" class="block text-sm font-medium text-gray-700 mb-1">Asunto</label><input type="text" id="supportSubject" name="supportSubject" class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-amber-500 focus:border-amber-500 sm:text-sm" placeholder="Ej: Problema al registrar producto" required=""></div> <div><label for="supportMessage" class="block text-sm font-medium text-gray-700 mb-1">Mensaje</label><textarea id="supportMessage" name="supportMessage" rows="5" class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-amber-500 focus:border-amber-500 sm:text-sm" placeholder="Describe tu consulta o problema detalladamente..." required=""></textarea></div> </div> <div class="mt-6 pt-4 border-t border-gray-200 flex justify-end space-x-3"><button type="button" id="cancelSupportModalBtn" class="bg-gray-200 hover:bg-gray-300 text-gray-800 font-semibold py-2 px-4 rounded-lg cursor-pointer">Cancelar</button><button type="submit" class="bg-amber-400 hover:bg-amber-500 text-gray-800 font-semibold py-2 px-4 rounded-lg shadow cursor-pointer">Enviar Mensaje</button></div> </form> </div> </div>
    <div id="userProfileModal" class="hidden opacity-0 fixed inset-0 bg-gray-600 bg-opacity-50 overflow-y-auto h-full w-full justify-center items-center p-4 z-50"> <div class="bg-white rounded-lg shadow-xl w-full max-w-2xl mx-auto scale-95" id="userProfileModalContent"> <div class="flex justify-between items-center border-b border-gray-200 p-4 md:p-5"><h3 class="text-xl font-semibold text-gray-800">Perfil de Usuario</h3><button id="closeUserProfileModalBtn" class="text-gray-500 hover:text-gray-700 text-2xl font-bold cursor-pointer">×</button></div> <div class="p-6 md:p-8"><div class="grid grid-cols-1 md:grid-cols-3 gap-6 md:gap-8"><div class="md:col-span-1 flex flex-col items-center text-center"><div class="w-24 h-24 rounded-full bg-orange-100 flex items-center justify-center mb-4"><svg xmlns="http://www.w3.org/2000/svg" class="h-16 w-16 text-orange-500" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="1.5"> <path stroke-linecap="round" stroke-linejoin="round" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"></path> </svg></div><h4 class="text-lg font-semibold text-gray-900" id="profile-modal-name">Carlos Rodriguez</h4><p class="text-sm text-gray-500 break-all" id="profile-modal-email">c.rodriguez@almazen-inventario.com</p></div><div class="md:col-span-2 space-y-4"><div><span class="profile-label block text-sm">Empresa:</span><span class="profile-value text-base" id="profile-modal-company">LogistiCorp (Ejemplo)</span></div><div><span class="profile-label block text-sm">Rol:</span><span class="profile-value text-base" id="profile-modal-role">Administrador de Almacén</span></div><div><span class="profile-label block text-sm">Permisos:</span><span class="profile-value text-base" id="profile-modal-permissions">Total</span></div><div class="pt-2 border-t border-gray-100"><span class="profile-label block text-sm">Último Acceso:</span><span class="profile-value text-base" id="profile-modal-last-login">19/04/2025 15:10</span></div></div></div></div> <div class="border-t border-gray-200 p-4 md:p-5 flex justify-end"><button id="acceptUserProfileModalBtn" class="bg-amber-400 hover:bg-amber-500 text-gray-800 font-semibold py-2 px-4 rounded-lg shadow cursor-pointer"> Cerrar </button></div> </div> </div>
    <div id="quickQueryModal" class="hidden opacity-0 fixed inset-0 bg-gray-600 bg-opacity-50 overflow-y-auto h-full w-full justify-center items-center p-4 z-50">
        <div class="bg-white p-6 md:p-8 rounded-lg shadow-xl w-full max-w-3xl mx-auto scale-95" id="quickQueryModalContent">
            <div class="flex justify-between items-center border-b border-gray-200 pb-3 mb-6">
                <h3 class="text-2xl font-semibold text-gray-800">Consulta Rápida</h3>
                <button id="closeQuickQueryModalBtn" class="text-gray-500 hover:text-gray-700 text-2xl font-bold cursor-pointer">×</button>
            </div>
            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                <div class="space-y-4">
                    <h4 class="text-lg font-semibold text-gray-700">Producto</h4>
                    <div>
                        <label for="quickQueryProductSelect" class="block text-sm font-medium text-gray-700 mb-1">Nombre del Producto</label>
                        <select id="quickQueryProductSelect" name="quickQueryProductSelect" class="mt-1 block w-full px-3 py-2 border border-gray-300 bg-white rounded-md shadow-sm focus:outline-none focus:ring-amber-500 focus:border-amber-500 sm:text-sm" required="">
                            <option value="" disabled="" selected="">Seleccione un producto...</option>
                            <option value="Laptop Gamer Nitro 5">Laptop Gamer Nitro 5</option>
                            <option value="Monitor Curvo Samsung 27''">Monitor Curvo Samsung 27''</option>
                            <option value="SSD Kingston NV2 1TB PCIe 4.0">SSD Kingston NV2 1TB PCIe 4.0</option>
                            <option value="Teclado Mecánico Redragon K552">Teclado Mecánico Redragon K552</option>
                            <option value="Mouse Logitech G203 Lightsync">Mouse Logitech G203 Lightsync</option>
                            <option value="Webcam Logitech C920 HD Pro">Webcam Logitech C920 HD Pro</option>
                            <option value="Router TP-Link Archer C6 WiFi AC1200">Router TP-Link Archer C6 WiFi AC1200</option>
                            <option value="Impresora Multifuncional Epson L3250">Impresora Multifuncional Epson L3250</option>
                            <option value="Memoria RAM Corsair Vengeance 16GB DDR4">Memoria RAM Corsair Vengeance 16GB DDR4</option>
                            <option value="Tarjeta Gráfica NVIDIA RTX 3060">Tarjeta Gráfica NVIDIA RTX 3060</option>
                            <option value="Disco Duro Externo Seagate 2TB">Disco Duro Externo Seagate 2TB</option>
                            <option value="Audífonos HyperX Cloud II">Audífonos HyperX Cloud II</option>
                            <option value="Silla Gamer Ergonómica">Silla Gamer Ergonómica</option>
                            <option value="Microsoft Office 365 Personal">Microsoft Office 365 Personal</option>
                            <option value="Antivirus ESET NOD32 (1 Año)">Antivirus ESET NOD32 (1 Año)</option>
                            <option value="Monitor LG UltraGear 24'' 144Hz">Monitor LG UltraGear 24'' 144Hz</option>
                            <option value="Mousepad Gamer XXL">Mousepad Gamer XXL</option>
                            <option value="Procesador AMD Ryzen 5 5600X">Procesador AMD Ryzen 5 5600X</option>
                            <option value="Placa Madre ASUS B550M">Placa Madre ASUS B550M</option>
                            <option value="Fuente de Poder Corsair 650W 80+ Bronze">Fuente de Poder Corsair 650W 80+ Bronze</option>
                        </select>
                    </div>
                    <div class="text-right pt-2">
                        <button id="quickQueryConsultBtn" class="bg-amber-400 hover:bg-amber-500 text-gray-800 font-semibold py-2 px-4 rounded-lg shadow cursor-pointer">
                            Consultar
                        </button>
                    </div>
                </div>
                <div class="flex flex-col items-center justify-center text-center border-l border-gray-200 pl-6">
                     <h4 class="text-lg font-semibold text-gray-700 mb-3">Escanea el código</h4>
                     <img src="images/qr-code-placeholder.png" alt="Código QR de ejemplo" class="w-48 h-48 object-contain rounded-md border border-gray-300 p-1">
                     <p class="text-xs text-gray-500 mt-2">Escanea para ver detalles rápidos.</p>
                </div>
            </div>
        </div>
    </div>
    <script src="js/script2.js"></script>
</body>

</html>
