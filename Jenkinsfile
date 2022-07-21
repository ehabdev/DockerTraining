pipeline {
    environment {
    registry = "ehabdevopscourse/mydockerhub"  
    registryCredential = "Docker_ID"
    dockerImage = ''
  }
        stage('build and push image') {
            steps {
               script {
                    dockerImage = docker.build registry + ":$BUILD_NUMBER" 
                    docker.withRegistry('', registryCredential) {
                    dockerImage.push() 
                }
               }
            }
        }
         post {
         always {
             bat "docker rmi $registry:$BUILD_NUMBER"
}}}
