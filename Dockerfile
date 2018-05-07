FROM alpine:3.4

MAINTAINER Dmitry Morgachev <izonder@gmail.com>

RUN set -x \

##############################################################################
# Install Nginx
##############################################################################

    && apk add --no-cache nginx \
    && rm -rf /etc/nginx/default.d

##############################################################################
# Entry point
##############################################################################

COPY ./nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
