function add_dot
	set NewFile (string join / (string split / (path resolve $argv[1]))[4..])
	set filePath (path resolve "$HOME/$NewFile")
	set dotPath (path resolve "$HOME/.dotfiles/$NewFile")
	mkdir -p (path dirname $dotPath)
	touch $dotPath
	stow --adopt --dir (path resolve ~/.dotfiles) --target (path resolve ~/) .
end
