#!/bin/bash

#Update packages ignoring missing packages
sudo apt update --fix-missing

#Force APT to Correct Missing Dependencies
sudo apt install -f

#Force Reconfigure or Remove Broken DPKG packages
sudo dpkg --configure -a
out=$(sudo dpkg -l | grep ^..R)


if [ -z "${out}" ]
then
	echo "No packages need removing"
else
	for val in $out;do
		echo "${val}"
	done
fi

printf "\nUse to remove the packages:\nsudo dpkg --purge --force-all [package-name]\n\n"
printf "Check site: https://phoenixnap.com/kb/ubuntu-fix-broken-packages"
printf "\nExiting.......\n"
