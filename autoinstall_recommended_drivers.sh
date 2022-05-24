#!/bin/bash
sudo apt update && sudo apt upgrade -y
ubuntu-drivers devices

#Install recommendeded drivers
sudo ubuntu-drivers autoinstall
