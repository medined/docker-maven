FROM medined/docker-java-oracle:8
MAINTAINER David Medinets <david.medinets@gmail.com>

RUN echo "deb http://ppa.launchpad.net/natecarlson/maven3/ubuntu precise main" >> /etc/apt/sources.list && \
  echo "deb-src http://ppa.launchpad.net/natecarlson/maven3/ubuntu precise main" >> /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y --force-yes install maven3 && \
  rm -f /usr/bin/mvn && \
  ln -s /usr/share/maven3/bin/mvn /usr/bin/mvn
