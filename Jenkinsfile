pipeline {
  agent any
  stages { 
     stage('checkout') {
            steps {
                sh 'rm -rf hello-world-war'
                sh 'git clone https://github.com/Kavana147/hello-world-war.git'
            }
     }
    
    stage ('build') {
      steps {
        script {
          dir('hello-world-war') {
          dockerImage= docker.build tomimage
          }
        }
      }
    }
   }
 }
