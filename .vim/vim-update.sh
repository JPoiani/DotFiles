#! /bin/bash

declare -a gitRepo=( \
  'https://github.com/kien/ctrlp.vim' \
  'https://github.com/ervandew/supertab' \
  'https://github.com/preservim/nerdtree' \
  'https://github.com/vim-syntastic/syntastic' \
  'https://github.com/tomtom/tcomment_vim' \
  'https://github.com/tpope/vim-pathogen' \
  'https://github.com/tpope/vim-surround' \
  'https://github.com/tpope/vim-sensible' \
  'https://github.com/flazz/vim-colorschemes' \
  'https://github.com/preservim/tagbar' \
  'https://github.com/junegunn/vim-easy-align' \
);

if [ ! -d autoload ]; then
  mkdir autoload
fi

alias

curl -LSso ./autoload/pathogen.vim https://tpo.pe/pathogen.vim

if [ ! -d bundle ]; then
  mkdir bundle
fi

cd bundle

for repo in ${gitRepo[@]}
do
  echo $repo
  dirname=`echo $repo | sed 's@.*/\([a-zA-Z\._-]\+\)\.git@\1@g'`
  if [ -d $dirname ]; then
    echo updating $dirname
    cd $dirname
    git reset --hard
    git pull
    cd ..
  else
    echo cloning $repo
    git clone $repo
  fi
done
