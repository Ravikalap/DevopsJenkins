node {
   def mvnHome
   stage('Preparation') { // for display purposes
      // Get some code from a GitHub repository
      git 'https://github.com/Ravikalap/DevopsJenkins.git'
      
      sh(script: "mv ${WORKSPACE}/webapp/target/webapp.war ${WORKSPACE}/")
      //def project_path = 'webapp/'
      // Get the Maven tool.
      // ** NOTE: This 'M3' Maven tool must be configured
      // **       in the global configuration.           
      mvnHome = tool 'localMaven'
   }
   stage('Build') {
      // Run the maven build
      withEnv(["MVN_HOME=$mvnHome"]) {
        sh '"$MVN_HOME/bin/mvn" -Dmaven.test.failure.ignore clean package'
      }
   }
   stage('Docker') {
             sh  'docker build -t jenkins-demo:${BUILD_NUMBER} .'
             sh 'docker login --username=ravikala --password=******'
             sh 'docker tag jenkins-demo:${BUILD_NUMBER} ravikala/jenkins-demo:latest'
              sh  'docker push ravikala/jenkins-demo:latest'
   }
}
