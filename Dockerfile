FROM ubuntu:14.04
MAINTAINER André Dumas

RUN apt-get update
RUN apt-get -y install ruby1.9.3 build-essential nodejs python-pygments \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/

RUN gem install github-pages

VOLUME /site

EXPOSE 4000

WORKDIR /site
ENTRYPOINT ["jekyll"]
