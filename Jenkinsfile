pipeline{
    agent{
        label 'master'
         }

 stages {
        stage('Test') {
            steps {
                sh 'python3 --version'
                docker build -t http_service .
            }
        }
       }

