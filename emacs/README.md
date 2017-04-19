# Emacs just works so well on Unix systems. On Windows, it works but not as easily. You have to fiddle with stuff.

## Windows 7
At work, I have to run Windows 7 and my HOME directory is set to F:. 

The answer to the question here actually works well.
https://emacs.stackexchange.com/questions/12881/how-do-i-set-a-different-location-for-the-dot-emacs-emacs-file-on-windows-7

I put this little .emacs in F:\ and then point it to C:\tools\emacs_config for my configuration stuff.

The Windows .emacs file on the network drive looks like:

```
;; Place this file in C:\Users\Username\AppData\Roaming and point to the appropriate files
(setq user-init-file "C:/tools/emacs_config/.emacs")
(setq user-emacs-directory "C:/tools/emacs_config/.emacs.d/")
;; (setq default-directory "C:/whatever/you/want/to/start/in")
;; (setenv "HOME" "C:/_amp")
(load user-init-file)

```
