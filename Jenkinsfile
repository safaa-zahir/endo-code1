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
                 docker rmi -f `docker images -q `                 
                 docker-compose build               
                 docker-compose up -d 
                '''
                 }
            }

        }
}
