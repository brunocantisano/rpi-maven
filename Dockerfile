FROM resin/rpi-raspbian
MAINTAINER Bruno Cantisano <bruno.cantisano@gmail.com>

ENV MAVEN_VERSION 3.3.3

RUN apt-get clean \
    && apt-get update \
    && apt-get install -y oracle-java8-jdk curl \
    && curl -fsSL https://archive.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz | tar xzf - -C /usr/share \
    && mv /usr/share/apache-maven-$MAVEN_VERSION /usr/share/maven \
    && apt-get purge --auto-remove curl \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir -p /root/.m2

ENV JAVA_HOME /usr/lib/jvm/jdk-8-oracle-arm32-vfp-hflt
ENV MAVEN_HOME /usr/share/maven
ENV PATH $PATH:$MAVEN_HOME/bin

WORKDIR /root/.m2
VOLUME /root/.m2
ENTRYPOINT ["mvn"]

CMD ["-version"]
