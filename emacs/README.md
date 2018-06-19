# Emacs Config Notes

Emacs just works so well on Unix systems. On Windows, it works but not as easily. You have to fiddle with stuff.

## Update - 4/27/2018

I changed how I do this at work and didn't think anyone would ever be reading this but, I'm happy to find out that they are. So, here's the update.

Set your HOME environment variable to something local. Windows doesn't have this by default like Unix systems. Windows uses %USERPROFILE% instead. This typically is something like: ```C:\Users\$USER```. Because it's a work computer, I don't mess with that env var or anything in that directory. Instead, I create a typical HOME directory like ```/c/home/$USER```. For me, that's ```/c/home/a16106p```. Just manually create this directory.

```
# Git Bash window
$ mkdir -p /c/home/a16106p
````

Then, set the HOME environment variable to this directory. 

* Click Start, Right mouse on Computer, select Properties
* Click Advanced system settings
* Click Environment Variables
* In the "User variagbles..." section, click New
* Add a variable named HOME with the value of ```c:\home\a1616o6p``` (use your user id of course)
* Click OK back out of the dialogs
* Exit any terminal (Git Bash) windows you have open

Next time you open a terminal you should have this HOME set. Validate like so:

```
$ echo $HOME
/c/home/a16106p
```

Once you have this setup you can just put your regular .emacs file and/or .emacs.d directory in your new HOME directory like a sane person. This keeps your Unixy stuff out of the Windows User directory. That's how I like it.

## DON"T DO THE STUFF BELOW HERE. OLD STYLE

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
