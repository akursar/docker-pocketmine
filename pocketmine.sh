#!/bin/sh

cd /pocketmine

cp -fr /var/lib/pocketmine/* .

exec ./start.sh --no-wizard
