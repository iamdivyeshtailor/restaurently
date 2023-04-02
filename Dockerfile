FROM nginx:mainline-alpine
ADD build/ /var/www
RUN rm -f /etc/nginx/conf.d/*
COPY ./Docker/nginx.conf /etc/nginx/conf.d/restaurently.conf
EXPOSE 10000

