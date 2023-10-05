pipeline {
    agent { node { label 'AGENT-1' } }
    options {
        ansiColor('xterm')
    }
    stages {
        stage('Init') {
            steps {
                echo 'Building..'
                sh 'ls -ltr'
                sh 'pwd'
                sh '''
                   ls -ltr
                   pwd
                   terraform init
                '''
            }
        }
        stage('Plan') {
            steps {
                sh'''
                  ls -ltr
                  pwd
                  terraform plan
                '''
                
            }
        }
        stage('Approve') {
            steps {
                input "Shall i Approve?"
            }
        }
         stage('Apply') {
            steps {
                sh 'terraform apply -auto-approve'
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