FROM centminmod/docker-ubuntu-vnc-desktop
RUN apt-get update && apt-get install -y \
    wget \
    default-jre \
    xdotool

ENV LAUNCHER_PATH=/root/rspeer-launcher

RUN wget https://rspeer.nyc3.digitaloceanspaces.com/console_launcher/rspeer-launcher-x64-linux -P $LAUNCHER_PATH
RUN chmod +x $LAUNCHER_PATH/rspeer-launcher-x64-linux

COPY startup-launcher.sh $LAUNCHER_PATH
RUN chmod +x $LAUNCHER_PATH/startup-launcher.sh

ENV DISPLAY=:1

RUN sed -i '$ i\\sh $LAUNCHER_PATH/startup-launcher.sh &' /startup.sh