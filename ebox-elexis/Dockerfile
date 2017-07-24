FROM medevit/node-jdk:7.7.4
MAINTAINER MEDEVIT <office@medevit.at>

RUN	git clone https://github.com/phwiget/ebox-elexis.git && \
	cd /ebox-elexis/frontend && \
	npm install && ./node_modules/.bin/typings install && jspm install -y && gulp build && \
	cd /ebox-elexis && chmod +x activator && \
	./activator update && ./activator compile
	
EXPOSE 9000
WORKDIR /ebox-elexis	
ENTRYPOINT ["./activator", "run" ]