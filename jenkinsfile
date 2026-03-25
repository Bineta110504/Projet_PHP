pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', 'docker-hub-credentials') {
                        def app = docker.build("mon-image:latest")
                        app.push()
                    }
                }
            }
        }
    }
}
