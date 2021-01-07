# System Manager

## Requirements

`mount -o remount,size=1G /run/archiso/cowspace`

`pacman -Sy ansible`

`git clone https://github.com/cda0/system-manager`

`git submodule update --init --recursive`

## Inspired by

https://github.com/pigmonkey/spark

https://github.com/id101010/ansible-archlinux

https://github.com/zoresvit/ansible-arch-linux


## T440p Notes

On booting arch from the iso get the network up using [iwctl](https://wiki.archlinux.org/index.php/Iwd)
