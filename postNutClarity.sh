#!/bin/bash

# Setup basic Debian system
apt install -y sudo git wget curl btop htop cifs-utils exa npm tmux gh cmake 

echo "flo   ALL=(ALL:ALL) ALL" >> /etc/sudoers

#install zsh + oh-my-zsh + powerlevel10k
apt install -y zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"


# install neovim
cd tmp 
wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
tar -xzf nvim-linux-x86_64.tar.gz
mkdir -p /usr/local/share/nvim
mv nvim-linux-x86_64/* /usr/local/share/nvim
ln -s /usr/local/share/nvim/bin/nvim /usr/local/bin/nvim


# install astrovim dependencies
npm install tree-sitter-cli

cd /home/flo
git clone https://github.com/fschir/dotfiles.git
cd dotfiles

cp .* /home/flo/ -r 









