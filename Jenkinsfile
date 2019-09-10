pipeline {
       agent {
         docker {
            image 'maven:3'
                }
             }
       // stages {
               
            stage ('checkout code') {
               checkout scm
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
            //}
        }
     }
            
