#!/usr/bin/bash -x

#snapcraft snap
sudo snap remove skype
sudo snap install skype_*_amd64.snap --dangerous 
for x in skype:bluez skype:camera skype:password-manager-service; do
	sudo snap connect $x
done
