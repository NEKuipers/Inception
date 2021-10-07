FROM debian:buster
EXPOSE 443
COPY ./tools/install.sh .
COPY ./tools/start.sh .
RUN bash install.sh
COPY ./conf/nginx.conf /etc/nginx/nginx.conf
COPY ./conf/nginx_sites.conf /etc/nginx/sites-available/site.conf
ENTRYPOINT ["bash", "start.sh"]
