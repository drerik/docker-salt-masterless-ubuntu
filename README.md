# Generic docker container for saltstack 
- Starts up a masterless container that listens to saltfiles in /srv/salt
- Mount up a saltstack config volume under /srv/salt. The container runs with bash as shell


## Building the image 
```
docker build -t enonic/salt-masterless-ubuntu https://github.com/drerik/docker-salt-masterless-ubuntu.git
```

## Running a the docker container with current dir as linked volume to /srv/salt.
```
docker run --rm -t -i -h salt-test --name salt-test -v $(pwd):/srv/salt enonic/salt-masterless-ubuntu
```
