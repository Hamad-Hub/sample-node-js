pipeline {
    agent any
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
