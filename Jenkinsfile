pipeline{
    agent{
        label'master'
    }
    stages{
         stage('test'){
            steps{
                sh '''
                 docker-compose down                                
                 docker build .
                 docker-compose up
                '''
                 }
            }

        }
}
