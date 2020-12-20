pipeline {
    agent {
          label'master'
	}	
    stages {
	stage("http--service") {
	
	parallel {
	 stage("build") {
	  steps {
		 sh '''
	         docker-compose build
		 '''
		 }
			}
	  stage("Runing docker-compose") {
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
}
    
