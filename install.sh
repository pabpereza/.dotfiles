# REQUIREMENTS:
# zsh, oh-my-zsh, astrovim y antigen

# Install zsh and stow
sudo apt-get install zsh stow

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Remove default zshrc
rm ~/.zshrc


# Install neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
sudo mv nvim.appimage /usr/local/bin/nvim

# Install antigen
curl -L git.io/antigen > ~/.oh-my-zsh/antigen.zsh

# Charge main configuration
stow ~/.dotfiles/main

# Load zsh configuration
source ~/.zshrc
