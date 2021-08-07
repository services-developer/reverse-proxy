FROM jwilder/nginx-proxy:latest

RUN { \
      echo 'proxy_connect_timeout 300;'; \
      echo 'proxy_send_timeout 300;'; \
      echo 'proxy_read_timeout 300;'; \
      echo 'send_timeout 300;'; \
    } > /etc/nginx/conf.d/extended_timeout.conf
