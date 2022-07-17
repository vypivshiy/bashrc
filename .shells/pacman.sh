#!/bin/bash

alias pacupg='sudo pacman -Syu'            # Synchronize with repositories and then upgrade packages that are out of date on the local system.
alias pacupd='sudo pacman -Sy'             # Refresh of all package lists after updating /etc/pacman.d/mirrorlist
alias pacin='sudo pacman -S'               # Install specific package(s) from the repositories
alias pacinu='sudo pacman -U'              # Install specific local package(s)
alias pacre='sudo pacman -R'               # Remove the specified package(s), retaining its configuration(s) and required dependencies
alias pacun='sudo pacman -Rcsn'            # Remove the specified package(s), its configuration(s) and unneeded dependencies
alias pacinfo='pacman -Si'            # Display information about a given package in the repositories
alias pacse='pacman -Ss'              # Search for package(s) in the repositories

alias pacupa='sudo pacman -Sy && sudo abs' # Update and refresh the local package and ABS databases against repositories
alias pacind='sudo pacman -S --asdeps'     # Install given package(s) as dependencies of another package
alias pacclean="sudo pacman -Sc"           # Delete all not currently installed package files
alias pacmake="makepkg -fcsi"         # Make package from PKGBUILD file in current directory
