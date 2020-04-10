# docker-rspeer
RSPeer docker with novnc on ubuntu

Usage

docker run -it

rspeer script path if you want to insert your own:
"-v /path/where/you/store/rspeer/scripts:/root/RSPeer/scripts"

novnc options as per
https://github.com/centminmod/docker-ubuntu-vnc-desktop

haydster7/rspeer

e.g. docker run -it -v ~/rspeer-data/scripts:/rootRSPeer/scripts -p 6080:80 -p 5900:5900 -e VNC_PASSWORD=mypassword haydster7/rspeer
