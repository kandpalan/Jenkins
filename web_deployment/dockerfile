FROM ubuntu
ENV path=/var/www/html/
RUN \
  apt-get update && \
  apt-get install -y nginx && \
  rm -rf /var/lib/apt/lists/* && \
  echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
  chown -R www-data:www-data /var/lib/nginx
COPY data/index.html $path
CMD ["nginx"]
EXPOSE 80
