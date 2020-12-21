FROM adoptopenjdk/openjdk8:alpine-jre
MAINTAINER MEDEVIT <office@medevit.at>
RUN apk add --no-cache curl gettext bash bats bind-tools openssl openldap-clients util-linux jq netcat-openbsd fcgi
RUN apk add --no-cache xvfb xvfb-run chromium chromium-chromedriver
COPY assets/* /
