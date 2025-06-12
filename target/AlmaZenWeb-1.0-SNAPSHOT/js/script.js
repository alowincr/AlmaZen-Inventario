document.addEventListener('DOMContentLoaded', () => {
    // --- Elementos ---
    const landingPage = document.getElementById('landing-page');
    const showLoginBtn = document.getElementById('show-login-btn');
    const loginModal = document.getElementById('login-modal');
    const closeModalBtn = loginModal.querySelector('.close-btn');
    const loginForm = document.getElementById('login-form');
    const appDashboard = document.getElementById('app-dashboard');
    const logoutBtn = document.getElementById('logout-btn');

    const navLinks = document.querySelectorAll('.sidebar-nav .nav-link');
    const contentSections = document.querySelectorAll('.content-section');
    const headerTitle = document.getElementById('header-title');
    // --- Selectores Adicionales (añadir al inicio del script) ---
    const showProfileTrigger = document.getElementById('show-profile-trigger');
    const userProfileModal = document.getElementById('user-profile-modal');
    // Usamos optional chaining (?.) por si el modal no se carga correctamente
    const closeProfileModalBtn = userProfileModal?.querySelector('.close-btn');
    const closeProfileModalBtnAlt = userProfileModal?.querySelector('.close-profile-modal-btn');

    // --- Funciones ---

    // Mostrar Modal de Login
    function showLoginModal() {
        loginModal.classList.remove('hidden');
    }

    // Ocultar Modal de Login
    function hideLoginModal() {
        loginModal.classList.add('hidden');
    }

    // Cambiar entre secciones de contenido
    function switchContent(targetId) {
        contentSections.forEach(section => {
            if (section.id === targetId) {
                section.classList.add('active');
            } else {
                section.classList.remove('active');
            }
        });
        // Actualizar título del header
        const activeLink = document.querySelector(`.nav-link[data-target="${targetId}"]`);
        if (activeLink) {
            headerTitle.textContent = activeLink.textContent.replace(/[\u{1F300}-\u{1F5FF}\u{1F600}-\u{1F64F}\u{1F680}-\u{1F6FF}\u{2600}-\u{26FF}\u{2700}-\u{27BF}]/gu, '').trim(); // Quita emojis y espacios
        }
    }

    // Actualizar el link activo en el menú lateral
    function updateActiveNavLink(clickedLink) {
        navLinks.forEach(link => link.classList.remove('active'));
        if (clickedLink) {
            clickedLink.classList.add('active');
        }
    }

    // Manejar click en links de navegación
    function handleNavClick(event) {
        event.preventDefault();
        const link = event.target.closest('.nav-link'); // Asegura que capturamos el enlace si se hace clic en el icono/texto
        if (!link) return; // Si no se hizo clic en un enlace, salir

        const targetId = link.dataset.target;
        if (targetId) {
            switchContent(targetId);
            updateActiveNavLink(link);
        }
    }
    function showUserProfileModal() {
        if (userProfileModal) userProfileModal.classList.remove('hidden');
        // Aquí podrías actualizar dinámicamente los datos si vinieran de una API
        // Ejemplo: document.getElementById('profile-name').textContent = nombreReal;
      }
      function hideUserProfileModal() {
        if (userProfileModal) userProfileModal.classList.add('hidden');
      }


    // --- Event Listeners ---
    if (showLoginBtn) {
        showLoginBtn.addEventListener('click', showLoginModal);
    }
    if (closeModalBtn) {
        closeModalBtn.addEventListener('click', hideLoginModal);
    }
    if (loginForm) {
        loginForm.addEventListener('submit', handleLogin);
    }
    if (logoutBtn) {
        logoutBtn.addEventListener('click', handleLogout);
    }
    if (showProfileTrigger) {
        showProfileTrigger.addEventListener('click', showUserProfileModal);
      }
      if (closeProfileModalBtn) {
        closeProfileModalBtn.addEventListener('click', hideUserProfileModal);
      }
      if (closeProfileModalBtnAlt) {
          closeProfileModalBtnAlt.addEventListener('click', hideUserProfileModal);
      }
      // Cerrar modal al hacer clic fuera
      if (userProfileModal) {
        userProfileModal.addEventListener('click', (event) => {
          if (event.target === userProfileModal) {
            hideUserProfileModal();
          }
        });
      }

    // Añadir listener al contenedor de navegación para eficiencia
    const sidebarNav = document.querySelector('.sidebar-nav');
    if (sidebarNav) {
        sidebarNav.addEventListener('click', handleNavClick);
    }

    // Cerrar modal si se hace clic fuera del contenido
    loginModal.addEventListener('click', (event) => {
        if (event.target === loginModal) { // Si el clic fue directamente en el fondo del modal
            hideLoginModal();
        }
    });

    // Estado inicial: Asegurarse de que solo la landing page es visible (si no hay sesión activa simulada)
    // (Ya gestionado por las clases 'hidden' en HTML)

    // --- Carrusel Logic ---
    const track = document.querySelector('.carousel-track');

    if (track) { // Ejecutar solo si el carrusel existe
        const slides = Array.from(track.children);
        const nextButton = document.querySelector('.carousel-button--right');
        const prevButton = document.querySelector('.carousel-button--left');
        const dotsNav = document.querySelector('.carousel-nav');
        const dots = dotsNav ? Array.from(dotsNav.children) : [];

        // Función para obtener el ancho del slide (se necesita para calcular el movimiento)
        const getSlideWidth = () => slides.length > 0 ? slides[0].getBoundingClientRect().width : 0;

        // Función reutilizable para mover slides
        const moveToSlide = (targetIndex) => {
            const currentSlide = track.querySelector('.current-slide');
            const currentDot = dotsNav ? dotsNav.querySelector('.current-indicator') : null;
            const targetSlide = slides[targetIndex];
            const targetDot = dotsNav ? dots[targetIndex] : null;
            const slideWidth = getSlideWidth();
            const amountToMove = targetIndex * slideWidth;

            if (!targetSlide) return; // Salir si el slide no existe

            track.style.transform = 'translateX(-' + amountToMove + 'px)';
            currentSlide.classList.remove('current-slide');
            targetSlide.classList.add('current-slide');

            if (dotsNav && currentDot && targetDot) {
                currentDot.classList.remove('current-indicator');
                targetDot.classList.add('current-indicator');
            }

            // Actualizar estado de los botones
            if (prevButton && nextButton) {
                prevButton.classList.toggle('hidden', targetIndex === 0);
                nextButton.classList.toggle('hidden', targetIndex === slides.length - 1);
            }
        };

        // Click en flecha derecha
        nextButton.addEventListener('click', () => {
            const currentSlide = track.querySelector('.current-slide');
            const currentIndex = slides.findIndex(slide => slide === currentSlide);
            const nextIndex = currentIndex + 1;
            if (nextIndex < slides.length) { // Verificar que no sea el último
                moveToSlide(nextIndex);
            }
        });

        // Click en flecha izquierda
        prevButton.addEventListener('click', () => {
            const currentSlide = track.querySelector('.current-slide');
            const currentIndex = slides.findIndex(slide => slide === currentSlide);
            const prevIndex = currentIndex - 1;
            if (prevIndex >= 0) { // Verificar que no sea el primero
                moveToSlide(prevIndex);
            }
        });

        // Click en los puntos indicadores
        if (dotsNav) {
            dotsNav.addEventListener('click', e => {
                const targetDot = e.target.closest('button.carousel-indicator');
                if (!targetDot) return;
                const targetIndex = dots.findIndex(dot => dot === targetDot);
                moveToSlide(targetIndex);
            });
        }

        // Ajustar carrusel si la ventana cambia de tamaño
        window.addEventListener('resize', () => {
            // Recalcular posición sin animación para evitar saltos
            const currentSlide = track.querySelector('.current-slide');
            const currentIndex = slides.findIndex(slide => slide === currentSlide);
            const slideWidth = getSlideWidth();
            const amountToMove = currentIndex * slideWidth;
            track.style.transition = 'none'; // Desactivar animación temporalmente
            track.style.transform = 'translateX(-' + amountToMove + 'px)';
            // Reactivar animación después de un instante
            setTimeout(() => {
                track.style.transition = 'transform 0.5s ease-in-out';
            }, 50);
        });

        // Estado inicial (asegurarse que la primera flecha izquierda esté oculta si aplica)
        const initialIndex = slides.findIndex(slide => slide.classList.contains('current-slide'));
        moveToSlide(initialIndex >= 0 ? initialIndex : 0); // Mueve al slide inicial o al primero

    } // Fin del if (track)
    // --- Fin Carrusel Logic ---

    //}); // ESTA ES LA LLAVE DE CIERRE FINAL DEL DOMContentLoaded, PEGA EL CÓDIGO ANTES DE ESTA LÍNEA
});