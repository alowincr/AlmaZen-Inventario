document.addEventListener('DOMContentLoaded', () => {
    // --- Elementos Landing y Login/Logout original ---
    const landingPage = document.getElementById('landing-page');
    const showLoginBtn = document.getElementById('show-login-btn');
    const loginModal = document.getElementById('login-modal');
    const closeModalBtn = loginModal ? loginModal.querySelector('.close-btn') : null; // loginModal puede no existir si solo probamos dashboard
    const loginForm = document.getElementById('login-form');
    const appDashboard = document.getElementById('app-dashboard');
    const logoutBtn = document.getElementById('logout-btn');

    const navLinks = document.querySelectorAll('.sidebar-nav .nav-link');
    const contentSections = document.querySelectorAll('.content-section');
    const headerTitle = document.getElementById('header-title');

    // --- Funciones Landing y Login/Logout original ---
    function showLoginModal() {
        if (loginModal) loginModal.classList.remove('hidden');
    }

    function hideLoginModal() {
        if (loginModal) loginModal.classList.add('hidden');
    }

    function handleLogin(event) {
        event.preventDefault();
        console.log('Simulando inicio de sesión...');
        if (loginModal) hideLoginModal();
        if (landingPage) landingPage.classList.add('hidden'); //
        if (appDashboard) appDashboard.classList.remove('hidden'); //
        
        // Cargar datos del perfil de usuario (simulado)
        const profileData = {
            name: "Carlos Rodriguez", //
            email: "c.rodriguez@almazen-inventario.com", //
            company: "LogistiCorp (Ejemplo Dashboard)",
            role: "Administrador de Almacén (Dashboard)",
            permissions: "Total (Dashboard)", //
            lastLogin: new Date().toLocaleString() //
        };
        updateUserProfileModalData(profileData);

        switchContent('content-inicio'); //
        updateActiveNavLink(document.querySelector('.nav-link[data-target="content-inicio"]')); //
    }

    function handleLogout() {
        console.log('Cerrando sesión...');
        if (appDashboard) appDashboard.classList.add('hidden'); //
        if (landingPage) landingPage.classList.remove('hidden'); //
        if (loginForm) loginForm.reset(); //
    }

    function switchContent(targetId) {
        contentSections.forEach(section => {
            if (section.id === targetId) {
                section.classList.add('active'); //
            } else {
                section.classList.remove('active'); //
            }
        });
        const activeLink = document.querySelector(`.nav-link[data-target="${targetId}"]`); //
        if (activeLink && headerTitle) {
            headerTitle.textContent = activeLink.textContent.replace(/[\u{1F300}-\u{1F5FF}\u{1F600}-\u{1F64F}\u{1F680}-\u{1F6FF}\u{2600}-\u{26FF}\u{2700}-\u{27BF}]/gu, '').trim(); //
        }
    }

    function updateActiveNavLink(clickedLink) {
        navLinks.forEach(link => link.classList.remove('active')); //
        if (clickedLink) {
            clickedLink.classList.add('active'); //
        }
    }

    function handleNavClick(event) {
        event.preventDefault(); //
        const link = event.target.closest('.nav-link'); //
        if (!link) return; //

        const targetId = link.dataset.target; //
        if (targetId) {
            switchContent(targetId); //
            updateActiveNavLink(link); //
        }
    }

    // --- Event Listeners Landing y Login/Logout original ---
    if (showLoginBtn) showLoginBtn.addEventListener('click', showLoginModal); //
    if (closeModalBtn) closeModalBtn.addEventListener('click', hideLoginModal); //
    if (loginForm) loginForm.addEventListener('submit', handleLogin); //
    if (logoutBtn) logoutBtn.addEventListener('click', handleLogout); //
    
    const sidebarNav = document.querySelector('.sidebar-nav'); //
    if (sidebarNav) sidebarNav.addEventListener('click', handleNavClick); //

    if (loginModal) {
        loginModal.addEventListener('click', (event) => { //
            if (event.target === loginModal) hideLoginModal(); //
        });
    }
    
    // --- Lógica del Carrusel (Landing Page) ---
    const track = document.querySelector('.carousel-track'); //
    if (track) { //
        const slides = Array.from(track.children); //
        const nextButton = document.querySelector('.carousel-button--right'); //
        const prevButton = document.querySelector('.carousel-button--left'); //
        const dotsNav = document.querySelector('.carousel-nav'); //
        const dots = dotsNav ? Array.from(dotsNav.children) : []; //
        const getSlideWidth = () => slides.length > 0 ? slides[0].getBoundingClientRect().width : 0; //

        const moveToSlide = (targetIndex) => { //
            const currentSlide = track.querySelector('.current-slide'); //
            const currentDot = dotsNav ? dotsNav.querySelector('.current-indicator') : null; //
            const targetSlide = slides[targetIndex]; //
            const targetDot = dotsNav ? dots[targetIndex] : null; //
            const slideWidth = getSlideWidth(); //
            const amountToMove = targetIndex * slideWidth; //

            if (!targetSlide) return; //
            if (!currentSlide) { // Si no hay current-slide (inicialización)
                 slides[0].classList.add('current-slide'); // Asigna la primera como actual //
                 if (dotsNav && dots.length > 0) dots[0].classList.add('current-indicator'); //
            }


            track.style.transform = 'translateX(-' + amountToMove + 'px)'; //
            if(currentSlide) currentSlide.classList.remove('current-slide'); //
            targetSlide.classList.add('current-slide'); //

            if (dotsNav && currentDot && targetDot) {
                currentDot.classList.remove('current-indicator'); //
                targetDot.classList.add('current-indicator'); //
            }
             if (dotsNav && !currentDot && targetDot) { // Si no había currentDot (inicialización)
                targetDot.classList.add('current-indicator'); //
            }


            if (prevButton && nextButton) {
                prevButton.classList.toggle('hidden', targetIndex === 0); //
                nextButton.classList.toggle('hidden', targetIndex === slides.length - 1); //
            }
        };

        if (nextButton) {
            nextButton.addEventListener('click', () => { //
                const currentSlide = track.querySelector('.current-slide'); //
                const currentIndex = slides.findIndex(slide => slide === currentSlide); //
                const nextIndex = currentIndex + 1; //
                if (nextIndex < slides.length) moveToSlide(nextIndex); //
            });
        }

        if (prevButton) {
            prevButton.addEventListener('click', () => { //
                const currentSlide = track.querySelector('.current-slide'); //
                const currentIndex = slides.findIndex(slide => slide === currentSlide); //
                const prevIndex = currentIndex - 1; //
                if (prevIndex >= 0) moveToSlide(prevIndex); //
            });
        }
        
        if (dotsNav) {
            dotsNav.addEventListener('click', e => { //
                const targetDot = e.target.closest('button.carousel-indicator'); //
                if (!targetDot) return; //
                const targetIndex = dots.findIndex(dot => dot === targetDot); //
                moveToSlide(targetIndex); //
            });
        }

        window.addEventListener('resize', () => { //
            const currentSlide = track.querySelector('.current-slide'); //
            const currentIndex = slides.findIndex(slide => slide === currentSlide); //
            if (currentIndex === -1 && slides.length > 0) { // Si no hay current slide, default a 0
                moveToSlide(0); //
                return;
            }
            if (currentIndex >=0) { // Solo si hay un current slide
                const slideWidth = getSlideWidth(); //
                const amountToMove = currentIndex * slideWidth; //
                track.style.transition = 'none'; //
                track.style.transform = 'translateX(-' + amountToMove + 'px)'; //
                setTimeout(() => { //
                    track.style.transition = 'transform 0.5s ease-in-out'; //
                }, 50);
            }
        });
        
        const initialIndex = slides.findIndex(slide => slide.classList.contains('current-slide')); //
        moveToSlide(initialIndex >= 0 ? initialIndex : 0); //

    } // Fin del if (track)

    // --- INICIO: LÓGICA DE MODALES INTEGRADOS ---
    const integratedModalsConfig = [ //
        { btnId: 'openEmployeeModalBtn', modalId: 'employeeModal', contentId: 'modalContent', closeBtnId: 'closeEmployeeModalBtn', cancelBtnId: 'cancelEmployeeModalBtn', formId: 'newEmployeeForm' }, //
        { btnId: 'registerSaleBtn', modalId: 'successModal', contentId: 'successModalContent', closeBtnId: 'closeSuccessModalBtn', cancelBtnId: null, formId: null }, //
        { btnId: 'generatePOBtn', modalId: 'purchaseOrderModal', contentId: 'purchaseOrderModalContent', closeBtnId: 'closePOModalBtn', cancelBtnId: null, formId: null, exportBtnId: 'exportPOBtn' }, //
        { btnId: 'openNewProductModalBtn', modalId: 'newProductModal', contentId: 'newProductModalContent', closeBtnId: 'closeNewProductModalBtn', cancelBtnId: 'cancelNewProductModalBtn', formId: 'newProductForm' }, //
        { btnId: 'openNewProductModalBtnInFAQ', modalId: 'newProductModal', contentId: 'newProductModalContent', closeBtnId: 'closeNewProductModalBtn', cancelBtnId: 'cancelNewProductModalBtn', formId: 'newProductForm' }, 
        { btnId: 'openNewWarehouseModalBtn', modalId: 'newWarehouseModal', contentId: 'newWarehouseModalContent', closeBtnId: 'closeNewWarehouseModalBtn', cancelBtnId: 'cancelNewWarehouseModalBtn', formId: 'newWarehouseForm' }, //
        { btnId: 'openNewTransferModalBtn', modalId: 'newTransferModal', contentId: 'newTransferModalContent', closeBtnId: 'closeNewTransferModalBtn', cancelBtnId: 'cancelNewTransferModalBtn', formId: 'newTransferForm' }, //
        { btnId: 'openNewTransferModalBtnInFAQ', modalId: 'newTransferModal', contentId: 'newTransferModalContent', closeBtnId: 'closeNewTransferModalBtn', cancelBtnId: 'cancelNewTransferModalBtn', formId: 'newTransferForm' }, 
        { btnId: 'openManageShelvesModalBtn', modalId: 'manageShelvesModal', contentId: 'manageShelvesModalContent', closeBtnId: 'closeManageShelvesModalBtn', cancelBtnId: 'acceptManageShelvesModalBtn', formId: null }, //
        { btnId: 'openSupportModalBtn', modalId: 'contactSupportModal', contentId: 'contactSupportModalContent', closeBtnId: 'closeSupportModalBtn', cancelBtnId: 'cancelSupportModalBtn', formId: 'supportForm' }, //
        { btnId: 'openUserProfileModalBtn', modalId: 'userProfileModal', contentId: 'userProfileModalContent', closeBtnId: 'closeUserProfileModalBtn', cancelBtnId: 'acceptUserProfileModalBtn', formId: null }, //
        { btnId: 'openQuickQueryModalBtn', modalId: 'quickQueryModal', contentId: 'quickQueryModalContent', closeBtnId: 'closeQuickQueryModalBtn', cancelBtnId: null, formId: null, consultBtnId: 'quickQueryConsultBtn', productSelectId: 'quickQueryProductSelect' } //
    ];

    const idEmpleadoInput = document.getElementById('idEmpleado'); //
    const prodCodigoInput = document.getElementById('prodCodigo'); //
    const trDateInput = document.getElementById('trDate'); //

    const FIXED_EMPLOYEE_ID_PREFIX = 'EMP';
    const FIXED_PRODUCT_ID_PREFIX = 'PRD';
    let nextEmployeeId = 4; 
    let nextProductId = 4;  

    function generateNewId(prefix, currentMax) {
        return prefix + String(currentMax).padStart(3, '0');
    }

    function isAnyIntegratedModalOpen() { //
        for (const config of integratedModalsConfig) { //
            const modal = document.getElementById(config.modalId); //
            if (modal && !modal.classList.contains('hidden') && modal.classList.contains('opacity-100')) { //
                 return true; //
            }
        }
        return false; //
    }

    function closeIntegratedModal(modalToClose, contentToClose) { //
        if (!modalToClose || !contentToClose) return; //
        modalToClose.classList.remove('opacity-100'); //
        modalToClose.classList.add('opacity-0'); //
        contentToClose.classList.remove('scale-100'); //
        contentToClose.classList.add('scale-95'); //
        setTimeout(() => { //
            modalToClose.classList.add('hidden'); //
            modalToClose.classList.remove('flex'); // Tailwind class to remove display:flex //
            if (!isAnyIntegratedModalOpen() && (!loginModal || loginModal.classList.contains('hidden'))) { // Check both types of modals
                 document.body.classList.remove('modal-open'); //
            }
        }, 300); // Match CSS transition
    }

    function openIntegratedModal(modalToOpen, contentToOpen, config) { //
        if (!modalToOpen || !contentToOpen) return; //

        if (config.modalId === 'employeeModal' && idEmpleadoInput) { //
            idEmpleadoInput.value = generateNewId(FIXED_EMPLOYEE_ID_PREFIX, nextEmployeeId);
        }
        if (config.modalId === 'newProductModal' && prodCodigoInput) { //
            prodCodigoInput.value = generateNewId(FIXED_PRODUCT_ID_PREFIX, nextProductId);
        }
        if (config.modalId === 'newTransferModal' && trDateInput) { //
            trDateInput.valueAsDate = new Date(); // Set to current date //
        }
        
        if (config.modalId === 'userProfileModal') { //
            const currentUsername = document.getElementById('header-username') ? document.getElementById('header-username').textContent : 'Usuario Ejemplo'; //
        }


        modalToOpen.classList.remove('hidden'); //
        modalToOpen.classList.add('flex'); // Tailwind class for display:flex //
        
        void modalToOpen.offsetWidth;  //

        modalToOpen.classList.remove('opacity-0'); //
        modalToOpen.classList.add('opacity-100'); //
        contentToOpen.classList.remove('scale-95'); //
        contentToOpen.classList.add('scale-100'); //
        document.body.classList.add('modal-open'); //
    }
    
    function updateUserProfileModalData(profileData) {
        const nameEl = document.getElementById('profile-modal-name');
        const emailEl = document.getElementById('profile-modal-email');
        const companyEl = document.getElementById('profile-modal-company');
        const roleEl = document.getElementById('profile-modal-role');
        const permissionsEl = document.getElementById('profile-modal-permissions');
        const lastLoginEl = document.getElementById('profile-modal-last-login');

        if (nameEl) nameEl.textContent = profileData.name || 'N/A';
        if (emailEl) emailEl.textContent = profileData.email || 'N/A';
        if (companyEl) companyEl.textContent = profileData.company || 'N/A';
        if (roleEl) roleEl.textContent = profileData.role || 'N/A';
        if (permissionsEl) permissionsEl.textContent = profileData.permissions || 'N/A';
        if (lastLoginEl) lastLoginEl.textContent = profileData.lastLogin || 'N/A';
    }


    function exportPurchaseOrder() { //
        console.log("Exportando Orden de Compra (Simulado)..."); //
        alert("Función de exportación no implementada en este ejemplo."); //
    }

    function consultProduct(selectElement) { //
        if (!selectElement) return; //
        const selectedProductName = selectElement.value; //
        if (selectedProductName) { //
            console.log(`Consultando producto (Simulado): ${selectedProductName}`); //
            alert(`Consulta rápida para: ${selectedProductName} (Simulado)`); //
        } else {
            alert("Por favor, seleccione un producto para consultar."); //
        }
    }

    integratedModalsConfig.forEach(config => { //
        const openBtn = document.getElementById(config.btnId); //
        const modal = document.getElementById(config.modalId); //
        const content = document.getElementById(config.contentId); //
        const closeBtn = document.getElementById(config.closeBtnId); //
        const cancelBtn = config.cancelBtnId ? document.getElementById(config.cancelBtnId) : null; //
        const exportBtn = config.exportBtnId ? document.getElementById(config.exportBtnId) : null; //
        const consultBtn = config.consultBtnId ? document.getElementById(config.consultBtnId) : null; //
        const productSelect = config.productSelectId ? document.getElementById(config.productSelectId) : null; //
        const form = config.formId ? document.getElementById(config.formId) : null; //

        const openFunc = () => openIntegratedModal(modal, content, config); //
        const closeFunc = () => closeIntegratedModal(modal, content); //

        if (openBtn) openBtn.addEventListener('click', openFunc); //
        if (closeBtn) closeBtn.addEventListener('click', closeFunc); //
        if (cancelBtn) cancelBtn.addEventListener('click', closeFunc); //
        
        if (modal) {
            modal.addEventListener('click', (event) => { //
                if (event.target === modal) closeFunc(); //
            });
        }

        if (exportBtn) exportBtn.addEventListener('click', exportPurchaseOrder); //
        if (consultBtn && productSelect) consultBtn.addEventListener('click', () => consultProduct(productSelect)); //

        if (form) {
            form.addEventListener('submit', (event) => { //
                event.preventDefault(); //
                const formData = new FormData(form); //
                const data = Object.fromEntries(formData.entries()); //
                console.log(`Datos Formulario (${config.formId}):`, data); //
                
                const successModalEl = document.getElementById('successModal'); //
                const successModalContentEl = document.getElementById('successModalContent'); //
                if (successModalEl && successModalContentEl && config.modalId !== 'successModal' && config.modalId !== 'purchaseOrderModal' && config.modalId !== 'manageShelvesModal' && config.modalId !== 'userProfileModal' && config.modalId !== 'quickQueryModal') {
                     openIntegratedModal(successModalEl, successModalContentEl, integratedModalsConfig.find(m => m.modalId === 'successModal')); //
                } else {
                    alert(`Formulario ${config.formId} enviado (simulado).`); //
                }

                closeFunc(); 
                form.reset(); //

                if (config.modalId === 'employeeModal') { //
                    nextEmployeeId++; 
                    if (idEmpleadoInput) idEmpleadoInput.value = generateNewId(FIXED_EMPLOYEE_ID_PREFIX, nextEmployeeId); //
                }
                if (config.modalId === 'newProductModal') { //
                    nextProductId++; 
                    if (prodCodigoInput) prodCodigoInput.value = generateNewId(FIXED_PRODUCT_ID_PREFIX, nextProductId); //
                }
            });
        }
    });

    document.addEventListener('keydown', (event) => { //
        if (event.key === 'Escape') { //
            let closedAModal = false;
            for (let i = integratedModalsConfig.length - 1; i >= 0; i--) { //
                const config = integratedModalsConfig[i]; //
                const modal = document.getElementById(config.modalId); //
                const content = document.getElementById(config.contentId); //
                if (modal && !modal.classList.contains('hidden') && modal.classList.contains('opacity-100')) { //
                    closeIntegratedModal(modal, content); //
                    closedAModal = true;
                    break; 
                }
            }
            if (!closedAModal && loginModal && !loginModal.classList.contains('hidden')) {
                hideLoginModal();
            }
        }
    });
    // --- FIN: LÓGICA DE MODALES INTEGRADOS ---

});