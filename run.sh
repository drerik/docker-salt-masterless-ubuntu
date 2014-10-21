#!/bin/bash

INSTANCE_IMAGE=enonic/salt-masterless-ubuntu
INSTANCE_NAME=salt-masterless-ubuntu-test

docker run --rm -p 8080 -t -i -h $INSTANCE_NAME --name $INSTANCE_NAME -v $(pwd):/srv/salt $INSTANCE_IMAGE /bin/bash
