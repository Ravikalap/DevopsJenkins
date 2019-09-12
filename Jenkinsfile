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
                sh 'sudo RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
                && tar xzvf docker-17.04.0-ce.tgz \
                 && mv docker/docker /usr/local/bin \
                  && rm -r docker docker-17.04.0-ce.tgz'
             sh  'docker build -t jenkins-demo:${BUILD_NUMBER} .'
             sh 'docker login --username=ravikala --password=ravisasi6'
              sh  'docker push ravikala/jenkins-demo:${BUILD_NUMBER}' 
            }
        }
    }
}
