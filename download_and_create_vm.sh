#!/bin/bash

# Download the latest Ubuntu LTS server ISO
ISO_URL=$(curl -s https://api.launchpad.net/1.0/ubuntu/+archive/primary | grep -oP 'https://.*?ubuntu-.*?-server-amd64.iso' | head -n 1)
ISO_NAME=$(basename $ISO_URL)
DOWNLOAD_DIR=~/Downloads

# Create the download directory if it doesn't exist
mkdir -p $DOWNLOAD_DIR

# Download the ISO
curl -L $ISO_URL -o $DOWNLOAD_DIR/$ISO_NAME

# Create a Linux VM with 4 cores, 16GB RAM, and a 128GB thin provisioned disk using the downloaded ISO
VM_NAME="ubuntu-lts-server"
VM_CORES=4
VM_RAM=16384
VM_DISK=128G

# Create the VM
virt-install \
  --name $VM_NAME \
  --vcpus $VM_CORES \
  --memory $VM_RAM \
  --disk size=$VM_DISK,format=qcow2 \
  --cdrom $DOWNLOAD_DIR/$ISO_NAME \
  --os-type linux \
  --os-variant ubuntu20.04 \
  --network network=default \
  --graphics none \
  --console pty,target_type=serial \
  --extra-args 'console=ttyS0,115200n8 serial'
