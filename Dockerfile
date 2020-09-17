# Use the official image as a parent image.
FROM ubuntu:19.10

# update package list information
RUN apt-get update

# install WICD curses
RUN apt-get --assume-yes install wicd-curses

COPY entrypoint.sh /

ENTRYPOINT /entrypoint.sh

# create alias to run curses
