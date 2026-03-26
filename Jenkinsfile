pipeline {
    agent any

    stages {
        stage('Clonage GitHub') {
            steps {
                checkout scm // Récupère ton code depuis GitHub
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // On build l'image avec le tag v1
                    sh "docker build -t localhost:5000/mon-app-php:v1 ."
                }
            }
        }

        stage('Push to Nexus') {
            steps {
                script {
                    // Connexion et envoi vers ton Nexus (port 5000)
                    sh "docker login localhost:5000 -u admin -p ton_mot_de_passe_nexus"
                    sh "docker push localhost:5000/mon-app-php:v1"
                }
            }
        }
    }
}