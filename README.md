# Generic docker container for saltstack 
- Starts up a masterless container that listens to saltfiles in /srv/salt
- Mount up a saltstack config volume under /srv/salt. The container runs with bash as shell


## To build
```
docker build -t enonic/salt-masterless-ubuntu .
```

## Command to run to test the salt config in the current directory.
```
docker run --rm -t -i -h salt-test --name salt-test -v $(pwd):/srv/salt enonic/salt-masterless-ubuntu
```
