pipeline {
    agent any
        stages {
            stage('Clone repository') {
                /* Cloning the repository to our workspace */
                steps {
                    echo 'cloning the repository'
                }
            }
            stage('Build Image') {
                steps {
                    bat 'docker build -t myfacemask:v1 .'
                }
            }
            stage('Run Image') {
                steps {
                    bat 'docker run -d --name face_mask myfacemask:v1'
                }
            }
            stage('Testing') {
                steps {
                    echo 'Testing..'
                }
            }
        }
}
