# .bash_profile

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

export PATH="${PATH}:$HOME/.emacs.d/bin:$HOME/.cargo/bin"

# autologin on tty1
if [ -z "$DISPLAY" ] && [ "$(fgconsole)" -eq 1 ]; then
exec sway --my-next-gpu-wont-be-nvidia
fi

export PATH="$HOME/.cargo/bin:$PATH"
