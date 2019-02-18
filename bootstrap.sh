#!/bin/sh
# Borrowed from https://github.com/carlhuda/janus
function die()
{
  echo "${@}"
  exit 1
}

# Add <strong>.old</strong> to any existing Vim file in the home directory
for i in $HOME/.vimrc $HOME/.gvimrc $HOME/.vim; do
  if [[ ( -e $i ) ]]; then
    echo "${i} has been renamed to ${i}.old"
    mv "${i}" "${i}.old" || die "Could not move ${i} to ${i}.old"
  fi
done

# Clone into .vim
git clone --recursive https://github.com/werebus/vimfiles.git $HOME/.vim \
  || die "Could not clone the repository to ${HOME}/.vim"

# Link the config files in
ln -s $HOME/.vim/vimrc $HOME/.vimrc || die "Could not link .vimrc file"
ln -s $HOME/.vim/gvimrc $HOME/.gvimrc || die "Could not link .gvimrc file"

# Install the powerline patched fonts
[ -f $HOME/.vim/powerline-fonts/install.sh ] && \
  $HOME/.vim/powerline-fonts/install.sh Inconsolata
