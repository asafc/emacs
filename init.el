;; set path to dependencies

;; user-emacs-directory is a variable containing the path in which
;; one can find init.el, typically this is ~/.emacs.d/

;; the vendor dir contains ready made packages
(setq vendor-dir
      (expand-file-name "vendor/" user-emacs-directory))

;; the setup dir contains my configuration to built-in emacs properties (like ido)
;; or further customization of vendor packages.
(setq setup-dir
      (expand-file-name "setup/" user-emacs-directory))

;; Set up load path
(add-to-list 'load-path user-emacs-directory)
(add-to-list 'load-path vendor-dir)
(add-to-list 'load-path setup-dir)

(require 'functions)

;; packages
(require 'defaults)
(require 'appearance)
(require 'bindings)
(require 'setup-ido)


