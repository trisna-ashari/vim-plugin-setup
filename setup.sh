#!/bin/bash

# Plugin Repository Vars
NERDTREE="https://github.com/scrooloose/nerdtree"
VIM_AIRLINE="https://github.com/vim-airline/vim-airline"
VIM_EASYMOTION="https://github.com/easymotion/vim-easymotion"
VIM_SNIPPETS="https://github.com/honza/vim-snippets"
VIM_SIGNIFY="https://github.com/mhinz/vim-signify"
VIM_POLYGLOT="https://github.com/sheerun/vim-polyglot"
VIM_FUGITIVE="https://github.com/tpope/vim-fugitive"
CTRLP_VIM="https://github.com/kien/ctrlp.vim"
CTRLP_FUNKY="https://github.com/tacahiroy/ctrlp-funky"
EMMET_VIM="https://github.com/mattn/emmet-vim"
SUPERTAB="https://github.com/ervandew/supertab"
TAGBAR="https://github.com/majutsushi/tagbar"
ULTISNIPS="https://github.com/SirVer/ultisnips"
XORIA256VIM="https://github.com/vim-scripts/xoria256.vim"

# Status Vars
CHECK='[OK]'
CROSS='[NOT OK]'

# Color Vars
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

# Default vars
DIR="$( cd "$( dirname "${BASE_SOURCE[0]}" )" && pwd )"

mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

if [ ! -d ~/.vim/bundle ]
then
  cd ~ && mkdir .bundle
  if [ $? -eq 0]
  then
    printf "${GREEN}${CHECK} Successfully created directory: ~/.vim/bundle${NC}\n"
  else
    printf "${RED}${CROSS} Could not create directory: ~/.vim/bundle${NC}\n"
  fi
fi

if [ ! -d ~/.vim/bundle/nerdtree ]
then
  cd ~/.vim/bundle && git clone ${NERDTREE}
  if [ $? -eq 0 ]
  then
    printf "${GREEN}${CHECK} Successfully installed nerdtree plugin from ${NERDTREE}${NC}\n"
  else
    printf "${RED}${CROSS} Could not install nerdtree plugin from ${NERDTREE}${NC}\n"
  fi
fi

if [ ! -d ~/.vim/bundle/vim-airline ]
then
  cd ~/.vim/bundle && git clone ${VIM_AIRLINE}
  if [ $? -eq 0 ]
  then
    printf "${GREEN}${CHECK} Successfully installed vim-airline plugin from ${VIM_AIRLINE}${NC}\n"
  else
    printf "${RED}${CROSS} Could not install vim-airline plugin from ${VIM_AIRLINE}${NC}\n"
  fi
fi

if [ ! -d ~/.vim/bundle/vim-easymotion ]
then
  cd ~/.vim/bundle && git clone ${VIM_EASYMOTION}
  if [ $? -eq 0 ]
  then
    printf "${GREEN}${CHECK} Successfully installed vim-easymotion plugin from ${VIM_EASYMOTION}${NC}\n"
  else
    printf "${RED}${CROSS} Could not install vim-easymotion plugin from ${VIM_EASYMOTION}${NC}\n"
  fi
fi

if [ ! -d ~/.vim/bundle/vim-snippets ]
then
  cd ~/.vim/bundle && git clone ${VIM_SNIPPETS}
  if [ $? -eq 0 ]
  then
    printf "${GREEN}${CHECK} Successfully installed vim-snippets plugin from ${VIM_SNIPPETS}${NC}\n"
  else
    printf "${RED}${CROSS} Could not install vim-snippets plugin from ${VIM_SNIPPETS}${NC}\n"
  fi
fi

if [ ! -d ~/.vim/bundle/vim-signify ]
then
  cd ~/.vim/bundle && git clone ${VIM_SIGNIFY}
  if [ $? -eq 0 ]
  then
    printf "${GREEN}${CHECK} Successfully installed vim-signify plugin from ${VIM_SIGNIFY}${NC}\n"
  else
    printf "${RED}${CROSS} Could not install vim-signify plugin from ${VIM_SIGNIFY}${NC}\n"
  fi
fi

if [ ! -d ~/.vim/bundle/vim-polyglot ]
then
  cd ~/.vim/bundle && git clone ${VIM_POLYGLOT}
  if [ $? -eq 0 ]
  then
    printf "${GREEN}${CHECK} Successfully installed vim-polyglot plugin from ${VIM_POLYGLOT}${NC}\n"
  else
    printf "${RED}${CROSS} Could not install vim-polyglot plugin from ${VIM_POLYGLOT}${NC}\n"
  fi
fi

if [ ! -d ~/.vim/bundle/vim-fugitive ]
then
  cd ~/.vim/bundle && git clone ${VIM_FUGITIVE}
  if [ $? -eq 0 ]
  then
    printf "${GREEN}${CHECK} Successfully installed vim-fugitive plugin from ${VIM_FUGITIVE}${NC}\n"
  else
    printf "${RED}${CROSS} Could not install vim-fugitive plugin from ${VIM_FUGITIVE}${NC}\n"
  fi
fi

if [ ! -d ~/.vim/bundle/ctrlp.vim ]
then
  cd ~/.vim/bundle && git clone ${CTRLP_VIM}
  if [ $? -eq 0 ]
  then
    printf "${GREEN}${CHECK} Successfully installed ctrlp.vim plugin from ${CTRLP_VIM}${NC}\n"
  else
    printf "${RED}${CROSS} Could not install ctrlp.vim plugin from ${CTRLP_VIM}${NC}\n"
  fi
fi

if [ ! -d ~/.vim/bundle/ctrlp-funky ]
then
  cd ~/.vim/bundle && git clone ${CTRLP_FUNKY}
  if [ $? -eq 0 ]
  then
    printf "${GREEN}${CHECK} Successfully installed ctrlp-funky plugin from ${CTRLP_FUNKY}${NC}\n"
  else
    printf "${RED}${CROSS} Could not install ctrlp-funky plugin from ${CTRLP_FUNKY}${NC}\n"
  fi
fi

if [ ! -d ~/.vim/bundle/emmet-vim ]
then
  cd ~/.vim/bundle && git clone ${EMMET_VIM}
  if [ $? -eq 0 ]
  then
    printf "${GREEN}${CHECK} Successfully installed emmet-vim plugin from ${EMMET_VIM}${NC}\n"
  else
    printf "${RED}${CROSS} Could not install emmet-vim plugin from ${EMMET_VIM}${NC}\n"
  fi
fi

if [ ! -d ~/.vim/bundle/supertab ]
then
  cd ~/.vim/bundle && git clone ${SUPERTAB}
  if [ $? -eq 0 ]
  then
    printf "${GREEN}${CHECK} Successfully installed supertab plugin from ${SUPERTAB}${NC}\n"
  else
    printf "${RED}${CROSS} Could not install supertab plugin from ${SUPERTAB}${NC}\n"
  fi
fi

if [ ! -d ~/.vim/bundle/tagbar ]
then
  cd ~/.vim/bundle && git clone ${TAGBAR}
  if [ $? -eq 0 ]
  then
    printf "${GREEN}${CHECK} Successfully installed tagbar plugin from ${TAGBAR}${NC}\n"
  else
    printf "${RED}${CROSS} Could not install tagbar plugin from ${TAGBAR}${NC}\n"
  fi
fi

if [ ! -d ~/.vim/bundle/ultisnips ]
then
  cd ~/.vim/bundle && git clone ${ULTISNIPS}
  if [ $? -eq 0 ]
  then
    printf "${GREEN}${CHECK} Successfully installed ultisnips plugin from ${ULTISNIPS}${NC}\n"
  else
    printf "${RED}${CROSS} Could not install ultisnips plugin from ${ULTISNIPS}${NC}\n"
  fi
fi

if [ ! -d ~/.vim/bundle/xoria256.vim ]
then
  cd ~/.vim/bundle && git clone ${XORIA256VIM}
  if [ $? -eq 0 ]
  then
    printf "${GREEN}${CHECK} Successfully installed xoria256.vim plugin from ${XORIA256VIM}${NC}\n"
  else
    printf "${RED}${CROSS} Could not install xoria256.vim plugin from ${XORIA256VIM}${NC}\n"
  fi
fi

if [ -f ~/.vimrc ]
then
  echo -n ".vimrc already exist in ~/.virmc. Dou you want to replace it? [y/n]: "
  read VIMRC_REPLACEMENT
  if [ ${VIMRC_REPLACEMENT} == "y" ]
  then
    cp ${DIR}/.vimrc.example ~/.vimrc
    if [ $? -eq 0 ]
    then
      printf "${GREEN}${CHECK} Successfully duplicated ${DIR}/.vimrc.example into ~/.vimrc${NC}\n"
    else
      printf "${RED}${CROSS} Could not duplicate ${DIR}/.vimrc.example into ~/.vimrc${NC}\n"
    fi
  fi
else
  cp ${DIR}/.vimrc.example ~/.vimrc
fi

echo -n "Setup completed. Do you want to open vim now? [y/n]: "
read VIM_OPEN
if [ ${VIM_OPEN} == "y" ]
then
  vim
fi
