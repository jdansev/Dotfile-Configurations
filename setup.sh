

mkdir ~/dotfiles/old_vim_config
echo "New temp folder old_vim_config created"
cp -r ~/.vim ~/dotfiles/old_vim_config/vim
cp -L ~/.vimrc ~/dotfiles/old_vim_config/vimrc
cp -L ~/.tmux.conf ~/dotfiles/old_vim_config/tmux.conf
echo "Files copied into old_vim_config"
echo "Done."

rm -r ~/.vim ~/.vimrc ~/.tmux.conf
echo "Old config files removed from root"

# adds a symlink to vimrc
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/vim/vimrc ~/.vimrc
ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
echo "New links made."

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "Installed Vundle package manager"
echo "Done."
