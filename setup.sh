# setup script
echo "Copying .vim folder to ~/"
cp -r .vim ~/

echo "Copying .vimrc to ~/"
cp .vimrc ~/

echo "Setting up vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
