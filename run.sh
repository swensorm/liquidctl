#! /bin/bash
liquidctl initialize all
liquidctl list

sleep 20
while true; do
    liquidctl status
    sleep 15
done
