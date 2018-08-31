export PATH=/usr/bin:/etc:/usr/sbin:/usr/ucb:$HOME/bin:/usr/bin/X11:/sbin

if [ -s "$MAIL" ]           # This is at Shell startup.  In normal
then echo "$MAILMSG"        # operation, the Shell checks
fi                          # periodically.

mesg n

# Set up the shell environment
#        set -u
        trap "echo 'logout'" 0


# Set up the shell variables
        EDITOR=vi
        export HISTFILE=$HOME/.sh_history
        export HISTSIZE=700
        export EDITOR
        export FCEDIT=vi
#         set -o vi
set -o emacs

# Alias Commands
alias ll='ls -al'

alias s='sudo'
alias vim='vi'
alias was8='s su - was8svc'
alias tl="tail -f /usr/wps/WebSphere/wp_profile/logs/WebSphere_Portal/SystemOut.log"
alias te="tail -f /usr/wps/WebSphere/wp_profile/logs/WebSphere_Portal/SystemErr.log"

export PS1="\e[1;34m\u@\h:\w $\e[m "
