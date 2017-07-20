# Elexis-Server Docker Image

Docker image to run an elexis-server with a sample database.

## Usage

To start a container from this image, one has to specify the branch version of the elexis-server executable, 
and activate the required port forwarding. The -b parameter denotes wich elexis-server executable branch to use.
At the moment valid values are [master, 1.3, 1.2, 1.1]

```bash
docker run -P medevit/elexis-server -b master
```

After initially creating a container out of this image (which is what the `run` command does) you should note
the created instance, in order to restart it again afterwards. Repeatedly executing this command, always leaves
you with a newly generated container.

## Stopping the container

Do NOT use `docker stop` to stop the running container. This does not yet correctly work.
There are two correct ways to shut the elexis-server down:

### Using the telnet console on port 7234

Connect to the OSGI console that is forwarded using telnet. You can see the forwarded port by executing `docker ps`

```bash
Marcos-MBP:elexis-server marco$ docker ps
ONTAINER ID    IMAGE                  [...]    PORTS                                              NAMES
b0935b0db675   medevit/elexis-server  [...]    0.0.0.0:32827->7234/tcp, 0.0.0.0:32826->8380/tcp   festive_newton
```
Here you see that port 7234 is forwarded to 32827. By executing `telnet localhost 32827` we connect to the OSGI shell.
Entering `es system halt` in this shell provokes a proper shutdown.

### Using the REST api

t.b.d.