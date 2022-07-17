#!/bin/bash
# installer packages script

install() {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo pacman -Su -y "$1"
  else
    echo "Already installed: ${1}"
  fi
}

paru-install-package() {
  which $1 &> /dev/null
  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    paru "$1" -y
  else
    echo "Already installed: ${1}"
  fi
}


paru-install(){
  echo "install paru"
  sudo pacman -S --needed base-devel -y
  git clone https://aur.archlinux.org/paru.git && cd paru && makepkg -si && cd .. && rm -rf paru
  echo "done"
}


echo "intsall pacman packages"
while IFS= read -r line; do
  install "$line"
done < "packages"


echo "install paru"
paru-install


echo "install paru packages"
while IFS= read -r line; do
  paru-install-package "$line"
done < "packages-aur"