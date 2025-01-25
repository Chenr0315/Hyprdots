if uwsm check may-start; then
    export UWSM_USE_SESSION_SLICE=true
    exec uwsm start hyprland.desktop
fi
