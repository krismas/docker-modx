# MODX-Ranpm
A Dockerfile based on [Alpine Linux](gliderlabs/docker-alpine) that installs the latest [MODX Revolution](https://github.com/modxcms/revolution), nginx, php-fpm and mysql server.

v0.0.1 - 2015 - (c) Ackwa.fr

### Build

```
git clone https://github.com/krismas/docker-modx.git
cd docker-modx/modx-ranpm
docker build -t ackwa/modx-ranpm .
```

*NB : Image size is just 216.5 MB*

### Start the MODX server instance

```
docker run --name modx-ranpm -p 80:80 -d ackwa/modx-ranpm
```

Open your browser at `http://my_container_ip/setup` to start [MODX Revolution installation](http://rtfm.modx.com/revolution/2.x/getting-started/installation/basic-installation). 

In this case your default "database options" are : 

```
Database type       : mysql
Database host       : localhost
Database login name : root
Database password   : ackmodx
```






