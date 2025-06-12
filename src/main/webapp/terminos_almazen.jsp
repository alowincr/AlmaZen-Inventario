<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Términos y Condiciones - AlmaZen</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        /* Estilos personalizados adicionales si son necesarios */
        body {
            font-family: 'Inter', sans-serif; /* Fuente Inter como se sugiere */
        }
        .brand-yellow { color: #FFC107; } /* Amarillo principal */
        .brand-orange { color: #FF8C00; } /* Naranja para acentos */
        .bg-brand-yellow { background-color: #FFC107; }
        .bg-brand-orange { background-color: #FF8C00; }
        .border-brand-yellow { border-color: #FFC107; }
        .hover-bg-brand-orange-dark:hover { background-color: #E77A00; }

        /* Estilo para el contenedor de la imagen con efectos 3D */
        .image-placeholder {
            border: 2px dashed #FFC107; /* Borde amarillo discontinuo */
            background-color: #FFFBEB; /* Fondo amarillo muy claro */
            color: #B45309; /* Texto naranja oscuro */
            transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
            transform-style: preserve-3d;
            cursor: pointer;
        }
        
        .image-placeholder:hover {
            transform: translateY(-12px) rotateX(5deg) rotateY(-2deg) scale(1.02);
            box-shadow: 
                0 25px 50px rgba(255, 193, 7, 0.2),
                0 15px 30px rgba(0, 0, 0, 0.1),
                inset 0 2px 4px rgba(255, 255, 255, 0.3);
            border-color: #FF8C00;
            background: linear-gradient(135deg, #FFFBEB 0%, #FFF8E1 100%);
        }
        
        .image-placeholder::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: linear-gradient(45deg, transparent 0%, rgba(255, 193, 7, 0.1) 50%, transparent 100%);
            opacity: 0;
            transition: opacity 0.3s ease;
            border-radius: inherit;
        }
        
        .image-placeholder:hover::before {
            opacity: 1;
        }
        
        /* Efecto de brillo en hover */
        .image-placeholder::after {
            content: '';
            position: absolute;
            top: -50%;
            left: -50%;
            width: 200%;
            height: 200%;
            background: linear-gradient(45deg, transparent 40%, rgba(255, 255, 255, 0.3) 50%, transparent 60%);
            transform: translateX(-100%);
            transition: transform 0.6s ease;
        }
        
        .image-placeholder:hover::after {
            transform: translateX(100%);
        }
    </style>
</head>
<body class="bg-white text-gray-800">
    <a href="Main.jsp" class="fixed top-6 left-6 z-50 bg-brand-yellow hover:bg-brand-orange text-gray-800 font-semibold py-3 px-4 rounded-full shadow-lg hover:shadow-xl transition-all duration-300 transform hover:scale-105">
        <span class="flex items-center space-x-2">
            <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 19l-7-7m0 0l7-7m-7 7h18"></path>
            </svg>
            <span class="hidden sm:inline">Volver al Inicio</span>
        </span>
    </a>

    <header class="bg-gray-800 shadow-md">
        <div class="container mx-auto px-6 py-4">
            <div class="text-center">
                <h1 class="text-3xl md:text-4xl font-bold brand-yellow">AlmaZen</h1>
            </div>
        </div>
    </header>

    <main class="container mx-auto px-6 py-8 md:py-12">
        <h2 class="text-2xl md:text-3xl font-semibold text-gray-900 mb-6 text-center">Términos y Condiciones del Servicio</h2>

        <div class="bg-gray-50 p-6 md:p-8 rounded-lg shadow-lg space-y-6">
            <p class="text-sm text-gray-600">Fecha de última actualización: 15 de diciembre de 2024</p>

            <p>Bienvenido/a a <strong>AlmaZen</strong>. Estos Términos y Condiciones rigen el uso de nuestros servicios de alquiler de espacios de almacenamiento para pequeños emprendedores en Lima, Perú. Al contratar nuestros servicios, usted acepta cumplir con estos términos en su totalidad.</p>

            <section>
                <h3 class="text-xl font-semibold text-gray-900 mb-3">1. Sobre Nuestro Servicio</h3>
                <p>AlmaZen opera desde 2022 proporcionando espacios de almacenamiento seguro en el distrito de San Isidro, Lima. Ofrecemos espacios desde 2m² hasta 15m² especialmente diseñados para emprendedores que necesitan un lugar confiable para sus mercancías, herramientas de trabajo o inventario. Nuestras instalaciones cuentan con seguridad las 24 horas, sistema de ventilación controlada y acceso vehicular.</p>
            </section>

            <section>
                <h3 class="text-xl font-semibold text-gray-900 mb-3">2. Condiciones de Uso del Espacio</h3>
                <ul class="list-disc list-inside space-y-2 pl-4 text-gray-700">
                    <li>El horario de acceso es de lunes a sábado de 7:00 AM a 8:00 PM, y domingos de 9:00 AM a 6:00 PM.</li>
                    <li>Cada usuario recibe una tarjeta de acceso personalizada y un código de seguridad único.</li>
                    <li>Contamos con carretillas y montacargas disponibles sin costo adicional para facilitar el traslado de mercancías.</li>
                    <li>Las inspecciones de rutina se realizan mensualmente con previo aviso de 48 horas, excepto en emergencias.</li>
                    <li>Se requiere mantener un pasillo libre de 80cm en su espacio para acceso de emergencia.</li>
                </ul>
            </section>

            <section>
                <h3 class="text-xl font-semibold text-gray-900 mb-3">3. Artículos Permitidos y Prohibidos</h3>
                <p class="mb-2">Basándose en nuestra experiencia de 2 años atendiendo emprendedores limeños, permitimos el almacenamiento de:</p>
                
                <h4 class="text-lg font-medium text-gray-800 mt-4 mb-2">3.1. Artículos Permitidos:</h4>
                <ul class="list-disc list-inside space-y-2 pl-4 text-gray-700">
                    <li>Productos textiles, calzado y accesorios de moda (el 40% de nuestros clientes son del rubro textil).</li>
                    <li>Artesanías, manualidades y productos de decoración para el hogar.</li>
                    <li>Equipos de trabajo como máquinas de coser, herramientas pequeñas y suministros de oficina.</li>
                    <li>Productos de belleza, cosméticos y cuidado personal debidamente sellados.</li>
                    <li>Libros, material educativo y productos de papelería.</li>
                    <li>Equipos electrónicos pequeños (computadoras, tablets, celulares) en embalaje adecuado.</li>
                </ul>

                <h4 class="text-lg font-medium text-brand-orange mt-4 mb-2">3.2. Artículos Estrictamente Prohibidos:</h4>
                <ul class="list-disc list-inside space-y-2 pl-4 text-red-600">
                    <li><strong>Alimentos perecederos:</strong> Debido al clima húmedo de Lima, no permitimos frutas, verduras, lácteos, carnes o cualquier alimento que requiera refrigeración o que pueda descomponerse.</li>
                    <li><strong>Productos químicos y pinturas:</strong> Por seguridad de todos nuestros usuarios y cumplimiento de normativas municipales de San Isidro.</li>
                    <li><strong>Artículos de gran volumen:</strong> Muebles grandes, electrodomésticos línea blanca, o cualquier item que exceda 2.5m de altura o requiera más de 2 personas para movilizarse.</li>
                    <li><strong>Productos que requieran temperatura controlada:</strong> Nuestras instalaciones mantienen temperatura ambiente (18-25°C) pero no cuentan con refrigeración especializada.</li>
                    <li><strong>Documentos de valor extremo:</strong> Aunque es seguro, recomendamos usar cajas de seguridad bancarias para documentos legales únicos, títulos de propiedad o certificados irremplazables.</li>
                    <li>Sustancias controladas, armas, explosivos o cualquier material regulado por SUNAT o autoridades peruanas.</li>
                    <li>Plantas, animales vivos o cualquier ser viviente.</li>
                    <li>Objetos de procedencia dudosa o que no puedan ser declarados legalmente.</li>
                </ul>
                <p class="mt-2 text-sm text-gray-600">El incumplimiento resultará en terminación inmediata del contrato. AlmaZen coordinará con las autoridades competentes si es necesario, conforme a la legislación peruana.</p>
            </section>

            <section>
                <h3 class="text-xl font-semibold text-gray-900 mb-3">4. Sus Responsabilidades como Cliente</h3>
                <ul class="list-disc list-inside space-y-2 pl-4 text-gray-700">
                    <li>Declarar honestamente el contenido que almacenará durante el proceso de registro.</li>
                    <li>Contratar un seguro para sus bienes si maneja productos de alto valor. AlmaZen mantiene seguro básico de instalaciones, pero no cubre el contenido específico de cada cliente.</li>
                    <li>Realizar los pagos puntualmente: mensualidades vencen el día 5 de cada mes con 3 días de gracia.</li>
                    <li>Mantener actualizados sus datos de contacto y notificar cambios con 15 días de anticipación.</li>
                    <li>Respetar las normas de convivencia y horarios establecidos para mantener un ambiente profesional.</li>
                </ul>
            </section>

            <section>
                <h3 class="text-xl font-semibold text-gray-900 mb-3">5. Nuestro Compromiso con Usted</h3>
                <ul class="list-disc list-inside space-y-2 pl-4 text-gray-700">
                    <li>Mantener las instalaciones en óptimas condiciones de seguridad, limpieza y funcionalidad.</li>
                    <li>Proporcionar acceso confiable durante los horarios establecidos con sistema de respaldo en caso de fallas eléctricas.</li>
                    <li>Guardar absoluta confidencialidad sobre sus bienes almacenados, excepto cuando la ley peruana lo requiera.</li>
                    <li>Notificar con 72 horas de anticipación cualquier mantenimiento que pueda afectar el acceso a su espacio.</li>
                    <li>Brindar atención al cliente de lunes a viernes de 9:00 AM a 6:00 PM a través de nuestros canales oficiales.</li>
                </ul>
                <p class="mt-2 text-sm text-gray-600">AlmaZen opera bajo estándares de seguridad estándar para almacenes comerciales. Nuestra responsabilidad se limita al valor del contrato mensual en caso de incidentes fuera de nuestro control directo (sismos, delincuencia con violencia extrema, etc.). Para bienes de alto valor, recomendamos seguros complementarios.</p>
            </section>
            
            <section>
                <h3 class="text-xl font-semibold text-gray-900 mb-3">6. Plazos y Terminación del Servicio</h3>
                <p>Los contratos de AlmaZen son mensuales con renovación automática. Puede terminar el servicio notificando con 30 días de anticipación. Nosotros podemos terminar el contrato con 15 días de aviso por mantenimiento mayor, o inmediatamente por violación de estos términos. Al finalizar el contrato, tiene 15 días calendario para retirar sus pertenencias, después de lo cual aplicaremos tarifas de almacenaje adicional de S/. 5 por día.</p>
            </section>

            <section>
                <h3 class="text-xl font-semibold text-gray-900 mb-3">7. Cambios en las Condiciones</h3>
                <p>AlmaZen puede actualizar estos términos con 60 días de anticipación. Los cambios serán comunicados por email y WhatsApp, y publicados en nuestro sitio web. Si continúa usando el servicio después de la fecha efectiva, acepta automáticamente los nuevos términos. Si no está de acuerdo, puede cancelar sin penalidad durante el período de transición.</p>
            </section>

            <section>
                <h3 class="text-xl font-semibold text-gray-900 mb-3">8. Marco Legal</h3>
                <p>Este contrato se rige por las leyes de la República del Perú. Cualquier disputa será resuelta en los juzgados de Lima, específicamente en el distrito judicial de Lima Sur. AlmaZen está registrada como empresa de servicios de almacenamiento bajo RUC 20123456789 y cumple con todas las regulaciones municipales de San Isidro y normativas de SUNAT aplicables.</p>
            </section>

            <section>
                <h3 class="text-xl font-semibold text-gray-900 mb-3">9. Contáctanos</h3>
                <p>Para consultas, dudas o sugerencias sobre estos términos y condiciones:</p>
                <ul class="list-none space-y-1 pl-4 text-gray-700 mt-2">
                    <li>📧 Email: <a href="mailto:atencion@almazen.pe" class="text-brand-orange hover:underline">atencion@almazen.pe</a></li>
                    <li>📱 WhatsApp: <a href="https://wa.me/51987654321" class="text-brand-orange hover:underline">+51 987 654 321</a></li>
                    <li>📞 Teléfono fijo: (01) 234-5678</li>
                    <li>📍 Dirección: Av. Javier Prado Este 4567, San Isidro, Lima 15046</li>
                    <li>🕒 Horario de atención: Lunes a Viernes 9:00 AM - 6:00 PM</li>
                </ul>
            </section>

            <section class="mt-10">
                <h3 class="text-xl font-semibold text-gray-900 mb-4 text-center">Nuestras Instalaciones en San Isidro</h3>
                <div class="image-placeholder w-full h-64 md:h-96 rounded-lg flex items-center justify-center relative overflow-hidden">
                    
                    
                         <img src="images/terminos.png" alt="Instalaciones AlmaZen San Isidro" class="w-full h-full object-cover rounded-lg"> 
                    
                </div>
                <p class="text-center text-sm text-gray-600 mt-2">Espacios amplios, seguros y con fácil acceso vehicular</p>
            </section>
        </div>
    </main>

    <footer class="bg-gray-800 text-white mt-12">
        <div class="container mx-auto px-6 py-8 text-center">
            <div class="mb-4">
                <p class="text-2xl font-bold brand-yellow">AlmaZen</p>
                <p class="text-sm text-gray-400">Soluciones de almacenamiento para emprendedores.</p>
            </div>
            <div class="text-sm text-gray-400">
                &copy; <span id="currentYear"></span> AlmaZen. Todos los derechos reservados.
            </div>
            <div class="mt-2 text-xs text-gray-500">
                <a href="#" class="hover:text-brand-yellow">Política de Privacidad</a> | 
                <a href="terminos_almazen.jsp" class="hover:text-brand-yellow">Términos de Servicio</a>
                </div>
        </div>
    </footer>

    <script>
        // Script para el año actual en el footer
        document.getElementById('currentYear').textContent = new Date().getFullYear();
    </script>

</body>
</html>