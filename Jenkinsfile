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
             sh  'docker build -t jenkins-demo:${BUILD_NUMBER} .'
             sh 'docker login --username=ravikala --password=ravisasi6'
              sh  'docker push ravikala/jenkins-demo:${BUILD_NUMBER}' 
            }
        }
    }
}
