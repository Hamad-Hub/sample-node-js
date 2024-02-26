pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {

                checkout scm
            }
        }

        stage('Build Docker Images') {
            steps {
              sh 'docker build -t the-example-app.nodejs .'
                echo 'Performing build...'
            }
        }



        stage('Deploy') {
            steps {
               sh 'docker run -p 3000:3000 -d the-example-app.nodejs'
                echo 'Deploying...'
            }
        }
    }

    post {
        success {
            // Actions to be performed on successful execution
            echo 'Pipeline succeeded!'
        }
        failure {
            // Actions to be performed on failure
            echo 'Pipeline failed!'
        }
    }
}

