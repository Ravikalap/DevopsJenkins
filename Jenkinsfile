pipeline {
    agent { docker { image 'maven:3.3.3' } }
    stages {
        stage('build') {
            steps {
                sh 'mvn clean install'
            }
        }
        stage('push image') {
            steps {
             sh  'sudo docker build -t jenkins-demo:${BUILD_NUMBER} .'
             sh 'sudo docker login --username=ravikala --password=ravisasi6'
              sh  'sudo docker push ravikala/jenkins-demo:${BUILD_NUMBER}' 
            }
        }
    }
}
