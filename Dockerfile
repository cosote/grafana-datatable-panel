FROM grafana/grafana:master
RUN setcap 'cap_net_bind_service=+ep' /usr/sbin/grafana-server
RUN apt update && apt install -y git
RUN git clone -v https://github.com/danielkalen/grafana && echo '1'
RUN rm -rf /usr/share/grafana/public && cp -rf ./grafana/public /usr/share/grafana