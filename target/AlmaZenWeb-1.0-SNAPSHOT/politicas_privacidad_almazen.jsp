

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Política de Privacidad - AlmaZen</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        /* Estilos personalizados */
        body {
            font-family: 'Inter', sans-serif; /* Fuente Inter como se sugiere */
        }
        .brand-yellow { color: #FFC107; } /* Amarillo principal */
        .brand-orange { color: #FF8C00; } /* Naranja para acentos */
        .bg-brand-yellow { background-color: #FFC107; }
        .bg-brand-orange { background-color: #FF8C00; }
        .border-brand-yellow { border-color: #FFC107; }
        .hover-bg-brand-orange-dark:hover { background-color: #E77A00; }


        /* Estilos para el botón flotante (similares a tu ejemplo) */
        .floating-button {
            position: fixed;
            top: 1.5rem; /* 6 unidades de Tailwind (6*0.25rem = 1.5rem) */
            left: 1.5rem; /* 6 unidades de Tailwind */
            z-index: 50;
            transition: all 0.3s ease-in-out;
        }
        .floating-button:hover {
            transform: scale(1.05);
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
        <h2 class="text-2xl md:text-3xl font-semibold text-gray-900 mb-6 text-center">Política de Privacidad de AlmaZen</h2>

        <div class="bg-gray-50 p-6 md:p-8 rounded-lg shadow-lg space-y-6">
            <p class="text-sm text-gray-600">Fecha de última actualización: 27 de mayo de 2025</p>

            <p><strong>ALMAZEN PERÚ S.A.C.</strong> (en adelante, "AlmaZen"), con RUC N° 20600123451, domiciliada en Av. Dos de Mayo 1234, Oficina 506, San Isidro, Lima, Perú, valora su privacidad y se compromete a proteger su información personal en cumplimiento con la Ley de Protección de Datos Personales N° 29733, su Reglamento aprobado por Decreto Supremo N° 003-2013-JUS, y demás normativa aplicable (en adelante, la "Normativa de Protección de Datos Personales").</p>
            <p>Esta Política de Privacidad describe cómo AlmaZen, en calidad de titular del banco de datos personales, recopila, usa, almacena, comparte y protege la información personal de los usuarios (en adelante, "Usted" o el "Usuario") de nuestros servicios de alquiler de espacios de almacenamiento para pequeños emprendedores.</p>

            <section>
                <h3 class="text-xl font-semibold text-gray-900 mb-3">1. ¿Qué Información Personal Recopilamos?</h3>
                <p>AlmaZen puede recopilar y tratar los siguientes datos personales, necesarios para la prestación de nuestros servicios:</p>
                <ul class="list-disc list-inside space-y-2 pl-4 text-gray-700 mt-2">
                    <li><strong>Datos de Identificación y Contacto:</strong> Nombres y apellidos completos, número de Documento Nacional de Identidad (DNI) o Carné de Extranjería, RUC (si aplica), dirección de correo electrónico, número de teléfono, domicilio.</li>
                    <li><strong>Información de su Emprendimiento:</strong> Nombre comercial o razón social de su emprendimiento, sector o rubro, descripción general de los bienes a almacenar (ej. productos artesanales, stock de e-commerce no perecible, herramientas de trabajo de bajo volumen, material publicitario, etc.), siempre verificando que se ajusten a nuestros términos y condiciones.</li>
                    <li><strong>Información Contractual y de Facturación:</strong> Datos necesarios para la gestión del contrato de alquiler, historial de pagos, información para la emisión de comprobantes de pago electrónicos de acuerdo a la normativa de SUNAT. No almacenamos directamente datos sensibles de tarjetas de crédito o débito; estos son procesados por pasarelas de pago certificadas.</li>
                    <li><strong>Información de Uso del Servicio:</strong> Registros de acceso a las instalaciones (controlados por seguridad), fechas y horarios de uso del espacio alquilado, tipo y código del espacio asignado.</li>
                    <li><strong>Comunicaciones y Consultas:</strong> Correspondencia electrónica, registros de llamadas telefónicas (si aplican y se informa previamente), y cualquier otra comunicación que mantenga con nuestro personal.</li>
                    <li><strong>Videovigilancia:</strong> Imágenes captadas por nuestro sistema de videovigilancia (CCTV) en áreas comunes de nuestras instalaciones en San Isidro, con fines de seguridad de bienes y personas. Estas áreas están debidamente señalizadas.</li>
                </ul>
                 <p class="mt-2">La información solicitada es obligatoria para la correcta prestación del servicio. La negativa a proporcionarla podría implicar la imposibilidad de contratar nuestros servicios.</p>
            </section>

            <section>
                <h3 class="text-xl font-semibold text-gray-900 mb-3">2. ¿Para Qué Fines Utilizamos su Información Personal?</h3>
                <p>Sus datos personales serán utilizados para las siguientes finalidades principales y necesarias:</p>
                <ul class="list-disc list-inside space-y-2 pl-4 text-gray-700 mt-2">
                    <li>Verificar su identidad y la de su emprendimiento.</li>
                    <li>Gestionar la relación contractual derivada del alquiler del espacio de almacenamiento.</li>
                    <li>Procesar pagos y emitir los comprobantes de pago correspondientes.</li>
                    <li>Permitir y controlar el acceso seguro a nuestras instalaciones en San Isidro.</li>
                    <li>Brindarle asistencia y responder a sus consultas, solicitudes o reclamos.</li>
                    <li>Enviar comunicaciones administrativas y operativas relacionadas con el servicio (ej. recordatorios de pago, notificaciones sobre mantenimiento, cambios en los términos).</li>
                    <li>Cumplir con nuestras obligaciones legales y regulatorias peruanas, incluyendo requerimientos de SUNAT u otras autoridades competentes.</li>
                    <li>Garantizar la seguridad de nuestras instalaciones, bienes almacenados, personal y otros usuarios.</li>
                    <li>Realizar encuestas de satisfacción (con su consentimiento previo si la finalidad es distinta a la mejora del servicio contratado).</li>
                </ul>
                <p class="mt-2">Adicionalmente, y solo si contamos con su consentimiento explícito, podremos utilizar sus datos de contacto para enviarle información publicitaria sobre promociones, nuevos servicios o eventos de AlmaZen que consideremos puedan ser de su interés.</p>
            </section>

            <section>
                <h3 class="text-xl font-semibold text-gray-900 mb-3">3. ¿Con Quién Compartimos su Información Personal?</h3>
                <p>AlmaZen no vende ni cede sus datos personales a terceros con fines comerciales. Sus datos personales podrán ser compartidos o accedidos por:</p>
                <ul class="list-disc list-inside space-y-2 pl-4 text-gray-700 mt-2">
                    <li><strong>Proveedores de Servicios:</strong> Encargados de tratamiento que nos asisten en la operación del negocio, tales como:
                        <ul class="list-circle list-inside pl-4 mt-1 space-y-1">
                            <li>Empresas de seguridad y vigilancia para nuestras instalaciones en San Isidro.</li>
                            <li>Proveedores de software de gestión de clientes y facturación electrónica autorizados por SUNAT.</li>
                            <li>Servicios de pasarela de pagos para el procesamiento seguro de transacciones.</li>
                            <li>Asesores legales, contables y auditores externos, cuando sea estrictamente necesario.</li>
                        </ul>
                        Estos proveedores actúan bajo nuestras instrucciones y han suscrito acuerdos de confidencialidad y tratamiento de datos.
                    </li>
                    <li><strong>Autoridades Gubernamentales:</strong> En cumplimiento de obligaciones legales, podremos compartir información con autoridades competentes como la Policía Nacional del Perú, el Ministerio Público, el Poder Judicial, SUNAT, la Autoridad Nacional de Protección de Datos Personales, entre otros, siempre que medie un requerimiento formal y legal.</li>
                    <li><strong>Transferencias Internacionales:</strong> Si para la prestación de algún servicio auxiliar (ej. almacenamiento en la nube para nuestros sistemas de gestión) se requiriese una transferencia internacional de datos, nos aseguraremos de que el país receptor cuente con niveles de protección adecuados o se adopten las garantías previstas en la Normativa de Protección de Datos Personales. De ser el caso, esto será informado oportunamente.</li>
                </ul>
            </section>

            <section>
                <h3 class="text-xl font-semibold text-gray-900 mb-3">4. Plazo de Conservación de los Datos Personales</h3>
                <p>Sus datos personales serán conservados mientras se mantenga la relación contractual con AlmaZen y, posteriormente, por el tiempo necesario para cumplir con las finalidades descritas y con las obligaciones legales aplicables (por ejemplo, los plazos de prescripción legales y tributarios en Perú, que suelen ser de hasta 10 años para ciertos documentos).</p>
            </section>

            <section>
                <h3 class="text-xl font-semibold text-gray-900 mb-3">5. Medidas de Seguridad</h3>
                <p>AlmaZen ha adoptado las medidas técnicas, organizativas y legales necesarias para garantizar la seguridad y confidencialidad de sus datos personales y evitar su alteración, pérdida, tratamiento o acceso no autorizado. Estas medidas incluyen, entre otras, controles de acceso físico a nuestras bodegas en San Isidro, sistemas de videovigilancia (CCTV) en áreas comunes (debidamente señalizado según la normativa), protocolos de seguridad informática para proteger nuestros sistemas de gestión, y capacitación a nuestro personal.</p>
            </section>

            <section>
                <h3 class="text-xl font-semibold text-gray-900 mb-3">6. Ejercicio de Derechos ARCO</h3>
                <p>Como titular de sus datos personales, Usted tiene derecho a ejercer los derechos de Acceso, Rectificación, Cancelación y Oposición (derechos ARCO) previstos en la Normativa de Protección de Datos Personales. Para ello, puede dirigir una solicitud por escrito a nuestra dirección postal: Av. Dos de Mayo 1234, Oficina 506, San Isidro, Lima, Perú, o a través de nuestro correo electrónico: <a href="mailto:datospersonales@almazen.pe" class="text-brand-orange hover:underline">datospersonales@almazen.pe</a>, adjuntando una copia de su DNI o documento de identidad equivalente.</p>
                <p class="mt-2">Su solicitud deberá contener, como mínimo: nombres y apellidos del titular del derecho, petición concreta, domicilio o correo electrónico para notificaciones, fecha y firma, y documentos que sustenten la petición, de ser el caso. Responderemos a su solicitud en los plazos establecidos por ley.</p>
                <p class="mt-2">De considerar que no ha sido debidamente atendido en el ejercicio de sus derechos, puede presentar una reclamación ante la Autoridad Nacional de Protección de Datos Personales.</p>
            </section>

            <section>
                <h3 class="text-xl font-semibold text-gray-900 mb-3">7. Uso de Cookies</h3>
                <p>Nuestro sitio web <a href="https://www.almazen.pe" class="text-brand-orange hover:underline">www.almazen.pe</a> (sitio web simulado) utiliza cookies esenciales para su correcto funcionamiento, como aquellas que permiten gestionar su sesión de usuario en caso de tener un portal de clientes, o recordar sus preferencias. También podríamos utilizar cookies analíticas anónimas para entender cómo los usuarios interactúan con nuestro sitio y así mejorar su experiencia. Usted puede gestionar o deshabilitar el uso de cookies a través de la configuración de su navegador. Para más información, puede consultar nuestra [Política de Cookies] (si se desarrolla por separado).</p>
            </section>

            <section>
                <h3 class="text-xl font-semibold text-gray-900 mb-3">8. Modificaciones a esta Política de Privacidad</h3>
                <p>AlmaZen se reserva el derecho de modificar o actualizar esta Política de Privacidad en cualquier momento, especialmente para adaptarla a novedades legislativas o jurisprudenciales. Cualquier cambio será comunicado oportunamente a través de nuestro sitio web o por correo electrónico si la modificación es sustancial. Le recomendamos revisar esta política periódicamente.</p>
            </section>

            <section>
                <h3 class="text-xl font-semibold text-gray-900 mb-3">9. Consentimiento</h3>
                <p>Al proporcionarnos sus datos personales y utilizar nuestros servicios, Usted declara haber leído y comprendido la presente Política de Privacidad y otorga su consentimiento para el tratamiento de sus datos personales de acuerdo con las finalidades y términos aquí expuestos.</p>
            </section>

            <section>
                <h3 class="text-xl font-semibold text-gray-900 mb-3">10. Contacto</h3>
                <p>Si tiene alguna pregunta, inquietud o desea ejercer sus derechos ARCO, puede contactarnos a:</p>
                <ul class="list-none space-y-1 pl-4 text-gray-700 mt-2">
                    <li><strong>Razón Social:</strong> ALMAZEN PERÚ S.A.C.</li>
                    <li><strong>RUC:</strong> 20600123451</li>
                    <li><strong>Dirección:</strong> Av. Dos de Mayo 1234, Oficina 506, San Isidro, Lima, Perú.</li>
                    <li><strong>Correo Electrónico (Derechos ARCO):</strong> <a href="mailto:datospersonales@almazen.pe" class="text-brand-orange hover:underline">datospersonales@almazen.pe</a></li>
                    <li><strong>Teléfono (Atención al Cliente):</strong> +51 1 700-1234 (Horario: Lunes a Viernes de 9:00 a 18:00)</li>
                </ul>
            </section>
        </div>
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
