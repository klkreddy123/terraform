pipeline {
    agent { node { label 'AGENT-1' } }

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'ls -ltr'
                sh 'pwd'
                sh '''
                   ls -ltr
                   pwd
                   echo 'Hello from push webhook event'
                '''
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                //error 'this is failure'
            }
        }
    }
    post { 
        always { 
            echo 'I will always run weather job is sucess or not'
        }
        success {
            echo 'I will only run if the job is success'
        }
        failure {
            echo 'I will run when failure'
        }
    }
}