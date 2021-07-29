#!/bin/sh -ex

DEVENV_DIR=$HOME/moos/devenv

qemu-system-x86_64 \
    -drive if=pflash,file=$DEVENV_DIR/OVMF_CODE.fd \
    -drive if=pflash,file=$DEVENV_DIR/OVMF_VARS.fd \
    -hda disk.img
