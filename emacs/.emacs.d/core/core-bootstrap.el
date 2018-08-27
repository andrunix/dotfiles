(require 'package)

;;(setq package-enable-at-startup nil)
(setq package-archives
      '(("melpa"        . "http://nexus.bcbst.com:8080/repository/melpa-proxy/")
        ("org"          . "http://nexus.bcbst.com:8080/repository/elpa-proxy/")))

;; Bootstrap use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package)
  (package-install 'delight)
  (package-install 'bind-key))

(require 'use-package)
(setq use-package-always-ensure t)

(provide 'core-bootstrap)
