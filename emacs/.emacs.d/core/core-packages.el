
;; neotree
(use-package neotree
  :bind (([f8] . neotree-toggle)))
;;  :config ())
;; (setq neo-theme (if (display-graphic-p) 'icons 'arrow))


;; ripgrep
;; taken directly from Mark Feller
(use-package rg
  :config (rg-enable-default-bindings (kbd "M-s")))

(provide 'core-packages)
