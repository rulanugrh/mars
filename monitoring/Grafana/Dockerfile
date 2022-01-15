FROM nginx
WORKDIR /usr/src/app
RUN apt update -y && apt install wget sudo -y
RUN wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
RUN sudo add-apt-repository "deb https://packages.grafana.com/oss/deb stable main"
RUN apt update -y && apt install grafana
RUN systemctl start grafana-server
RUN systemctl enable grafana-server
EXPOSE 3000
