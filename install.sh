#create link

back_and_create_link(){
  mv ~/$1 ~/$1.bk
  ln -s $PWD/$1  ~/$1
  echo "create links for" $1
}

back_and_create_link  .vim
back_and_create_link  .vimrc
back_and_create_link  .bash_profile
back_and_create_link  .tmux.conf
back_and_create_link  ssr

#update submodules
git submodule update --init --recursive
#ycm
echo "install ycm"
sudo apt install python
sudo apt install cmake
sudo apt-get install make
sudo apt install python-dev
sudo apt install clang
pip3 install powerline-status
pip3 install powerline-gitstatus
./.vim/bundle/YouCompleteMe/install.sh --clang-completer

#docker 
sudo apt-get install docker.io

#ssr
sudo docker pull breakwa11/shadowsocksr
