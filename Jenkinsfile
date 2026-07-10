pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                echo 'Code already checked out by Jenkins SCM'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t my-portfolio-app .'
            }
        }
        stage('Run Container') {
            steps {
                sh 'docker run -d -p 8081:80 --name portfolio-test my-portfolio-app'
            }
        }
    }
}
