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
              sh 'sudo docker build -t jenkins:v1 .'
                echo 'Performing build...'
            }
        }



        stage('Deploy') {
            steps {
               sh '''
                sudo docker stop hamad
                sudo docker rm hamad
                sudo docker run --name hamad -p 3000:3000 -d jenkins:v1
                '''
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

