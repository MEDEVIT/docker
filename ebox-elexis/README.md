# eBox Elexis Docker Image

eBox-elexis is a Web-Application for Elexis. See https://github.com/phwiget/ebox-elexis for details.

## Usage

```bash
docker run -i -p 9000:9000 medevit/ebox-elexis
``` 

### Demo-System

In order to run a pre-configured demo system, one has to use the enclosed docker-compose configuration.
This configuration will provide the required elexis-server, together with a demo database. 
The current elexis-server 1.3 does, however, not install the required FHIR feature automatically, so
the following steps need to be executed.

1. Start the system combination using `docker-compose up` (requires the `docker-compose.yml` file to be available in the local directory)
2. Wait for the system to be started up
3. Connect to the elexis-server telnet console using `telnet localhost 7234`
4. Issue the command `es_p2 features install info.elexis.server.fhir.rest.core.feature.feature.group` to install the FHIR feature
5. Restart the elexis-server `es system restart`
6. Browse to http://localhost:9000 to open the ebox-elexis web interface
7. Select *Absolut Erfunden* as Patient


# Links

https://semaphoreci.com/community/tutorials/dockerizing-a-java-play-application