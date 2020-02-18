all: msg

msg:
		@echo "make install to copy configued dotfiles"
		@echo "make update to put new dotfiles in version control"

install:
		git fetch
		git pull
		cp .vimrc ../
		cp .bash_marchi ../

update:
		cp ~/.vimrc .
		cp ~/.bash_marchi .
		git add -A
		git commit -m "Updates dot files"
		git push
