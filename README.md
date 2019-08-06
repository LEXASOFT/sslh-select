sslh-select
========

[![Docker Pulls](https://img.shields.io/docker/pulls/shaddysignal/sslh-hub.svg)](https://hub.docker.com/r/shaddysignal/sslh-hub/)

Docker image containing sslh with some configs. Based on alpine image.

Usage
-----

Start and expose 443
```bash
   docker run -d -p 443:443 --name sslh xupaddy/sslh-select
```

Enviroment variables for manipulating container. Names are self explonatory, I hope.
```bash
LISTEN_IP 0.0.0.0
LISTEN_PORT 443

SSH_HOST localhost
SSH_PORT 22

OPENVPN_HOST localhost
OPENVPN_PORT 1194

HTTP_HOST localhost
HTTP_PORT 8080

HTTPS_HOST localhost
HTTPS_PORT 8443

OTHER_HOST localhost
OTHER_PORT 8388
```

----

Thanks to docker image amondit/sslh for inspiration.
