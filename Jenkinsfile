pipeline{
    agent{
        label'master'
    }
    stages{
         stage('test'){
            steps{
                sh '''                                
                 docker build .
                 docker-compose up
                '''
                 }
            }

        }
}
