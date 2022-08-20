pipeline {
  agent { label 'docker-build'}
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
              sh 'docker tag tomimage:${BUILD_NUMBER} 076359103690.dkr.ecr.us-west-2.amazonaws.com/tomcat:${BUILD_NUMBER}'
          }
        }
      }
    }
    stage ('publish') {
      steps {
          sh 'aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 076359103690.dkr.ecr.us-west-2.amazonaws.com'
          sh 'docker push 076359103690.dkr.ecr.us-west-2.amazonaws.com/tomcat:${BUILD_NUMBER}'
      }
   }
    stage ('deploy') {
      agent { label 'docker-deploy' }
      steps {
          sh 'docker rm -f mytomcat'
          sh 'sleep 5'
          sh 'aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 076359103690.dkr.ecr.us-west-2.amazonaws.com'
          sh 'docker pull 076359103690.dkr.ecr.us-west-2.amazonaws.com/tomcat:${BUILD_NUMBER}'
          sh 'docker run -d --name mytomcat -p 8084:8080 076359103690.dkr.ecr.us-west-2.amazonaws.com/tomcat:${BUILD_NUMBER}'
      }
    }   
 }
}
