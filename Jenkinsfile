pipeline {
  agent any
    
  tools {nodejs "node"}
    
  stages {
        
    stage('Git') {
      steps {
        git 'https://github.com/chepkoechlorna/devops_test.git'
      }
    }
       
            
    stage('Run') {
      steps {
        sh 'node index.js'
      }
    }
  }
}
