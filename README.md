# Face Mask Detection
The Face Mask Detection System can be used anywhere to detect if an individual is maintaining safety standards.
## Framework used:
1. TensorFlow
2. OpenCV
3. ResNet Caffe based model
## Pre-requisite
* TensorFlow 
* Keras
* Numpy
* OpenCV
* Matplotlib
* Scipy
* Scikit-learn
* Pillow
## Installation
Clone the repository\
Change the directory, go to the cloned directory: \
Create virtual environment for python \
To install all the libraries, use this command: \
`$ pip3 install -r requirements.txt` 
## Working
Detect face mask in real-time, use this command: \
`$ python3 detect_mask_video.py`
## Docker
**FOR WINDOWS** \
You can either create a docker image as shown below or you can pull the docker image. \
*Dockerfile.txt* which looks like: \
`FROM ubuntu` \
`RUN apt-get update -y && apt-get upgrade -y` \
`RUN apt-get install ffmpeg libsm6 libxext6  -y` \
`RUN apt-get install -y python` \
`RUN apt-get install -y git` \
`RUN apt-get install -y pip` \
`RUN mkdir face_mask` \
`WORKDIR /face_mask` \
`COPY . /face_mask` \
`RUN pip3 install -r requirements.txt` \
`CMD ["python3","detect_mask_photo.py"]` \
To build an image from Dockerfile, type this command:\
`docker build -t <image_name> .` \
Congratulation, you just created a docker image from Dockerfile.\
Now, to run Dockerfile you need to type this command: \
`docker run -d --name <container_name> <image_name/ID>`

**FOR UBUNTU OS** \
You can either create a docker image as shown below or you can pull the docker image. \
*Dockerfile.txt* which looks like: \
`FROM ubuntu` \
`RUN apt-get update -y && apt-get upgrade -y` \
`RUN apt-get install ffmpeg libsm6 libxext6  -y` \
`RUN apt-get install -y python` \
`RUN apt-get install -y git` \
`RUN apt-get install -y pip` \
`RUN mkdir face_mask` \
`WORKDIR /face_mask` \
`COPY . /face_mask` \
`RUN pip3 install -r requirements.txt` \
`CMD ["python3","detect_mask_photo.py"]` \
If you want to run real-time face-mask detection, instead of 'detect_mask_photo' write 'detect_mask_video.py' \
To create image from dockerfile, type this command: \
`docker build -t <image_name> .` \
Congratulation, you just created a docker image from the docker file. \
For real-time face mask detection, type this command `$ xhost +local:root` allows the root user to access the running X server. The current X server is indicated by the **DISPLAY** environment variable. \
To run docker image (to create container) and these all previleges are for real-time face mask detection, type this command: \
`$ docker run -it --rm --privileged=True --env="DISPLAY" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" --device="/dev/video0:/dev/video0" <image_name>` \
where:
* `rm` means to remove, this is used to remove the container once it gets stopped. \
* `env="DISPLAY"` means to set environment variable as DISPLAY. A display consists (simplified) of:
    - a keyboard,
    - a mouse
    - a screen
* `volume="/tmp/.X11-unix:/tmp/.X11-unix:rw"` means the X11 server (usually Xorg these days) communicates with clients like xterm, firefox, etc via some reliable stream of bytes. In simple words, it will bind the volume between your host machine and the docker-machine.
*  `device="/dev/video0:/dev/video0"` helps in accessing the video device.
* `privileged = True` means docker will enable access to all devices on the host as well as set some configuration in AppArmor or SELinux to allow the container nearly all the same access to the host as processes running outside containers on the host.
## Flowchart of training
![Flowchart of different phase](https://github.com/AyushBhardwaj321/face_mask/blob/main/images/face-mask%20detector%20flowchart.png)
## References 
1. https://docs.docker.com/engine/reference/run/
