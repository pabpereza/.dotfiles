if [ -d "~/.vim/bundle/Vundle.vim" ];
then
	echo "Hola if"
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

vim +PluginInstall +qall

stow main
