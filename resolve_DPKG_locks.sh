#!/bin/bash

#Removing the lock file manually
printf "Removing the lock file manually...................\n\n"
sudo rm /var/lib/apt/lists/lock

#Removing lock in cache
printf "\n\nRemoving the lock in cache......................\n\n"
sudo rm /var/cache/apt/archives/lock
