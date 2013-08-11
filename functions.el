;; my function to load .el files in the vendor dir
(defun load-vendor (package-name)
  "loads a files from vendor dir"
  (interactive)
  (add-to-list 'load-path (concat vendor-dir package-name))
)

(defun confirm-exit ()
  "Prompt before exitting."
  (interactive)
  (if (yes-or-no-p "Do you want to exit? ")
	  (save-buffers-kill-emacs)))

(defun st2-like-beginning-of-line ()
  "Reproduce ST2 beginning of line functionality.
Go to the position of the first non-whitespace character.
If already there, go to actual beginning of line."
  (interactive)
  (let ((col (current-column)))
	  (back-to-indentation)
	  (if (= col (current-column)) (move-beginning-of-line nil))))

(provide 'functions)
