#update submodules
git submodule update --init --recursive
#ycm
echo "install ycm"
sudo apt install python
sudo apt install cmake
sudo apt-get install make
sudo apt install python-dev
sudo apt install clang
./.vim/bundle/YouCompleteMe/install.sh --clang-completer
