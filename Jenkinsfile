pipeline{
    agent{
        label'master'
    }
    stages{
         stage('build'){
            steps{
                sh '''                                
                 docker build .
                 docker-compose up
                '''
                 }
            }

         stage('test'){
            steps{
                sh '''
                 Python testing/test.py
                '''
                 }
            }

        }
}
