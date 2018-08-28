(use-package solarized-theme
  :config
  (progn (setq solarized-emphasize-indicators nil
               solarized-high-contrast-mode-line nil
               solarized-scale-org-headlines nil
               solarized-use-less-bold t
               solarized-use-variable-pitch nil
               solarized-distinct-fringe-background nil)))

(load-theme 'solarized-light)
(provide 'module-solarized)
