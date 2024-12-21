pipeline {
  agent any
    tools {
      maven 'maven'
    }
    stages {      
        stage('Build maven ') {
            steps { 
                    // sh 'dir'      
                    sh 'mvn  clean install package'
            }
        }
        
        stage('Copy Artifact') {
           steps { 
                  //  sh 'dir'
		   sh 'copy target/*.war docker'
           }
        }
         
        stage('Build docker image') {
           steps {
               script {         
                 def customImage = docker.build('amoljorewar/webapp-project', "./docker")
                 docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
                 customImage.push("${env.BUILD_NUMBER}")
                 }                     
           }
        }
	  }
    }
}
