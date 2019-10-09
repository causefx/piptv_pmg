FROM lsiobase/alpine:3.10

MAINTAINER lol-wtf

# Install packages
RUN apk add --no-cache \
	python3 
	
RUN python3 -m pip install piptv_pmg

#WORKDIR /bot
VOLUME /m3u
CMD python3 -m piptv_pmg.pmg -o /m3u/channels.m3u
