#!/bin/bash

#Check the status of firewall
STATUS=$(sudo ufw status)
echo $STATUS

INACTIVE="inactive"

#Enable/Disable firewall
printf "Do you wish to Enable/Disable Firewall (y/n): "
read CHOICE
if [[ $CHOICE == "y" ]]
then
	if [[ "$STATUS" == *"$INACTIVE"* ]]
	then
		printf "Currently inactive, do you wish to enable your firewall?(y/n): "
		read CHOICE
		if [[ $CHOICE == "y"  ]]
		then
			echo $(sudo ufw enable)
		else
			printf "Exiting........\n"
		fi
	else
		printf "Currently active, do you wish to disable your firewall?(y/n): "
		read CHOICE
		if [[ $CHOICE == "y" ]]
		then
			echo $(sudo ufw disable)
		else
			printf "Exiting.......\n"
		fi
	fi
else
	printf "Exiting......\n"
fi


