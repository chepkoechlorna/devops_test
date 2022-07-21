pipeline {
  agent any
    
  tools {nodejs "node"}
    
  stages {
        
    stage('Git') {
      steps {
        git 'https://github.com/chepkoechlorna/devops_test.git'
      }
    }
       
    stage('Build image') {
      steps{
         dockerImage = docker.build("cheplorna/lorna:${env.BUILD_ID}")
  }
}
    stage('Push image') {
      steps{
         docker.withRegistry('https://registry.hub.docker.com/', 'dockerHub') {
            dockerImage.push()
     }
    }
  }
}
}
