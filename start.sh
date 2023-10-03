#!/bin/bash

echo "pod started"

# Setup ssh
setup_ssh() {
    if [[ $PUBLIC_KEY ]]; then
        echo "Setting up SSH..."
        mkdir -p ~/.ssh
        echo "$PUBLIC_KEY" >> ~/.ssh/authorized_keys
        chmod 700 -R ~/.ssh
        service ssh start
fi
conda init bash
echo "conda activate ludwig" >> ~/.bashrc
source /root/.bashrc
conda activate ludwig
sleep infinity 
