REGISTRY=jussikalliola
IMAGE=qeco
VERSION=latest

PWD=$(pwd)
ROOT_DIR=$PWD/..

docker run  -it \
            --rm \
            --cap-add NET_ADMIN \
            --privileged \
	    --gpus all \
            -e DISPLAY=docker.for.mac.host.internal:0 \
            -e XDG_RUNTIME_DIR=$XDG_RUNTIME_DIR \
            -e PYTHONBUFFERED=1 \
            -v /etc/timezone:/etc/timezone:ro \
            -v /etc/localtime:/etc/localtime:ro \
            -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
            -v $HOME/.Xauthority:/root/.Xauthority:rw \
            -v $HOME/.tmux/:/root/.tmux \
            -v $HOME/.config/:/root/.config \
            -v /run/user/1000:/run/user/1000 \
            --mount type=bind,source=$ROOT_DIR/../QECO,target=/home/QECO \
            $IMAGE:$VERSION \
            bash

#-u $(id -u):$(id -g) \
