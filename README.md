# docker-rspeer
RSPeer docker with novnc on ubuntu

Usage

docker run -it

rspeer script path if you want to insert your own:
"-v /path/where/you/store/rspeer:/root/RSPeer -e API_KEY=<YOUR API KEY>"

novnc options as per
https://github.com/centminmod/docker-ubuntu-vnc-desktop

haydster7/rspeer

e.g. docker run -it -v ~/rspeer-data:/root/RSPeer -p 6080:80 -p 5900:5900 -e VNC_PASSWORD=mypassword -e API_KEY=345fdg43wt545e haydster7/rspeer
