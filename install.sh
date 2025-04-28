#! /bin/bash
clear
printf '\033]2;INSTALLER\a'
echo -e "Press \e[1;33many key\e[0m to install the script..."
read -n 1
clear
apt-get -y install gnome-terminal
clear
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
if [[ "$DIR" != "/root/teddy" ]]
then
	echo -e "You didn't follow the github's simple install instructions.I will try to do it for you..."
	sleep 4
	if [[ -d /root/teddy ]]
	then
		rm -r /root/teddy
	fi
	mkdir /root/teddy
	cp -r "$DIR"/* /root/teddy
	chmod +x /root/teddy/install.sh
	gnome-terminal -- "bash /root/teddy/install.sh"
fi
echo -e "Installing teddy..."
sleep 1
echo -e "Fixing permissions"
sleep 2
chmod +x /root/teddy/lh1
chmod +x /root/teddy/lh2
chmod +x /root/teddy/lh3
chmod +x /root/teddy/lh31
chmod +x /root/teddy/l
chmod +x /root/teddy/lh4
chmod +x /root/teddy/lh41
chmod +x /root/teddy/lh21
chmod +x /root/teddy/lh42
chmod +x /root/teddy/lh43
chmod +x /root/teddy/ls/l131.sh
chmod +x /root/teddy/ls/l132.sh
chmod +x /root/teddy/ls/l133.sh
chmod +x /root/teddy/uninstall.sh
clear
echo -e "Copying script to /bin/teddy"
sleep 1
mkdir /bin/teddy
cd /root/teddy
cp /root/teddy/l /bin/teddy
cp /root/teddy/lh1 /bin/teddy
cp /root/teddy/lh2 /bin/teddy
cp /root/teddy/lh3 /bin/teddy
cp /root/teddy/lh31 /bin/teddy
cp /root/teddy/lh4 /bin/teddy
cp /root/teddy/lh41 /bin/teddy
cp /root/teddy/lh21 /bin/teddy
cp /root/teddy/lh42 /bin/teddy
cp /root/teddy/lh43 /bin/teddy
clear
#required for gui
apt-get -y install ncurses-dev
clear
if [[ ! -d /root/handshakes ]]
then
	mkdir /root/handshakes
	echo -e "Made /root/handshake directory"
else
	echo -e "/root/handshakes directory detected.Good."
fi
if [[ ! -d /root/wordlists ]]
then
	mkdir /root/wordlists
	echo -e "Made /root/wordlists directory"
else
	echo -e "/root/wordlists directory detected.Good."
fi
while true
do
clear
echo -e "Are you \e[1;33mu\e[0mpdating or \e[1;33mi\e[0mnstalling the script?(\e[1;33mu\e[0m/\e[1;33mi\e[0m): "
echo -e "Only use 'i' for the first time."
read UORI
if [[ "$UORI" = "u" ]]
then 
	clear
	echo -e "Type 'changelog' to see what's new on this version"
	sleep 3
	break
elif [[ "$UORI" = "i" ]]
then
	clear
	BASHCHECK=$(cat ~/.bashrc | grep "bin/teddy")
	if [[ "$BASHCHECK" != "" ]]
	then
		echo -e "I SAID USE i ONLY ONE TIME..........."
		sleep 3
	fi
	echo -e "Adding teddy to PATH so you can access it from anywhere"
	sleep 1
	export PATH=/bin/teddy:$PATH
	sleep 1
	echo "export PATH=/bin/teddy:$PATH" >> ~/.bashrc
	sleep 1
	clear
	break
fi
done
clear
echo -e "DONE"
sleep 1
clear
echo -e "Open a NEW terminal and type 'l' to launch the script"
sleep  4
gnome-terminal -- l
exit
