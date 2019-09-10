pipeline {
       agent {
         docker {
            image 'maven:3'
                }
             }
       
     stages {    
            stage ('pull git latest changes in the repo') 
                     {
                      git 'https://github.com/Ravikalap/DevopsJenkins.git'
                    }
                           
            stage ('Build') {
                     sh "mvn clean install"
                     }
              
            stage ('Test') {
              steps {
                 sh 'mvn test'
                    }
                     post {
                           always {
                                junit 'target/surefire-reports/*.xml'
                                   }
                            }
                     }
              
             stage ('Deployment') {
               sh 'cp target/*.war /app'
                     }
            }
        } 
