FROM nginx:alpine
WORKDIR /
COPY default.conf /etc/nginx/conf.d/default.conf
COPY index.html /index.html
COPY style.css /style.css
