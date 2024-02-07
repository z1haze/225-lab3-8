FROM nginx:alpine:latest
WORKDIR /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.htm
COPY style.css /usr/share/nginx/html/style.css
