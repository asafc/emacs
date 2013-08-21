;; this file contains all the bindings that are
;; relevant to the external keyboard

(global-set-key (kbd "<S-kp-delete>") 'kill-region)
(global-set-key (kbd "<C-H-help>") 'ns-copy-including-secondary)
(global-set-key (kbd "<H-S-help>") 'yank)

(global-set-key (kbd "<home>") 'move-beginning-of-line)
(global-set-key (kbd "<end>") 'move-end-of-line)

(global-set-key (kbd "<f13>") 'kill-this-buffer)

(provide 'bindings-external)

