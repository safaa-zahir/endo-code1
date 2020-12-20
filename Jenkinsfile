pipeline {
    agent {
		label'master'
	}
	
    stages {
		parallel {
			stage("build") {
				steps {
					sh '''
					docker-compose build
					'''
				}
			}
			stage("up") {
				steps {
					sh '''
					docker-compose up
                 		        '''
				}
			}
			stage("test") {
				steps {
					sh '''
					python3 test-http.py
					'''
				}
			}
		}
        
	}
}
