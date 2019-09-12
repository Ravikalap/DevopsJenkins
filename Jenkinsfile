pipeline {
    agent { docker { image 'maven:3.3.3' } }
    stages {
        stage('build') {
            steps {
                sh 'mvn clean install'
            }
        }
        stage('building image') {
            steps {
                sh 'sudo apt-get update'
                sh 'sudo apt-get install apt-transport-https ca-certificates curl software-properties-common'
                 sh 'curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add –'
                  sh 'sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu  $(lsb_release -cs)  stable"'
                sh 'sudo apt-get update'
             sh  'docker build -t jenkins-demo:${BUILD_NUMBER} .'
             sh 'docker login --username=ravikala --password=ravisasi6'
              sh  'docker push ravikala/jenkins-demo:${BUILD_NUMBER}' 
            }
        }
    }
}
