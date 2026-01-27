/**
 * Dark Mode Toggle - Módulo 6
 * Sistema de alternância de tema claro/escuro com persistência
 * Versão: 1.0.0
 */

(function() {
    'use strict';

    // Constantes
    const STORAGE_KEY = 'modulo6-theme';
    const THEME_DARK = 'dark';
    const THEME_LIGHT = 'light';
    const TRANSITION_DURATION = 300;

    /**
     * Classe principal do Dark Mode
     */
    class DarkModeToggle {
        constructor() {
            this.currentTheme = this.getSavedTheme() || THEME_LIGHT;
            this.init();
        }

        /**
         * Inicializa o sistema de dark mode
         */
        init() {
            // Injetar CSS do dark mode
            this.injectDarkModeStyles();
            
            // Aplicar tema salvo imediatamente (antes de renderizar)
            this.applyTheme(this.currentTheme, false);
            
            // Criar botão de toggle
            this.createToggleButton();
            
            // Adicionar event listeners
            this.setupEventListeners();
        }

        /**
         * Injeta os estilos CSS do dark mode no documento
         */
        injectDarkModeStyles() {
            const style = document.createElement('style');
            style.id = 'dark-mode-styles';
            style.textContent = `
                /* Transição suave entre temas */
                body,
                .header,
                .stat-card,
                .video-card,
                .badge-card,
                .module-card,
                .tool-card,
                .task-item,
                .progress-card,
                .content-card,
                input,
                textarea,
                select,
                button:not(.theme-toggle) {
                    transition: background-color ${TRANSITION_DURATION}ms ease,
                                color ${TRANSITION_DURATION}ms ease,
                                border-color ${TRANSITION_DURATION}ms ease,
                                box-shadow ${TRANSITION_DURATION}ms ease;
                }

                /* Dark Mode Variables */
                [data-theme="dark"] {
                    --bg-primary: #1E1E1E;
                    --bg-secondary: #2D2D2D;
                    --bg-tertiary: #3A3A3A;
                    --text-primary: #E0E0E0;
                    --text-secondary: #B0B0B0;
                    --text-tertiary: #808080;
                    --accent: #9B7EBD;
                    --success: #4CAF50;
                    --warning: #FFA726;
                    --danger: #EF5350;
                    --border: #404040;
                    --shadow: rgba(0, 0, 0, 0.5);
                    --gradient: linear-gradient(135deg, #2C4A6D, #8B6BB7);
                }

                /* Aplicar cores do dark mode */
                [data-theme="dark"] body {
                    background: var(--bg-primary);
                    color: var(--text-primary);
                }

                [data-theme="dark"] .header {
                    background: var(--gradient);
                }

                [data-theme="dark"] .stat-card,
                [data-theme="dark"] .video-card,
                [data-theme="dark"] .badge-card,
                [data-theme="dark"] .module-card,
                [data-theme="dark"] .tool-card,
                [data-theme="dark"] .content-card,
                [data-theme="dark"] .task-item {
                    background: var(--bg-secondary);
                    color: var(--text-primary);
                    box-shadow: 0 4px 15px var(--shadow);
                    border-color: var(--border);
                }

                [data-theme="dark"] .progress-card {
                    background: var(--bg-secondary);
                    border-color: var(--border);
                }

                [data-theme="dark"] h2,
                [data-theme="dark"] h3,
                [data-theme="dark"] h4,
                [data-theme="dark"] .stat-value {
                    color: var(--text-primary);
                }

                [data-theme="dark"] .stat-label,
                [data-theme="dark"] .video-duration,
                [data-theme="dark"] .video-block,
                [data-theme="dark"] p,
                [data-theme="dark"] small {
                    color: var(--text-secondary);
                }

                [data-theme="dark"] input,
                [data-theme="dark"] textarea,
                [data-theme="dark"] select {
                    background: var(--bg-tertiary);
                    color: var(--text-primary);
                    border-color: var(--border);
                }

                [data-theme="dark"] input::placeholder,
                [data-theme="dark"] textarea::placeholder {
                    color: var(--text-tertiary);
                }

                [data-theme="dark"] .progress-bar {
                    background: var(--bg-tertiary);
                }

                [data-theme="dark"] .badge {
                    background: var(--bg-tertiary);
                    border-color: var(--border);
                }

                [data-theme="dark"] .badge.unlocked {
                    background: var(--accent);
                }

                [data-theme="dark"] button:not(.theme-toggle) {
                    background: var(--bg-tertiary);
                    color: var(--text-primary);
                    border-color: var(--border);
                }

                [data-theme="dark"] button:not(.theme-toggle):hover {
                    background: var(--bg-secondary);
                }

                /* Botão de Toggle */
                .theme-toggle {
                    position: fixed;
                    top: 20px;
                    right: 20px;
                    width: 50px;
                    height: 50px;
                    border-radius: 50%;
                    background: rgba(255, 255, 255, 0.9);
                    border: 2px solid rgba(0, 0, 0, 0.1);
                    cursor: pointer;
                    display: flex;
                    align-items: center;
                    justify-content: center;
                    font-size: 1.5rem;
                    z-index: 1000;
                    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
                    transition: all 0.3s ease;
                }

                [data-theme="dark"] .theme-toggle {
                    background: rgba(45, 45, 45, 0.95);
                    border-color: rgba(255, 255, 255, 0.1);
                }

                .theme-toggle:hover {
                    transform: scale(1.1) rotate(15deg);
                    box-shadow: 0 6px 20px rgba(0, 0, 0, 0.25);
                }

                .theme-toggle:active {
                    transform: scale(0.95);
                }

                /* Responsivo */
                @media (max-width: 768px) {
                    .theme-toggle {
                        width: 45px;
                        height: 45px;
                        top: 15px;
                        right: 15px;
                        font-size: 1.3rem;
                    }
                }
            `;
            document.head.appendChild(style);
        }

        /**
         * Cria o botão de alternância de tema
         */
        createToggleButton() {
            const button = document.createElement('button');
            button.className = 'theme-toggle';
            button.setAttribute('aria-label', 'Alternar tema claro/escuro');
            button.setAttribute('title', 'Alternar tema');
            button.innerHTML = this.currentTheme === THEME_DARK ? '☀️' : '🌙';
            
            document.body.appendChild(button);
            this.toggleButton = button;
        }

        /**
         * Configura os event listeners
         */
        setupEventListeners() {
            this.toggleButton.addEventListener('click', () => {
                this.toggle();
            });

            // Atalho de teclado: Ctrl+Shift+D
            document.addEventListener('keydown', (e) => {
                if (e.ctrlKey && e.shiftKey && e.key === 'D') {
                    e.preventDefault();
                    this.toggle();
                }
            });
        }

        /**
         * Alterna entre tema claro e escuro
         */
        toggle() {
            this.currentTheme = this.currentTheme === THEME_DARK ? THEME_LIGHT : THEME_DARK;
            this.applyTheme(this.currentTheme, true);
            this.saveTheme(this.currentTheme);
        }

        /**
         * Aplica o tema ao documento
         * @param {string} theme - Tema a ser aplicado
         * @param {boolean} animate - Se deve animar a transição
         */
        applyTheme(theme, animate = true) {
            if (animate) {
                document.documentElement.style.setProperty('--transition-speed', `${TRANSITION_DURATION}ms`);
            } else {
                document.documentElement.style.setProperty('--transition-speed', '0ms');
            }

            document.documentElement.setAttribute('data-theme', theme);
            
            if (this.toggleButton) {
                this.toggleButton.innerHTML = theme === THEME_DARK ? '☀️' : '🌙';
                this.toggleButton.setAttribute('title', 
                    theme === THEME_DARK ? 'Mudar para tema claro' : 'Mudar para tema escuro'
                );
            }

            // Disparar evento customizado para outros scripts
            window.dispatchEvent(new CustomEvent('themechange', { 
                detail: { theme } 
            }));
        }

        /**
         * Salva o tema no localStorage
         * @param {string} theme - Tema a ser salvo
         */
        saveTheme(theme) {
            try {
                localStorage.setItem(STORAGE_KEY, theme);
            } catch (e) {
                console.warn('Não foi possível salvar o tema:', e);
            }
        }

        /**
         * Recupera o tema salvo do localStorage
         * @returns {string|null} - Tema salvo ou null
         */
        getSavedTheme() {
            try {
                return localStorage.getItem(STORAGE_KEY);
            } catch (e) {
                console.warn('Não foi possível recuperar o tema salvo:', e);
                return null;
            }
        }

        /**
         * Detecta preferência do sistema operacional
         * @returns {string} - Tema preferido pelo sistema
         */
        getSystemPreference() {
            if (window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches) {
                return THEME_DARK;
            }
            return THEME_LIGHT;
        }
    }

    // Inicializar quando o DOM estiver pronto
    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', () => {
            new DarkModeToggle();
        });
    } else {
        new DarkModeToggle();
    }

    // Exportar para uso global (opcional)
    window.DarkModeToggle = DarkModeToggle;
})();
