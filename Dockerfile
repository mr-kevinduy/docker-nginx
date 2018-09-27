FROM nginx:latest

MAINTAINER KevinDuy <mr.kevinduy@gmail.com>

ENV TERM xterm
COPY nginx.conf /etc/nginx/nginx.conf
COPY serve.sh /serve.sh
RUN chmod +x /*.sh
RUN usermod -u 1000 www-data

CMD ["nginx"]

EXPOSE 80 443
