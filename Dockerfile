#Dockerfile for Taisun dyndns updater
#2017
#Use alpine base image
FROM alpine

MAINTAINER Ryan Kuba <ryankuba@gmail.com>

# Install dependencies
RUN apk add --update curl \
&& rm -rf /var/cache/apk/*

# Add cron files and script
ADD crontab /crontab.txt
ADD pingtaisun.sh /pingtaisun.sh

RUN chmod +x /pingtaisun.sh
RUN /usr/bin/crontab /crontab.txt

CMD ["/usr/sbin/crond", "-f"]
