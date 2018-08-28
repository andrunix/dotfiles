;;---------------------------------------------------------------------
;; Init
;;---------------------------------------------------------------------

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(defvar current-user
  (getenv
   (if (equal system-type 'windows-nt) "USERNAME" "USER")))

(message "Powering up... Be patient, Master %s!" current-user)

;; always load newest byte code
;; (setq load-prefer-newer t)

;; reduce the frequency of garbage collection by making it happen on
;; each 50MB of allocated data (the default is on every 0.76MB)
(setq gc-cons-threshold 50000000)

;; warn when opening files bigger than 100mb
(setq large-file-warning-threshold 100000000)

(setq inhibit-startup-echo-area-message t)
(setq inhibit-startup-screen t)

(message "Setting load paths...")

;;--------------------------------------------------------------
;; Variables and Load Paths
;;--------------------------------------------------------------
(defvar emacs-dir (file-name-directory "~/.emacs.d/init.el")
  "The root dir of the Emacs distribution.")

(defvar core-dir (expand-file-name "core" emacs-dir)
  "The home of core functionality.")

(defvar modules-dir (expand-file-name "modules" emacs-dir)
  "This directory houses all of the modules.")

(defvar persistent-dir (expand-file-name "persistent" emacs-dir)
  "This directory houses packages that are not yet available in ELPA (or MELPA).")

(unless (file-exists-p persistent-dir)
  (make-directory persistent-dir))

;; This should go away. These things are probably on Melp by now. Review it.
(defvar lisp-dir (expand-file-name "lisp" emacs-dir)
  "This directory houses packages that I manually downloaded. Bad.")

(defun add-subfolders-to-load-path (parent-dir)
  "Add all level PARENT-DIR subdirs to the `load-path`."
  (dolist (f (directory-files parent-dir))
    (let ((name (expand-file-name f parent-dir)))
      (when (and (file-directory-p name)
                 (not (string-prefix-p "." f)))
        (add-to-list 'load-path name)
        (add-subfolders-to-load-path name)))))

(add-to-list 'load-path core-dir)
(add-to-list 'load-path modules-dir)
(add-to-list 'load-path persistent-dir)
(add-to-list 'load-path lisp-dir)

;;--------------------------------------------------------------
;; Core
;;--------------------------------------------------------------

(message "Loading core...")

(require 'core-bootstrap)
(require 'core-packages)
(require 'core-defuns)
(require 'core-ui)
(require 'core-paths)

;; (when (eq system-type 'darwin)
;;   (require 'core-osx))

;;--------------------------------------------------------------
;; Modules
;;--------------------------------------------------------------

(message "Loading modules...")

(require 'module-lang-css)
(require 'module-less)
(require 'module-markdown)
(require 'module-projectile)
(require 'module-web)
(require 'module-web-beautify)
(require 'module-sanityinc-tomorrow)
;; (require 'module-solarized)

(message "Custom-set-variables...")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-map (ansi-color-make-color-map) t)
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(custom-safe-themes
   (quote
    ("b9e9ba5aeedcc5ba8be99f1cc9301f6679912910ff92fdf7980929c2fc83ab4d" "84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "f71859eae71f7f795e734e6e7d178728525008a28c325913f564a42f74042c31" "13a654e817774e669cc17ee0705a3e1dfc62aedb01005a8abe2f8930a1d16d2e" "9a155066ec746201156bb39f7518c1828a73d67742e11271e4f24b7b178c4710" "5d1ffa34c265080cfb0ff4453551fc5eaefeb44fea8e7b62eb888a6ebd7c0682" "2ba0ea1d47b5ccb455e3e65f0dc6ec2da0e49ffb08cf5d9b883a6d89660bbf1e" "cb7d9f7e58434f463025ca091087ab12bb42d758165853193576caec329d72fc" "ff7625ad8aa2615eae96d6b4469fcc7d3d20b2e1ebc63b761a349bebbb9d23cb" "c0429683ff6ea4bed2f3d5a1c94717dff22d4f52ec1f5ebaf67dfab5d78787f1" "20e23cba00cf376ea6f20049022241c02a315547fc86df007544852c94ab44cb" "a2e7b508533d46b701ad3b055e7c708323fb110b6676a8be458a758dd8f24e27" "4154caa8409ff2eb6f74c913741420e7103b9ea26c3c7d1a5a16592d0d2f43e0" "0820d191ae80dcadc1802b3499f84c07a09803f2cb90b343678bdb03d225b26b" "43c1a8090ed19ab3c0b1490ce412f78f157d69a29828aa977dae941b994b4147" "0b6cb9b19138f9a859ad1b7f753958d8a36a464c6d10550119b2838cedf92171" "15348febfa2266c4def59a08ef2846f6032c0797f001d7b9148f30ace0d08bcf" "718fb4e505b6134cc0eafb7dad709be5ec1ba7a7e8102617d87d3109f56d9615" "eb34ed27768eeea1e423f8987b060e49829aac558fe0669b3de0227da67b661c" "afe5e2fb3b1e295e11c3c22e7d9ea7288a605c110363673987c8f6d05b1e9972" "5c64430cb8e12e2486cd9f74d4ce5172e00f8e633095d27edd212787a4225245" "5dc8ea509d300f9b751fce3d94d9885d264c5bda240e90e884d48601955b3f8c" "a81bc918eceaee124247648fc9682caddd713897d7fd1398856a5b61a592cb62" "94ce2a2fc1a2341590020a50e6d6916c81451c596313dda6453e41c526c1dc86" "63b7b8a45190b2e7362a975067bd76b55ae548c00e9088d12b4133eb0525a604" default)))
 '(fci-rule-color "#383838")
 '(hl-paren-background-colors (quote ("#2492db" "#95a5a6" nil)))
 '(hl-paren-colors (quote ("#ecf0f1" "#ecf0f1" "#c0392b")))
 '(hl-sexp-background-color "#efebe9")
 '(ibuffer-deletion-face (quote diredp-deletion-file-name))
 '(ibuffer-marked-face (quote diredp-flag-mark))
 ;;'(package-selected-packages
 ;;  (quote
 ;;   (web-mode color-theme-sanityinc-tomorrow smart-mode-line challenger-deep-theme liso-theme rg neotree rjsx-mode vue-html-mode xah-css-mode xah-lookup dracula-theme lush-theme leuven-theme grandshell-theme flatland-black-theme flatland-theme flatui-dark-theme flatui-theme avk-emacs-themes mmm-mode vue-mode)))
 '(vc-annotate-background "#ecf0f1")
 '(vc-annotate-color-map
   (quote
    ((30 . "#e74c3c")
     (60 . "#c0392b")
     (90 . "#e67e22")
     (120 . "#d35400")
     (150 . "#f1c40f")
     (180 . "#d98c10")
     (210 . "#2ecc71")
     (240 . "#27ae60")
     (270 . "#1abc9c")
     (300 . "#16a085")
     (330 . "#2492db")
     (360 . "#0a74b9"))))
 '(vc-annotate-very-old-color "#0a74b9"))

(message  "Done with custom-set-variables...")
(message "SML setup...")







(sml/setup)


(message "Ready to do thy bidding, Master %s!" current-user)
