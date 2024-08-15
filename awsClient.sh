#!/bin/bash
echo RUNNING SETUP AWS =============================
curl https://d20adtppz83p9s.cloudfront.net/GTK/latest/awsvpnclient_amd64.deb -o awsvpnclient_amd64.deb
sudo dpkg -i awsvpnclient_amd64.deb
echo ENDING SETUP AWS =============================
