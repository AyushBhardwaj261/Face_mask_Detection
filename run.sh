docker pull ayush123bhardwaj/face_mask_detection

xhost +local:root

docker run -it --rm --privileged=True --env="DISPLAY" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" --device="/dev/video0:/dev/video0" ayush123bhardwaj/face_mask_detection
