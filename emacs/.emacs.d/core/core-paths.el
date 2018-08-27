(setq auto-save-list-file-prefix
      (concat persistent-dir "/auto-save-list/.saves-"))

(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))

(setq bookmark-default-file
      (concat persistent-dir "bookmarks.el"))

(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; (setq ede-project-placeholder-cache-file
;;       (concat temporary-file-directory "/ede-projects.el"))

;; (setq semanticdb-default-save-directory
;;       (concat temporary-file-directory "/semanticdb"))

(setq abbrev-file-name
      (concat persistent-dir "/abbrev_defs.el"))

;; (setq tramp-persistency-file-name
;;       (concat persistent-dir "/tramp.el"))

(setq recentf-save-file
      (concat persistent-dir "/recentf"))

(setq custom-file
      (concat persistent-dir "/custom.el"))
(unless (file-exists-p custom-file)
  (write-region "" nil custom-file))
(load custom-file)

(provide 'core-paths)
