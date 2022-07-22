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
      script{
         dockerImage = docker.build("cheplorna/lorna:${env.BUILD_ID}")
  }
}
}
    stage('Push image') {
      steps{
       script{
         docker.withRegistry('https://registry.hub.docker.com/', 'dockerHub') {
            dockerImage.push()
     }
    }
  }
}
     stage('Deploy App') {
      steps {
        script {
          kubernetesDeploy(configs: "test.yml", kubeconfigId: "mykubeconfig")
        }
      }
    }
   
     stage('Orchestrate'){
       steps{
         script{
           sh 'kubectl apply -f test.yml'
}
}
}
}

}
