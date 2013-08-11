;; this is the only file allowed to change key bindings!

;; first, change modifier keys to suite linux/win keyboards.
(setq mac-option-modifier 'super)
(setq mac-command-modifier 'meta)

;; movement around emacs buffer is defined with the same semantics
;; as the defaults, but with the arrow keys instead of the b,f,a,e keys.
;; more intuitive my ass!
(global-set-key (kbd "M-<left>") 'move-beginning-of-line)
(global-set-key (kbd "M-<right>") 'move-end-of-line)
(global-set-key (kbd "M-<up>") 'beginning-of-buffer)
(global-set-key (kbd "M-<down>") 'end-of-buffer)

(global-set-key (kbd "C-<left>") 'backward-word)
(global-set-key (kbd "C-<right>") 'forward-word)
(global-set-key (kbd "C-<up>") 'backward-sentence)
(global-set-key (kbd "C-<down>") 'forward-sentence)

;; some logical mac bindings 
;; (cut (d), copy (c), paste (v))
;; (save (s), kill buffer (w), undo (z))
(global-set-key (kbd "M-d") 'kill-region)
(global-set-key (kbd "M-c") 'ns-copy-including-secondary)
(global-set-key (kbd "M-v") 'yank)
(global-set-key (kbd "M-s") 'save-buffer)
(global-set-key (kbd "M-w") 'kill-this-buffer)
(global-set-key (kbd "M-q") 'confirm-exit)
(global-set-key (kbd "M-k") 'describe-key)

;; the logic is, i don't need fancy functions if the instinct
;; says that both (Cntl-Z) and (Cmd-Z) should cause undo.
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "M-z") 'undo)

;; other bindings for standart keyboard
;; TODO here: c-insert, s-delete, s-insert

(global-set-key [(control meta b)] 'toggle-truncate-lines)
(global-set-key [(meta g)] 'goto-line)

;; movement between buffers
(global-set-key (kbd "M-[") 'previous-buffer)
(global-set-key (kbd "M-]") 'next-buffer)

(defun switch-to-other-buffer ()
  (interactive)
  (switch-to-buffer (other-buffer)))

(global-set-key [f6] 'switch-to-other-buffer)
(global-set-key [(control tab)] 'other-window)

;; autocomplete
(global-set-key (kbd "M-SPC") 'dabbrev-expand)

(provide 'bindings)
