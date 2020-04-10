# docker-rspeer
RSPeer docker with novnc on ubuntu

Usage


docker run -it


persistent storage of first time setup logon info and custom scripts directory:

"-v /path/where/you/store/rspeer/data:/root/RSPeer"


account credentials

-e RSPEER_EMAIL=<RSPEER_ACCOUNT_EMAIL> -e RSPEER_PASS=<RSPEER_ACCOUNT_PASSWORD>


vnc web and native port forwarding

-p 6080:80 -p 5900:5900


container name

haydster7/rspeer


e.g. `docker run -it -v /tmp/rspeer-data:/root/RSPeer -p 6080:80 -p 5900:5900 -e VNC_PASSWORD=password123 -e RSPEER_EMAIL=abc@xyz.com -e RSPEER_PASS=password456 haydster7/rspeer`


Other VNC and container options as per base container repo https://github.com/centminmod/docker-ubuntu-vnc-desktop
