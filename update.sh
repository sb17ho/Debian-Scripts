while true; do
  read -p "What to use for update:
  1) apt
  2) aptitude
  3) apt-get
  4) quit: " yn
  case $yn in
      [1]* ) sudo apt update;
      sudo apt upgrade;
      sudo apt dist-upgrade;
      sudo apt autoremove;
      sudo apt autoclean;
      flatpak update; break;;
      [2]* ) sudo aptitude update;
      sudo aptitude upgrade;
      sudo aptitude full-upgrade;
      sudo aptitude autoclean;
      flatpak update; break;;
      [3]* ) sudo apt-get update;
      sudo apt-get upgrade;
      sudo apt-get dist-upgrade;
      sudo apt-get autoremove;
      sudo apt-get autoclean;
      flatpak update; break;;
      [4]* ) exit;;
      * ) echo "Invalid Input. ";;
  esac
done

while true; do
  read -p "Do you wish to uninstall unused flatpak programs? " yn
  case $yn in
      [Yy]* ) flatpak uninstall --unused; break;;
      [Nn]* ) exit;;
      * ) echo "Please answer yes or no. ";;
  esac
done
