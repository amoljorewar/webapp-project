pipeline {
  agent any
    tools {
      maven 'maven'
    }
    stages {      
        stage('Build maven ') {
            steps { 
                    bat 'dir'      
                    bat 'mvn  clean install package'
            }
        }
        
        stage('Copy Artifact') {
           steps { 
                   bat 'dir'
		   bat 'xcopy C:\ProgramData\Jenkins\.jenkins\workspace\webappCI\target\webapp.war docker\ /Y'
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
