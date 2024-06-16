#!/usr/bin/env bash

for DIR in */
do
    stow "${DIR%/}"
done

./install_tpm.sh

