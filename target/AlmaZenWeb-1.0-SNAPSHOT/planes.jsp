
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Planes y Servicios - AlmaZen</title>
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
        .hover-bg-brand-yellow:hover { background-color: #FFC107; }
        .hover-bg-brand-orange-dark:hover { background-color: #E77A00; } /* Naranja más oscuro para hover */

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

        .plan-card {
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .plan-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.1), 0 10px 10px -5px rgba(0, 0, 0, 0.04);
        }
        .popular-badge {
            position: absolute;
            top: -15px;
            right: 20px;
            transform: rotate(15deg);
        }
    </style>
</head>
<body class="bg-white text-gray-800">

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

    <main class="container mx-auto px-6 py-12 md:py-16">
        <h2 class="text-3xl md:text-4xl font-bold text-gray-900 mb-4 text-center">Nuestros Planes de Almacenamiento</h2>
        <p class="text-md md:text-lg text-gray-600 mb-12 text-center max-w-2xl mx-auto">Encuentra el espacio perfecto que se adapta a tus necesidades, ya seas un particular organizando tu hogar o un emprendedor en crecimiento.</p>

        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">

            <div class="plan-card bg-gray-50 rounded-xl shadow-lg p-8 flex flex-col relative overflow-hidden">
                <h3 class="text-2xl font-semibold text-gray-900 mb-2">Plan Individual</h3>
                <p class="text-gray-600 mb-4 text-sm">Ideal para organizar tu vida personal, guardar objetos de valor sentimental o liberar espacio en casa.</p>
                <div class="my-6 text-center">
                    <span class="text-4xl font-bold text-gray-900">S/ 150</span>
                    <span class="text-gray-500">/mes</span>
                </div>
                <ul class="space-y-3 text-gray-700 mb-8 flex-grow">
                    <li class="flex items-center"><svg class="w-5 h-5 text-brand-yellow mr-2" fill="currentColor" viewBox="0 0 20 20"><path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path></svg>Espacios de 2m² a 5m²</li>
                    <li class="flex items-center"><svg class="w-5 h-5 text-brand-yellow mr-2" fill="currentColor" viewBox="0 0 20 20"><path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path></svg>Acceso estándar en horario comercial</li>
                    <li class="flex items-center"><svg class="w-5 h-5 text-brand-yellow mr-2" fill="currentColor" viewBox="0 0 20 20"><path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path></svg>Seguridad 24/7 con CCTV</li>
                    <li class="flex items-center"><svg class="w-5 h-5 text-brand-yellow mr-2" fill="currentColor" viewBox="0 0 20 20"><path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path></svg>Ideal para artículos personales, hobbies, documentos</li>
                    <li class="flex items-center"><svg class="w-5 h-5 text-brand-yellow mr-2" fill="currentColor" viewBox="0 0 20 20"><path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path></svg>Contrato flexible mes a mes</li>
                </ul>
                <a href="#contacto" class="mt-auto w-full text-center bg-brand-yellow text-gray-900 font-semibold py-3 px-6 rounded-lg hover:bg-yellow-400 transition duration-300">Consultar Disponibilidad</a>
            </div>

            <div class="plan-card bg-brand-yellow text-gray-900 rounded-xl shadow-2xl p-8 flex flex-col relative overflow-hidden scale-105">
                 <div class="popular-badge bg-brand-orange text-white text-xs font-bold py-1 px-3 rounded-full shadow-md">POPULAR</div>
                <h3 class="text-2xl font-semibold mb-2">Plan Empresario</h3>
                <p class="text-gray-800 mb-4 text-sm">La solución perfecta para emprendedores y PYMEs que buscan optimizar su logística y stock.</p>
                <div class="my-6 text-center">
                    <span class="text-4xl font-bold">S/ 450</span>
                    <span class="text-gray-700">/mes</span>
                </div>
                <ul class="space-y-3 text-gray-800 mb-8 flex-grow">
                    <li class="flex items-center"><svg class="w-5 h-5 text-gray-700 mr-2" fill="currentColor" viewBox="0 0 20 20"><path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path></svg>Espacios de 6m² a 15m²</li>
                    <li class="flex items-center"><svg class="w-5 h-5 text-gray-700 mr-2" fill="currentColor" viewBox="0 0 20 20"><path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path></svg>Acceso extendido y prioritario</li>
                    <li class="flex items-center"><svg class="w-5 h-5 text-gray-700 mr-2" fill="currentColor" viewBox="0 0 20 20"><path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path></svg><strong>Control de stock e inventario en tiempo real</strong></li>
                    <li class="flex items-center"><svg class="w-5 h-5 text-gray-700 mr-2" fill="currentColor" viewBox="0 0 20 20"><path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path></svg>Recepción de mercancía (opcional)</li>
                    <li class="flex items-center"><svg class="w-5 h-5 text-gray-700 mr-2" fill="currentColor" viewBox="0 0 20 20"><path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path></svg>Ideal para e-commerce, stock, herramientas</li>
                    <li class="flex items-center"><svg class="w-5 h-5 text-gray-700 mr-2" fill="currentColor" viewBox="0 0 20 20"><path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path></svg>Asesoría básica en organización</li>
                </ul>
                <a href="#contacto" class="mt-auto w-full text-center bg-brand-orange text-white font-semibold py-3 px-6 rounded-lg hover:bg-brand-orange-dark transition duration-300">Quiero Este Plan</a>
            </div>

            <div class="plan-card bg-gray-800 text-white rounded-xl shadow-lg p-8 flex flex-col relative overflow-hidden">
                <h3 class="text-2xl font-semibold brand-yellow mb-2">Plan VIP Exclusivo</h3>
                <p class="text-gray-300 mb-4 text-sm">Servicio premium y personalizado para empresas con requerimientos especiales y alto volumen.</p>
                <div class="my-6 text-center">
                    <span class="text-4xl font-bold brand-yellow">S/ 950</span>
                    <span class="text-gray-400">/mes</span>
                </div>
                <ul class="space-y-3 text-gray-300 mb-8 flex-grow">
                    <li class="flex items-center"><svg class="w-5 h-5 text-brand-yellow mr-2" fill="currentColor" viewBox="0 0 20 20"><path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path></svg>Espacios de +15m² o configurables</li>
                    <li class="flex items-center"><svg class="w-5 h-5 text-brand-yellow mr-2" fill="currentColor" viewBox="0 0 20 20"><path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path></svg>Acceso 24/7 (previa coordinación)</li>
                    <li class="flex items-center"><svg class="w-5 h-5 text-brand-yellow mr-2" fill="currentColor" viewBox="0 0 20 20"><path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path></svg><strong>Gestión de inventario avanzada y personalizada</strong></li>
                    <li class="flex items-center"><svg class="w-5 h-5 text-brand-yellow mr-2" fill="currentColor" viewBox="0 0 20 20"><path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path></svg><strong>Asistente de almacén personal (horas/mes)</strong></li>
                    <li class="flex items-center"><svg class="w-5 h-5 text-brand-yellow mr-2" fill="currentColor" viewBox="0 0 20 20"><path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path></svg>Servicio de embalaje/desembalaje opcional</li>
                    <li class="flex items-center"><svg class="w-5 h-5 text-brand-yellow mr-2" fill="currentColor" viewBox="0 0 20 20"><path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path></svg>Consultoría logística y optimización de espacio</li>
                </ul>
                <a href="#contacto" class="mt-auto w-full text-center bg-brand-orange text-white font-semibold py-3 px-6 rounded-lg hover:bg-brand-orange-dark transition duration-300">Solicitar Asesoría VIP</a>
            </div>
        </div>

        <section id="contacto" class="mt-16 pt-12 border-t border-gray-200">
            <h2 class="text-3xl font-bold text-gray-900 mb-6 text-center">¿Interesado en un Plan? ¡Contáctanos!</h2>
            <div class="max-w-xl mx-auto bg-gray-50 p-8 rounded-lg shadow-md">
                <p class="text-gray-700 mb-4 text-center">Estamos listos para ayudarte a encontrar la solución de almacenamiento perfecta. Déjanos tus datos y te contactaremos a la brevedad.</p>
                <form action="#" method="POST">
                    <div class="mb-4">
                        <label for="nombre" class="block text-sm font-medium text-gray-700">Nombre Completo</label>
                        <input type="text" name="nombre" id="nombre" required class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-brand-orange focus:border-brand-orange sm:text-sm">
                    </div>
                    <div class="mb-4">
                        <label for="email" class="block text-sm font-medium text-gray-700">Correo Electrónico</label>
                        <input type="email" name="email" id="email" required class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-brand-orange focus:border-brand-orange sm:text-sm">
                    </div>
                    <div class="mb-4">
                        <label for="telefono" class="block text-sm font-medium text-gray-700">Teléfono (Opcional)</label>
                        <input type="tel" name="telefono" id="telefono" class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-brand-orange focus:border-brand-orange sm:text-sm">
                    </div>
                    <div class="mb-6">
                        <label for="mensaje" class="block text-sm font-medium text-gray-700">¿Qué plan te interesa o qué necesitas almacenar?</label>
                        <textarea name="mensaje" id="mensaje" rows="4" required class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-brand-orange focus:border-brand-orange sm:text-sm"></textarea>
                    </div>
                    <div>
                        <button type="submit" class="w-full flex justify-center py-3 px-4 border border-transparent rounded-md shadow-sm text-sm font-medium text-white bg-brand-orange hover:bg-brand-orange-dark focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-brand-orange">
                            Enviar Consulta
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
        document.getElementById('currentYear').textContent = new Date().getFullYear();
    </script>

</body>
</html>

