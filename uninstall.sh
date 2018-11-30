# run only after committing and pushing any new dotfile changes to bitbucket
sudo rm -r ~/.vim ~/.vimrc ~/.tmux.conf
echo "Removed sym links to my vim and tmux configurations"

cp -r ~/dotfiles/old_vim_config/vim ~/.vim
cp ~/dotfiles/old_vim_config/vimrc ~/.vimrc
cp ~/dotfiles/old_vim_config/tmux.conf ~/.tmux.conf
echo "Restored old configuration files"
sudo rm -r ~/dotfiles/old_vim_config
echo "Removed old_vim_config folder from dotfiles"
echo "Done."
