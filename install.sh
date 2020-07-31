#!/usr/bin/bash -x

rm -f *.snap
snapcraft snap
sudo snap remove skype
sudo snap install skype_*_amd64.snap --dangerous 
for x in skype:bluez skype:browser-sandbox skype:camera skype:password-manager-service skype:pulseaudio; do
	sudo snap connect $x
done
