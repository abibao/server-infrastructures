#!/bin/sh
set -e

sudo rm -f /etc/init.d/abibao.sh
sudo cp abibao.sh /etc/init.d/.
sudo chmod +x /etc/init.d/abibao.sh

sudo systemctl daemon-reload
