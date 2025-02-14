if status is-interactive
	# Commands to run in interactive sessions can go here
	# lunar vim
	export PATH="$HOME/.local/nvim/nvim-linux-x86_64.appimage-fs/usr/bin:$PATH"
	
	#dotfiles
	alias dotfiles="git --git-dir=$HOME/source/01-rfranr/dotfiles --work-tree=$HOME"
end
