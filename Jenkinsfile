pipeline{
    agent{
        label'master'
    }
    stages{
         stage('build'){
            steps{
                sh '''                                
                 docker-compose build
                '''
                 }
            }

         stage('test'){
            steps{
                sh '''
                 Python3 test-http.py
                '''
                 }
            }

        }
}
