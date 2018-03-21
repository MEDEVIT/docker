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

## Demo mode