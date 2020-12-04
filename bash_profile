# .bash_profile

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

export PATH="${PATH}:$HOME/.emacs.d/bin:$HOME/.cargo/bin"

# autologin on tty1
if [ -z "$DISPLAY" ] && [ "$(fgconsole)" -eq 1 ]; then
MOZ_ENABLE_WAYLAND=1 QT_QPA_PLATFORM=wayland QT_STYLE_OVERRIDE=kvantum exec sway
fi

export PATH="$HOME/.cargo/bin:$PATH"
