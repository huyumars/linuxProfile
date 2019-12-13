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
back_and_create_link  .config
back_and_create_link  ssr
back_and_create_link  .zshrc
back_and_create_link  .aliases.sh
back_and_create_link  .zsh_custom
back_and_create_link  .p10k.zsh

