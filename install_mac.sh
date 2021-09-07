
if ! command -v brew &> /dev/null
then
    echo "Installing homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    exit
fi

brew install vim stow cmake node nodejs mono python 


FILE=$HOME"/.vim/autoload/plug.vim"
if [ ! -f "$FILE" ]; then
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

vim +PlugInstall +qall
vim +CocInstall coc-tabnine +qall

python3 install ~/.vim/plugged/YouCompleteMe/install.py

# Installing syslinks
stow mac 
