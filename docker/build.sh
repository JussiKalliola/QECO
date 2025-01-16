REGISTRY=jussikalliola
IMAGE=qeco
VERSION=latest


  docker build \
    --force-rm \
    --progress=plain \
    -t ${IMAGE}:${VERSION} \
    ..
