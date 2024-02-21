pipeline {
    agent {
        docker { image 'node:9' }
    }
    stages {
        stage('stage 1') {
            steps {
                sh 'sudo npm install'
            }
        }
        stage('stage 2') {
            steps {
                sh 'sudo npm run start:dev'
     }
     }
    }
}
