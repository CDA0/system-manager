#!/bin/bash

set -e

mount -o remount,size=1G /run/archiso/cowspace

git submodule update --init --recursive

pacman -Sy --noconfirm python ansible
