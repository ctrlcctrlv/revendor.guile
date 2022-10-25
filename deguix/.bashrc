source "$HOME/.bash_pathfuncs"
pathremove "$GUIX_PROFILE"
pathremove "$GUIX_PROFILE/bin"
pathremove "$GUIX_PROFILE/sbin"
pathremove "$GUIX_PROFILE/share" "XDG_DATA_DIRS"
export PATH
export XDG_DATA_DIRS
