pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t my-portfolio-app .'
            }
        }
        stage('Stop Old Container') {
            steps {
                sh 'docker stop portfolio-test || true'
                sh 'docker rm portfolio-test || true'
            }
        }
        stage('Run New Container') {
            steps {
                sh 'docker run -d -p 8081:80 --name portfolio-test my-portfolio-app'
            }
        }
        stage('Test command') {
            steps {
                sh 'docker ps'
            }
        }
    }
}
