pipeline {
       agent {
         docker {
            image 'maven:3'
                }
             }
       stages {
               
            stage ('checkout code') {
                   steps{
                         checkout scm
                   }
            }
               
            stage ('Build') {
                   steps {
                     sh "mvn clean install"
                   }
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
                    steps {
               sh 'cp target/*.war /app'
                    }
            }
            }
        }
     }
            
