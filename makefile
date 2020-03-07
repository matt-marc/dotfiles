all: msg

msg:
		@echo "make install to copy configued dotfiles"
		@echo "make update to put new dotfiles in version control"
		@echo "getting status of branch"
		git fetch
		@echo -e "\n"
		@echo "**************************************************"
		git status
		@echo "**************************************************"
		@echo -e "\n\n"

install:
		cp .vimrc ../
		cp .bash_marchi ../
		cp ./UltiSnips/* ../.vim/UltiSnips/

update:
		cp ~/.vimrc .
		cp ~/.bash_marchi .
		cp ~/.vim/UltiSnips/* ./UltiSnips
