
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Catálogo de Instalaciones - AlmaZen</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        body {
            font-family: 'Inter', sans-serif;
        }
        .brand-yellow { color: #FFC107; }
        .brand-orange { color: #FF8C00; }
        .bg-brand-yellow { background-color: #FFC107; }
        .bg-brand-orange { background-color: #FF8C00; }
        .border-brand-yellow { border-color: #FFC107; }
        .hover-text-brand-yellow:hover { color: #FFC107; }
        .hover-bg-brand-orange:hover { background-color: #FF8C00; }
        .hover-bg-brand-orange-dark:hover { background-color: #E77A00; }

        .floating-button {
            position: fixed;
            top: 1.5rem;
            left: 1.5rem;
            z-index: 50;
            transition: all 0.3s ease-in-out;
        }
        .floating-button:hover {
            transform: scale(1.05);
        }

        /* Estilo para tarjetas con efecto hover 3D */
        .catalog-item-card {
            background-color: white;
            border-radius: 0.75rem; /* rounded-xl */
            box-shadow: 0 10px 15px -3px rgba(0,0,0,0.1), 0 4px 6px -2px rgba(0,0,0,0.05); /* shadow-lg */
            transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
            transform-style: preserve-3d;
            cursor: pointer;
            overflow: hidden;
        }
        .catalog-item-card:hover {
            transform: translateY(-12px) rotateX(5deg) rotateY(-2deg) scale(1.03);
            box-shadow: 
                0 25px 50px -12px rgba(255, 193, 7, 0.25), /* Sombra amarilla más pronunciada */
                0 15px 30px -10px rgba(0, 0, 0, 0.2);
        }
        .catalog-item-card .card-image-placeholder {
            background-color: #FFFBEB; /* Fondo amarillo muy claro para la imagen */
            height: 200px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #B45309; /* Texto naranja oscuro */
            font-weight: 500;
        }
         .catalog-item-card img.card-image {
            width: 100%;
            height: 200px;
            object-fit: cover;
            transition: transform 0.3s ease;
        }
        .catalog-item-card:hover img.card-image {
            transform: scale(1.05);
        }
        .video-placeholder {
            background-color: #333;
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 300px; /* Ajusta según necesidad */
            border-radius: 0.5rem; /* rounded-lg */
        }
        
        /* Estilos para el Carrusel */
        .carousel-container {
            position: relative;
            width: 100%;
            max-width: 800px; /* Ajusta el ancho máximo del carrusel */
            margin: auto;
            overflow: hidden;
            border-radius: 0.5rem; /* rounded-lg */
            box-shadow: 0 10px 15px -3px rgba(0,0,0,0.1), 0 4px 6px -2px rgba(0,0,0,0.05);
        }
        .carousel-slide {
            display: none; /* Ocultar todas las diapositivas por defecto */
            width: 100%;
            transition: opacity 1s ease-in-out;
        }
        .carousel-slide img {
            width: 100%;
            height: auto; /* Mantiene la proporción de la imagen */
            max-height: 500px; /* Altura máxima para las imágenes del carrusel */
            object-fit: cover; /* Asegura que la imagen cubra el contenedor sin distorsionarse */
            display: block;
        }
        .carousel-slide.active {
            display: block; /* Mostrar la diapositiva activa */
        }

        /* Fade effect */
        .fade {
            animation-name: fade;
            animation-duration: 1.5s;
        }
        @keyframes fade {
            from {opacity: .4} 
            to {opacity: 1}
        }

    </style>
</head>
<body class="bg-gray-100 text-gray-800">

    <a href="Main.jsp" class="floating-button bg-brand-yellow hover:bg-brand-orange text-gray-800 font-semibold py-3 px-4 rounded-full shadow-lg hover:shadow-xl">
        <span class="flex items-center space-x-2">
            <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 19l-7-7m0 0l7-7m-7 7h18"></path>
            </svg>
            <span class="hidden sm:inline">Volver al Inicio</span>
        </span>
    </a>

    <header class="bg-gray-800 shadow-md py-6">
        <div class="container mx-auto px-6 text-center">
            <h1 class="text-4xl md:text-5xl font-bold brand-yellow">AlmaZen</h1>
        </div>
    </header>

    <main class="container mx-auto px-4 sm:px-6 lg:px-8 py-12 md:py-16">

         <section class="mb-16 text-center">
            <h2 class="text-3xl md:text-4xl font-bold text-gray-900 mb-4">Descubre la Comodidad y Seguridad de AlmaZen</h2>
            <p class="text-md md:text-lg text-gray-600 mb-8 max-w-2xl mx-auto">Te invitamos a explorar nuestras modernas instalaciones, diseñadas pensando en las necesidades de cada emprendedor y particular en Lima.</p>
            <div class="video-placeholder shadow-xl">
                <video autoplay loop muted playsinline poster="images/poster_video_bienvenida.jpg">
                    <source src="images/Presentacion.mp4" type="video/mp4">
                </video>
            </div>
        </section>

        <section class="mb-16">
            <h2 class="text-3xl font-bold text-gray-900 mb-8 text-center">Nuestras Unidades de Almacenamiento</h2>
            <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-8">
                <div class="catalog-item-card">
                    <img src="images/pequeña.png" alt="Unidad de almacenamiento pequeña en AlmaZen (2-5m²)" class="card-image">
                    <div class="p-6">
                        <h3 class="text-xl font-semibold text-gray-900 mb-2">Unidades Pequeñas</h3>
                        <p class="text-gray-600 text-sm mb-4">Perfectas para cajas, archivos, equipos deportivos o el stock inicial de tu emprendimiento. Desde 2m² hasta 5m².</p>
                        <a href="planes.jsp" class="text-brand-orange hover:underline font-medium">Ver detalles del Plan Individual &rarr;</a>
                    </div>
                </div>


                <div class="catalog-item-card">
                    <img src="images/Mediana.png" alt="Unidad de almacenamiento mediana en AlmaZen (6-15m²)" class="card-image">
                    <div class="p-6">
                        <h3 class="text-xl font-semibold text-gray-900 mb-2">Unidades Medianas</h3>
                        <p class="text-gray-600 text-sm mb-4">Ideales para inventario de e-commerce, herramientas de trabajo, muebles pequeños o archivos comerciales. Desde 6m² hasta 15m².</p>
                        <a href="planes.jsp" class="text-brand-orange hover:underline font-medium">Ver detalles del Plan Empresario &rarr;</a>
                    </div>
                </div>

                <div class="catalog-item-card">
                     <img src="images/grande.png" alt="Unidad de almacenamiento grande en AlmaZen (+15m²)" class="card-image">
                    <div class="p-6">
                        <h3 class="text-xl font-semibold text-gray-900 mb-2">Unidades Grandes</h3>
                        <p class="text-gray-600 text-sm mb-4">Para necesidades de mayor volumen, almacenamiento de equipos más grandes, o stock consolidado. Espacios de más de 15m².</p>
                        <a href="planes.jsp" class="text-brand-orange hover:underline font-medium">Ver detalles del Plan VIP &rarr;</a>
                    </div>
                </div>
            </div>
            <p class="text-center mt-8 text-gray-600">Todas nuestras unidades son limpias, secas y seguras.</p>
        </section>

        <section class="mb-16 bg-white p-8 md:p-12 rounded-xl shadow-xl">
            <div class="grid grid-cols-1 md:grid-cols-2 gap-8 items-center">
                <div>
                    <h2 class="text-3xl font-bold text-gray-900 mb-4">Seguridad de Primer Nivel, Tu Tranquilidad es Nuestra Prioridad</h2>
                    <p class="text-gray-700 mb-6">En AlmaZen, invertimos en tecnología y personal para garantizar la máxima protección de tus pertenencias. Nuestro compromiso es brindarte un espacio donde puedas confiar plenamente.</p>
                    <ul class="space-y-3 text-gray-700">
                        <li class="flex items-start"><span class="text-brand-yellow font-bold mr-2 text-xl mt-1">&bull;</span> Vigilancia CCTV 24/7 en todas las áreas comunes y perímetros.</li>
                        <li class="flex items-start"><span class="text-brand-yellow font-bold mr-2 text-xl mt-1">&bull;</span> Control de acceso electrónico personalizado para ingreso a instalaciones y unidades.</li>
                        <li class="flex items-start"><span class="text-brand-yellow font-bold mr-2 text-xl mt-1">&bull;</span> Personal de seguridad capacitado presente en las instalaciones.</li>
                        <li class="flex items-start"><span class="text-brand-yellow font-bold mr-2 text-xl mt-1">&bull;</span> Sistemas de alarma contra intrusos y detección de incendios.</li>
                        <li class="flex items-start"><span class="text-brand-yellow font-bold mr-2 text-xl mt-1">&bull;</span> Iluminación completa en todas las áreas para mayor seguridad.</li>
                    </ul>
                </div>
                <div class="video-placeholder rounded-lg"> 
                    <video autoplay loop muted playsinline poster="images/poster_video_seguridad.jpg">
                        <source src="images/Seguridad.mp4" type="video/mp4">
                        
                    </video>
                </div>
            </div>
        </section>

        <section class="mb-16">
            <h2 class="text-3xl font-bold text-gray-900 mb-8 text-center">Comodidades Pensadas para Ti</h2>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                <div class="bg-white p-6 rounded-lg shadow-md text-center">
                    <div class="w-16 h-16 mx-auto mb-4 bg-brand-yellow rounded-full flex items-center justify-center text-white text-2xl font-bold">1</div>
                    <h3 class="text-xl font-semibold text-gray-900 mb-2">Amplia Zona de Carga/Descarga</h3>
                    <p class="text-gray-600 text-sm">Acceso vehicular cómodo y seguro para facilitar el movimiento de tus bienes, incluso para camiones pequeños.</p>
                </div>
                <div class="bg-white p-6 rounded-lg shadow-md text-center">
                    <div class="w-16 h-16 mx-auto mb-4 bg-brand-yellow rounded-full flex items-center justify-center text-white text-2xl font-bold">2</div>
                    <h3 class="text-xl font-semibold text-gray-900 mb-2">Material de Embalaje</h3>
                    <p class="text-gray-600 text-sm">Disponemos de cajas, cintas, plástico de burbujas y más, a la venta en nuestras oficinas para tu conveniencia.</p>
                </div>
                <div class="bg-white p-6 rounded-lg shadow-md text-center">
                     <div class="w-16 h-16 mx-auto mb-4 bg-brand-yellow rounded-full flex items-center justify-center text-white text-2xl font-bold">3</div>
                    <h3 class="text-xl font-semibold text-gray-900 mb-2">Carretillas y Plataformas</h3>
                    <p class="text-gray-600 text-sm">Uso gratuito de carretillas y plataformas rodantes dentro de nuestras instalaciones para mover tus objetos con facilidad.</p>
                </div>
            </div>
        </section>

        <section class="py-12 bg-gray-800 text-white rounded-xl shadow-2xl">
            <div class="container mx-auto px-6 text-center">
                <h2 class="text-3xl md:text-4xl font-bold brand-yellow mb-4">Galería</h2>
                <p class="text-gray-300 mb-8 max-w-xl mx-auto">Explora nuestra galería de imágenes para conocer de cerca nuestras instalaciones y la calidad de nuestros espacios.</p>
                
                <div class="carousel-container">
                    <div class="carousel-slide active fade">
                        <img src="images/vista01.png" alt="Vista de las instalaciones de AlmaZen 1">
                    </div>
                    <div class="carousel-slide fade">
                        <img src="images/vista02.png" alt="Unidad de almacenamiento segura en AlmaZen">
                    </div>
                    <div class="carousel-slide fade">
                        <img src="images/vista03.png" alt="Acceso controlado en AlmaZen">
                    </div>
                    <div class="carousel-slide fade">
                        <img src="images/vista04.png" alt="Interior espacioso de una unidad de AlmaZen">
                    </div>
                    <div class="carousel-slide fade">
                        <img src="images/vista05.png" alt="Mas imagenes">
                    </div>
                </div>

                <a href="#contacto-catalogo" class="mt-10 inline-block bg-brand-orange text-white font-semibold py-3 px-8 rounded-lg hover:bg-brand-orange-dark transition duration-300 text-lg">Agenda una Visita Guiada</a>
            </div>
        </section>
         <section id="contacto-catalogo" class="mt-16 pt-12 border-t border-gray-300">
            <h2 class="text-3xl font-bold text-gray-900 mb-6 text-center">¿Preguntas o Listo para Visitar?</h2>
            <div class="max-w-xl mx-auto bg-white p-8 rounded-lg shadow-xl">
                <p class="text-gray-700 mb-4 text-center">Nuestro equipo está listo para responder tus dudas o coordinar una visita a nuestras instalaciones en San Isidro.</p>
                <form action="#" method="POST">
                    <div class="mb-4">
                        <label for="nombre-cat" class="block text-sm font-medium text-gray-700">Nombre Completo</label>
                        <input type="text" name="nombre-cat" id="nombre-cat" required class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-brand-orange focus:border-brand-orange sm:text-sm">
                    </div>
                    <div class="mb-4">
                        <label for="email-cat" class="block text-sm font-medium text-gray-700">Correo Electrónico</label>
                        <input type="email" name="email-cat" id="email-cat" required class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-brand-orange focus:border-brand-orange sm:text-sm">
                    </div>
                    <div class="mb-6">
                        <label for="mensaje-cat" class="block text-sm font-medium text-gray-700">Mensaje o Consulta</label>
                        <textarea name="mensaje-cat" id="mensaje-cat" rows="4" required class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-brand-orange focus:border-brand-orange sm:text-sm"></textarea>
                    </div>
                    <div>
                        <button type="submit" class="w-full flex justify-center py-3 px-4 border border-transparent rounded-md shadow-sm text-sm font-medium text-white bg-brand-orange hover:bg-brand-orange-dark focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-brand-orange">
                            Enviar Mensaje
                        </button>
                    </div>
                </form>
            </div>
        </section>
    </main>

    <footer class="bg-gray-800 text-white mt-12">
        <div class="container mx-auto px-6 py-8 text-center">
            <div class="mb-4">
                <p class="text-2xl font-bold brand-yellow">AlmaZen</p>
                <p class="text-sm text-gray-400">Soluciones de almacenamiento para emprendedores en San Isidro.</p>
            </div>
            <div class="text-sm text-gray-400">
                &copy; <span id="currentYear"></span> ALMAZEN PERÚ S.A.C. Todos los derechos reservados.
            </div>
            <div class="mt-2 text-xs text-gray-500">
                <a href="politica_privacidad.jsp" class="hover-text-brand-yellow">Política de Privacidad</a> | 
                <a href="terminos_almazen.html" class="hover-text-brand-yellow">Términos de Servicio</a> |
                <a href="#" class="hover-text-brand-yellow">Política de Cookies</a>
            </div>
        </div>
    </footer>

    <script>
        // Script para el año actual en el footer
        document.getElementById('currentYear').textContent = new Date().getFullYear();

        // Script para el carrusel automático
        let slideIndex = 0;
        showSlides();

        function showSlides() {
            let i;
            const slides = document.querySelectorAll(".carousel-slide");
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";  
                slides[i].classList.remove("active");
            }
            slideIndex++;
            if (slideIndex > slides.length) {slideIndex = 1}    
            
            slides[slideIndex-1].style.display = "block";  
            slides[slideIndex-1].classList.add("active");
            // Para el efecto fade, la clase 'fade' ya está en el HTML. 
            // Si quieres controlar la animación desde JS, tendrías que añadir y quitar la clase 'fade' aquí.

            setTimeout(showSlides, 4000); // Cambia la imagen cada 4 segundos
        }
    </script>

</body>
</html>

