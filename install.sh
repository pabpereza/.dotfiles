# Remove default zshrc
mv ~/.tmux.conf ~/.tmux.conf
mv ~/.vimrc ~/.zshrc.back

# Install plugin manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Charge main configuration
stow ~/.dotfiles/main
