;; Empty buffer bound to F2
(defun xah-new-empty-buffer ()
  "Create a new empty buffer.
New buffer will be named “untitled” or “untitled<2>”, “untitled<3>”, etc.

URL `http://ergoemacs.org/emacs/emacs_new_empty_buffer.html'
Version 2016-12-27"
  (interactive)
  (let ((-buf (generate-new-buffer "untitled")))
    (switch-to-buffer -buf)
    (funcall initial-major-mode)
    (setq buffer-offer-save t)))


;; make backup to a designated dir, mirroring the full path
(defun my-backup-file-name (fpath)
  "Return a new file path of a given file path.
If the new path's directores does not exist, create them."
  (let* (
         (backupRootDir "~/.emacs-backups/")
         (filePath (replace-regexp-in-string "[A-Za-z]:"  "" fpath )) ;
         (backupFilePath (replace-regexp-in-string "//" "/" (concat backupRootDir filePath "~") ))
        )
    (make-directory (file-name-directory backupFilePath) (file-name-directory backupFilePath))
    backupFilePath
    )
  )
(setq make-backup-file-name-function 'my-backup-file-name)



(provide 'core-defuns)
