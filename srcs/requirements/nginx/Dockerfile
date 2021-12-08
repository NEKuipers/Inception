FROM debian:buster

RUN apt-get update && \
	apt-get upgrade -y

RUN apt-get install nginx -y

WORKDIR /tmp/
ENV BUILDDIR=/tmp/build/
RUN mkdir ${BUILDDIR}

COPY src/ ${WORKDIR}

RUN chmod 770 mkcert-v1.4.3-linux-amd64 && \
	./mkcert-v1.4.3-linux-amd64 -install && \
	./mkcert-v1.4.3-linux-amd64 localhost && \
	mkdir -p /etc/nginx/ssl/ && \
	mv localhost.pem /etc/nginx/ssl/ && \
	mv localhost-key.pem /etc/nginx/ssl/ && \
	chmod -R 770 /etc/nginx/ssl/

RUN rm -rf /etc/nginx/sites-enabled/* && \
	mv nginx.conf /etc/nginx/sites-available/nginx.conf && \
	ln -fs /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled/
	# nginx -t

EXPOSE 443

RUN chmod -R 777 ${BUILDDIR}

CMD cp -a ${BUILDDIR}. /var/www/ && \
	nginx -g 'daemon off;'

# ENTRYPOINT [ "nginx" ]
# CMD ["-g", "daemon off;"]
