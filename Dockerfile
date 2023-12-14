FROM nginx:alpine
WORKDIR /usr/share/nginx/html/
COPY default.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
COPY . /usr/share/nginx/html
