;; my function to load .el files in the vendor dir
(defun load-vendor (filename)
  "loads a files from vendor dir"
  (interactive)
  (add-to-list 'load-path (concat vendor-dir filename))
)
