capbash-docker
==============

Scripts for installing docker, should be used in conjunction with capbash

# How to Install #

Install capbash first, more details at:
https://github.com/capbash/capbash

```
curl -s https://raw.githubusercontent.com/capbash/capbash/master/capbash-installer | bash
capbash new YOUR_REPO_ROOT
cd YOUR_REPO_ROOT
```

Now you can install docker into your project

```
capbash install docker
```

# Configurations #

The available configurations include:

```
DOCKER_SUPPORT_LXC=${DOCKER_SUPPORT_LXC-false}
```


# Deploy to Remote Server #

To push the docker script to your server, all you need if the IP or hostname of your server (e.g. 192.167.0.48) and your root password.

```
capbash deploy <IP> docker
```

For example,

```
capbash deploy 127.0.0.1 docker
```
