#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# alias libreoffice='Exec=env GTK_THEME=Adwaita /usr/bin/libreoffice'

# default applications
export TERMINAL="alacritty"
export BROWSER="firefox"
export READER="zathura"
export EDITOR="vim"
export VISUAL="vim"

# config files
export XDG_CONFIG_HOME=${HOME}/.config
export GTK2_RC_FILES=${XDG_CONFIG_HOME}/gtk-2.0/gtkrc

# java application font and theme render
export _JAVA_AWT_WM_NONREPARENTING=1
export JDK_JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'

# golang path
export GOPATH="${HOME}/.local/golang"

# environment variables
export PATH="${PATH}:${HOME}/.local/bin:${GOPATH}/bin"
