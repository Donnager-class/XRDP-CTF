FROM ubuntu:20.04

RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y lubuntu-desktop

RUN rm /run/reboot-required*

RUN useradd -m flag -p $(openssl passwd FlaggyMcFlag)
RUN usermod -aG sudo flag

RUN apt install -y xrdp
RUN adduser xrdp ssl-cert

RUN sed -i '3 a echo "\
export GNOME_SHELL_SESSION_MODE=Lubuntu\\n\
export XDG_SESSION_TYPE=x11\\n\
export XDG_CURRENT_DESKTOP=LXQt\\n\
export XDG_CONFIG_DIRS=/etc/xdg/xdg-Lubuntu:/etc/xdg\\n\
" > ~/.xsessionrc' /etc/xrdp/startwm.sh

#Adding additional user with no password and adding personal information.
#User1
RUN useradd -m amosburton
RUN mkdir -p /home/amosburton/.ssh
RUN passwd -d amosburton
RUN touch reminder.txt
RUN echo "Reminder: I need to update my password for my work email: timothybaltimore89@gmail.com" >> /home/amosburton/reminder.txt
#User2
RUN useradd -m rocinante
RUN mkdir -p /home/rocinante/.ssh
RUN passwd -d rocinante
RUN touch IOU.txt
RUN echo "IOU: Buy Bobby Draper Coffee." >> /home/rocinante/IOU.txt
#User1
RUN useradd -m belterInaros
RUN mkdir -p /home/belterInaros/.ssh
RUN passwd -d belterInaros
RUN touch next_week.txt
RUN echo "Reminder: alex.kamal@mcrn.com needs faster transport." >> /home/belterInaros/next_week.txt
#User1
RUN useradd -m chrisjenAVA
RUN mkdir -p /home/chrisjenAVA/.ssh
RUN passwd -d chrisjenAVA
RUN touch UN.txt
RUN echo "Reminder: Arange meeting with Marco and Drummer" >> /home/chrisjenAVA/UN.txt
#User1
RUN useradd -m Drummer
RUN mkdir -p /home/Drummer/.ssh
RUN passwd -d Drummer
RUN touch today.txt.txt
RUN echo "Go Outside" >> /home/Drummer/today.txt
#root
RUN touch todo.txt
RUN echo "Reminder: Employee cannot login. Give employee new credentials amosburton:baltimore89" >> /root/todo.txt


EXPOSE 3389
COPY ./script1.sh /
RUN chmod +x /script1.sh
ENTRYPOINT ["/script1.sh"]
CMD service xrdp start ; bash


