pipeline {
    agent any
   environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
    AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
   }

    stages {
        stage('Checkout') {
            steps {
                 echo 'this is check out' 
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/neldevops/terraform-automation1.git']])
            }
        }

         stage('terraform initialize') {
            steps {
                    sh 'terraform init'
                    
            }
        }

        stage('terraform validate') {
            steps {
                    sh 'terraform fmt'
                    sh 'terraform validate'
                    
            }
        }

        stage('terraform plan') {
            steps {
                sh 'terraform plan'
            }
        }
    
        stage('terraform apply') {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
     
    }
}
