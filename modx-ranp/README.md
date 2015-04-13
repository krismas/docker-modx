# MODX-Ranp
A Dockerfile based on [Alpine Linux](gliderlabs/docker-alpine) that installs the latest [MODX Revolution](https://github.com/modxcms/revolution), nginx and php-fpm. 

**This image needs an external MySQL server or linked MySQL container.**

v0.0.1 - 2015 - (c) Ackwa.fr

### Build

```
git clone https://github.com/krismas/docker-modx.git
cd docker-modx/modx-ranp
docker build -t ackwa/modx-ranp .
```

*NB : Image size is just 103.6 MB*

### Start the mysql server instance

```
docker run --name mysql55 -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql:5.5
```

*NB : At this time MODX does'nt support mySQL Server 5.6 for a "New installation".*

### Start the MODX server instance

```
docker run --name modx-ranp -p 80:80 --link mysql55:mysql -d ackwa/modx-ranp
```

Open your browser at `http://my_container_ip/setup` to start [MODX Revolution installation](http://rtfm.modx.com/revolution/2.x/getting-started/installation/basic-installation). 

#### Notes

Docker injects environment variables into the container that is being linked.  Exec the env command (or use `docker inspect`) to see the environment variables:

```
docker exec modx-ranp env
```

`MYSQL_PORT_3306_TCP_ADDR` is your mySQL server host IP adress  