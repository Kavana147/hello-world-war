pipeline {
  agent { label 'docker-build'}
  environment {
    DOCKERHUB_CREDENTIALS=('kavana-docker')
  }
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
              sh 'docker build -t tomimage:${BUILD_NUMBER} .'
              sh 'docker tag tomimage:${BUILD_NUMBER} kavana147/tomcat:${BUILD_NUMBER}'
          }
        }
      }
    }
    stage ('publish') {
      steps {
          sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-TheBoys@2541'
          sh 'docker push kavana147/tomcat:${BUILD_NUMBER}'
      }
   }
    stage ('deploy') {
      agent { label 'docker-deploy' }
      steps {
          sh 'docker rm -f mytomcat'
          sh 'sleep 5'
          sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-TheBoys@2541'
          sh 'docker pull kavana147/tomcat:${BUILD_NUMBER}'
          sh 'docker run -d --name mytomcat -p 8084:8080 kavana147/tomcat:${BUILD_NUMBER}'
      }
    }   
 }
}
