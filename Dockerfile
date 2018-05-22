FROM amazonlinux:latest
MAINTAINER Deb <yodebu@gmail.com>

yum install python
ADD index.html /www/index.html

EXPOSE 8000

# Create a basic webserver and sleep forever
WORKDIR /www/
CMD python -m SimpleHTTPServer 8000

