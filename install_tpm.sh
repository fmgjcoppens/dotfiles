#!/usr/bin/env bash

if [[ ! -d ~/.tmux/plugins ]]; then
    echo "TPM not installed. Installing TPM..."

    if ! command -v git &> /dev/null; then
        echo -e "git not installed. Please install with\nsudo pacman -S git"
        exit 1
    fi

    echo "Cloning TPM repo..."
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm &
    PID=$!
    wait $PID

    echo "Installing plugins..."
    ~/.tmux/plugins/tpm/bin/install_plugins
fi

