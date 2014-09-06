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

;; set up package sources
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;; TODO: verify that packages are installed: helm

;; my files --------------------------------------------------------------------

(require 'functions)
(require 'defaults)
(require 'appearance)
(require 'bindings)

;; packages --------------------------------------------------------------------
(require 'setup-ido)
(load-vendor "multiple-cursors")
(require 'multiple-cursors)
(load-vendor "expand-region")
(require 'expand-region)
(require 'helm)
(require 'setup-helm)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
