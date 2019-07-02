RED='\033[1;31m'
GREEN='\033[1;32m'
NOCOLOR='\033[0m'
TITLE='\033[0;33m'

echo "Auto-Update"

echo -e "${TITLE}Phase One:${GREEN}Pre-Configuring Packages${NOCOLOR}"
sudo dpkg --configure -a

echo

echo -e "Phase Two:${GREEN}Fix & Attempt Broken Dependencies${NOCOLOR}"
sudo apt-get instaal -f

echo

echo -e "Phase Three:${GREEN}Update Cache${NOCOLOR}"
sudo apt-get update

echo

echo -e "Phase Four:${GREEN}Upgrade Packages${NOCOLOR}"
sudo apt-get Upgrade

echo

echo -e "Phase Five:${GREEN}Upgrade Distro${NOCOLOR}"
sudo apt-get dist-upgrade

echo

echo -e "Phase Six:${GREEN}Uninstall Unused Packages${NOCOLOR}"
sudo apt-get --purge autoremove

echo

echo -e "Phase Seven:${GREEN}Clean Up${NOCOLOR}"
sudo apt-get autoclean

echo Complete
