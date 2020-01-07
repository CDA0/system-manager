#!/bin/bash

set -e

git submodule update --init --recursive

mount -o remount,size=1G /run/archiso/cowspace

pacman -S python-pip

pip install git+https://github.com/ansible/ansible.git@devel

cd ansible
