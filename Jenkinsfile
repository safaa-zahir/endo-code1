pipeline{
    agent{
        label'master'
    }
    stages{
         stage('test'){
            steps{
                sh '''                               
                 docker-compose up --build
                '''
                 }
            }

        }
}
