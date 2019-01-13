#!/bin/bash

cp .* ~/
rm -rf  ~/.git

sudo ln -s /etc/sv/NetworkManager /var/service/
sudo ln -s /etc/sv/sshd /var/service
sudo ln -s /etc/sv/dbus /var/service/
sudo ln -s /etc/sv/lightdm /var/service/
sudo ln -s /etc/sv/polkitd /var/service/
