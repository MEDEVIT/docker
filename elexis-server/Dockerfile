FROM openjdk:8-jre
MAINTAINER MEDEVIT <office@medevit.at>

RUN adduser --disabled-password --gecos "" --home /elexis elexis
WORKDIR /elexis

COPY files/* /

USER elexis
EXPOSE 8380
EXPOSE 7234

ENTRYPOINT ["/elexis-server"]