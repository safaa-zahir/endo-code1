pipeline{
    agent{
        label 'master'
    }

 stages {
        stage('Test') {
            steps {
                sh 'python3 --version'
                sh 'django --version'
            }
        }
       }
}
