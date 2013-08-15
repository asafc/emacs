;; this file handles emacs appearance

;; first, use the vendor color-theme package
(require 'color-theme)
(color-theme-initialize)

;; selected theme for now, there are many others.
(color-theme-charcoal-black)

;; Highlight matching parentheses when the point is on them.
(show-paren-mode 1)

;; show (line, col) of point
(column-number-mode t)
(line-number-mode t)

;; Highlight current line, currently off.
;;(global-hl-line-mode 1)

;; Typing replaces selected region.
(delete-selection-mode t)

;; require zoom-frm so we can zoom in/out text
(require 'zoom-frm)

(set-default-font "Monaco-15")

(provide 'appearance)
