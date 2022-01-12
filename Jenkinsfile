pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                sh 'docker run -it --rm --privileged=True --env="DISPLAY" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" --device="/dev/video0:/dev/video0" facemask'
            }
        }
    }
}
