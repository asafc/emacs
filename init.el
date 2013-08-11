;; Turn off mouse interface early in startup to avoid momentary display
;; (if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; no splash screen at emacs init
(setq inhibit-startup-message t)


;; set path to dependencies

;; user-emacs-directory is a variable containing the path in which
;; one can find init.el, typically this is ~/.emacs.d/

;; the vendor dir contains ready made packages
(setq vendor-dir
      (expand-file-name "vendor/" user-emacs-directory))

;; Set up load path
(add-to-list 'load-path user-emacs-directory)
(add-to-list 'load-path vendor-dir)

;; Are we on a mac?
(setq is-mac (equal system-type 'darwin))

;; packages
(require 'appearance)
(require 'bindings)
