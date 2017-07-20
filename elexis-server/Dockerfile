FROM openjdk:8-jre
MAINTAINER MEDEVIT <office@medevit.at>
ARG branch=master

RUN adduser --disabled-password --gecos "" --home /elexis elexis && \
    mkdir /es-prog && \
    wget http://download.elexis.info/elexis-server/products/$branch/info.elexis.server.runtime.product-linux.gtk.x86_64.zip && \
    unzip info.elexis.server.runtime.product-linux.gtk.x86_64.zip -d /opt/elexis-server && \
    rm info.elexis.server.runtime.product-linux.gtk.x86_64.zip && \
    	mkdir -p /elexis/elexis-server/logs && \
    	chown -R elexis:elexis /opt/elexis-server /elexis
    
# Initialize demo database
COPY files/elexis-connection.xml /elexis/elexis-server/
RUN cd /elexis/ && \
	wget http://download.elexis.info/elexis/demoDB/demoDB_elexis_DBVersion_3.2.7.zip && \
	unzip demoDB_elexis_DBVersion_3.2.7.zip && \
	rm demoDB_elexis_DBVersion_3.2.7.zip && \
	chown -R elexis:elexis /opt/elexis-server /elexis

WORKDIR /elexis

USER elexis
EXPOSE 8380
EXPOSE 7234

ENTRYPOINT ["/opt/elexis-server/elexis-server", "-console", "7234", "-consoleLog"]