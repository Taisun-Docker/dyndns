#Dockerfile for Taisun dyndns updater
#2017
#Use alpine base image
FROM alpine

MAINTAINER Ryan Kuba <ryankuba@gmail.com>

# Install dependencies
RUN apk add --update curl \
&& rm -rf /var/cache/apk/*

# Add loop for pinging Taisun
ADD pingtaisun.sh /pingtaisun.sh

RUN chmod +x /pingtaisun.sh

CMD ["/pingtaisun.sh"]
