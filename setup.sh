#!/bin/bash

set -e

git submodule update --init --recursive

mount -o remount,size=1G /run/archiso/cowspace

pacman -Sy python ansible
