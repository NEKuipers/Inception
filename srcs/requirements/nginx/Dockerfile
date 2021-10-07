FROM debian:buster
EXPOSE 443
COPY ./tools/install.sh .
COPY ./tools/start.sh .
RUN bash install.sh
COPY ./conf/default /etc/nginx/sites-available/
ENTRYPOINT ["bash", "start.sh"]
