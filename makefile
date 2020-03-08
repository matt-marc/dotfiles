all: msg

msg:
		@echo -e "\n"
		@echo "**************************************************"
		@echo -e "\n"
		@echo "make install to copy configued dotfiles"
		@echo "make update to put new dotfiles in version control"
		@echo -e "\n"
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
