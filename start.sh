#!/bin/bash
set -e  # Exit the script if any statement returns a non-true return value

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
setup_ssh
conda init bash
echo "conda activate ludwig" >> ~/.bashrc
source /root/.bashrc
conda activate ludwig
echo "Start script(s) finished, pod is ready to use."
sleep infinity 
