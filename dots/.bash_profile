if uwsm check may-start; then
	exec uwsm start -S hyprland.desktop
else
	exec fish -l
fi
