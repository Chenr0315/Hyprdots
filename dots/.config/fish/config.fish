if status is-login
	sysinfo
end

if status is-interactive
	switch (tty)
	case /dev/tty*
		echo
	case '*'
		starship init fish | source	
	end
end

source /opt/miniconda3/etc/fish/conf.d/conda.fish
