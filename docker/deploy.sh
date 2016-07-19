#!/bin/bash
docker login -e noemail -u $QUAY_USERNAME -p $QUAY_PASSWORD quay.io
for tag in quay.io/numenta/manylinux1_x86_64_centos6; do
    docker tag ${tag}:${COMMIT} ${tag}:latest
    docker push ${tag}:latest
done
