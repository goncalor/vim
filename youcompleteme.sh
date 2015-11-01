
# download and install YouCompleteMe
cd ~/.vim/bundle
git clone https://github.com/Valloric/YouCompleteMe.git
cd YouCompleteMe
git submodule update --init --recursive
apt-get install build-essential cmake
apt-get install python-dev
./install.sh --clang-completer
