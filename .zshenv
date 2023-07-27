. "$HOME/.cargo/env"
path+=$HOME/.yarn/bin
path+="/usr/local/blender"
path+=(/usr/local/*(N-/))
path+=(/usr/local/*/bin(N-/))

export XDG_DATA_DIRS="/usr/share:/usr/local/share:"
XDG_DATA_DIRS+="/var/lib/flatpak/exports/share:"
XDG_DATA_DIRS+="/var/lib/flatpak/exports/share"
