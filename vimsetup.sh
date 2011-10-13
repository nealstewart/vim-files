echo "---------------------"
echo "Setting up your Vim"
echo "---------------------"
echo ""
vim_version_line_with_ruby=$(vim --version | grep "+ruby")

cd ~/Downloads

if [ -z "${vim_version_line_with_ruby}" ]
then
  echo "*********************"
  echo "Compiling vim with ruby support"
  echo "*********************"

  wget ftp://ftp.vim.org/pub/vim/unix/vim-7.3.tar.bz2
  tar -xvf vim-7.3.tar.bz2
  cd vim-7.3
  ./configure --enable-rubyinterp --enable-multibyte --with-features=huge
  make
  sudo make install
else
  echo "*********************"
  echo "Vim is installed with ruby support"
  echo "*********************"
fi

cd ~/

if [ ! -f ".vimrc" ]; then
  touch .vimrc
  wget -qO- https://raw.github.com/n-time/vim-files/master/.minimal.vimrc >> ~/.vimrc
fi

echo ""
echo "*********************"
echo "Making Directories"
echo "*********************"

if [ ! -d ".vim" ]; then
  echo "Making directory: ~/.vim"
  mkdir ".vim"

else
  echo "Directory exists: ~/.vim"
fi

cd .vim 

if [ ! -d "bundle" ]; then
  echo "Making directory: ~/.vim/bundle"
  mkdir bundle 

else
  echo "Directory exists: ~/.vim/bundle" 
fi



echo ""
echo "*********************"
echo "Installing Plugins"
echo "*********************"
cd bundle

if [ ! -d "ack.vim" ]; then
  echo "*********************"
  echo "brew install ack"
  echo "*********************"
  brew install ack

  echo "*********************"
  echo "installing ack.vim" 
  echo "*********************"
  git clone https://github.com/mileszs/ack.vim.git

else
  echo "Already installed ack.vim"
fi

echo ""
if [ ! -d "syntastic" ]; then
  echo "*********************"
  echo "npm install -g jshint"
  echo "*********************"
  npm install -g jshint
  echo "*********************"
  echo "installing syntastic"
  echo "*********************"
  git clone https://github.com/scrooloose/syntastic.git

else
  echo "Already installed syntastic"
fi

echo ""
if [ ! -d "supertab" ]; then
  echo "*********************"
  echo "installing supertab"
  echo "*********************"
  git clone https://github.com/ervandew/supertab.git

else
  echo "Already installed supertab"
fi

echo ""
if [ ! -d "nerdtree" ]; then
  echo "*********************"
  echo "installing nerdtree"
  echo "*********************"
  git clone https://github.com/scrooloose/nerdtree.git
else
  echo "Already installed NERDTree"
fi

echo ""
if [ ! -d "vim-rooter" ]; then
  echo "*********************"
  echo "installing vim rooter"
  echo "*********************"
  git clone https://github.com/airblade/vim-rooter.git
else 
  echo "Already installed vim-rooter"
fi

echo ""
if [ ! -d "Command-T" ]; then
  echo "*********************"
  echo "Downloading Command-T"
  echo "*********************"
  echo ""
  git clone https://github.com/wincent/Command-T
  echo "COMMAND T REQUIRES FURTHER ATTENTION"
  echo ""
  echo "    cd ~/.vim/bundle/Command-T"
  echo "    vim command-t-\$VERSION_NUMBER.vba"
  echo "    :so %"
  echo ""
  echo "*********************"

else
  echo "Already downloaded Command-T"
  echo ""
  echo "You may still need to install the vimball"
  echo ""

  echo "    cd ~/.vim/bundle/Command-T"
  echo "    vim command-t-\$VERSION_NUMBER.vba"
  echo "    :so %"
  echo ""
fi
