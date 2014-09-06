;; this file handles emacs appearance

;; first, use the vendor color-theme package
(require 'color-theme)
(color-theme-initialize)

;; selected theme for now, there are many others.
(color-theme-charcoal-black)
;(color-theme-solarized-dark)

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

(setq visible-bell t
      font-lock-maximum-decoration t
      color-theme-is-global t
      truncate-partial-width-windows nil)

;; c and c++
(setq c-basic-offset 4)

(add-hook 'c++-mode-hook
          (lambda ()
            (c-set-offset 'arglist-intro '+)
            (c-set-offset 'arglist-close 0)))

(provide 'appearance)
