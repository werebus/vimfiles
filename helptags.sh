#!/bin/sh

find ~/.vim/pack -name doc -type d -exec \
  vim -e -s -u NONE -c "helptags \{}" -c q \;
