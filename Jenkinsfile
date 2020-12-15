pipeline{
    agent{
        label'master'
    }
    stages{
        stage('docker file for stage'){
            steps{
                sh '''
                 docker build -t http_services .
                '''
                 }
            }
         stage('test'){
            steps{
                sh '''                 
                 docker-compose build               
                 docker-compose up -d 
                '''
                 }
            }

        }
}
