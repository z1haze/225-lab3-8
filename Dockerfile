FROM nginx:alpine
WORKDIR /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
COPY robots.txt.html /usr/share/nginx/html/robots.txt.html
COPY style.css /usr/share/nginx/html/style.css
