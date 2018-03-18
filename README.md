This dockerfile provides a ready-to-go [Baikal](http://baikal-server.com/) server.

Inspiration:
	- https://github.com/ckulka/baikal-docker
	- https://github.com/bambocher/docker-baikal

### Baikal version

Uses the latest version of Baikal, 0.4.6


### Run

The following command will run Baikal over HTTP:

	docker run --rm -it -p 80:80 --volume /data/baikal:/baikal/Specific lucianofiandesio/baikal

### Persistent Data

The image exposes the ```/var/www/baikal/Specific``` folder, which contains the persistent data. This folder should be part of a regular backup.
