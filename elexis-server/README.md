# Elexis-Server Docker Image

Elexis-server docker image with ready linked h2 sample database.

## Usage

Use the following command to start an elexis-server docker image, omit or replace `:tag` with
the required elexis-server executable branch to use. At the moment valid values are 
[master, 1.3].

```bash
docker run -p 8380:8380 -p 7234:7234 medevit/elexis-server:tag
```

After initially creating a container out of this image (which is what the `run` command does) you should note
the created instance, in order to restart it again afterwards. Repeatedly executing this command, always leaves
you with a newly generated container.

## Stopping the container

Do NOT use `docker stop` to stop the running container. This does not yet correctly work.
There are two correct ways to shut the elexis-server down:

### Using the telnet console on port 7234

Connect to the OSGI console that is forwarded using telnet. 
By executing `telnet localhost 7234` we connect to the OSGI shell.
Entering `es system halt` in this shell provokes a proper shutdown.

### Using the REST api

t.b.d