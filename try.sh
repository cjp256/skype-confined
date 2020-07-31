#!/bin/bash -x

snapcraft try
sudo snap try $(pwd)/prime

for x in skype:bluez skype:browser-sandbox skype:camera skype:password-manager-service skype:pulseaudio; do
	sudo snap connect $x
done
