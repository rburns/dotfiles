git clone git@github.com:simonrobson/dotfiles.git
cd dotfiles
git submodule init
git submodule update

cd ~
ln -s dotfiles/vim .vim
ln -s dotfiles/vimrc .vimrc
