pipeline {
    agent { dockerfile true }
 stages {
        stage('Test') {
            steps {
                sh 'python3 --version'
                sh 'django --version'
            }
        }
       }
}
