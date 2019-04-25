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
