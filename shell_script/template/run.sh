docker run --privileged --name container_name\
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix: \
    -itd ubuntu20.04:ros-noetic /bin/bash