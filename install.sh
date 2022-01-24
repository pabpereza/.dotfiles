# REQUIREMENTS:
# zsh, oh-my-zsh, nvim vimplug y antigen

# Install zsh
sudo apt-get install zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
sudo mv nvim.appimage /usr/local/bin/nvim

# Install vimplug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install nvim plugins
nvim +PlugInstall +qall

# Install antigen
curl -L git.io/antigen > ~/.oh-my-zsh/antigen.zsh

# Load zsh configuration
source ~/.zshrc
