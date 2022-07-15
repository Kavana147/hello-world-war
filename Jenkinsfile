pipeline {
    agent none
    stages { 
        stage('checkout and build') {
            agent {label 'maven'}
            steps {
                sh 'rm -rf hello-world-war'
                sh 'git clone https://github.com/Kavana147/hello-world-war.git'
                  dir('hello-world-war') {
                    sh 'mvn package'
                 }
             }
           }
        stage('publish') {
            agent {label 'maven'}
            steps {
                 dir('hello-world-war') {
                    sh "echo ${BUILD_NUMBER}"
                    sh 'cp -r target/hello-world-war-1.0.0.war hello-world-war-${BUILD_NUMBER}.war'
                    sh 'curl -X PUT -u kavana:TheBoys@123 -T hello-world-war-${BUILD_NUMBER}.war \"http://34.223.234.12:8081/artifactory/newmaven/hello-world-war-${BUILD_NUMBER}.war\"'
                }    
            }    
        }
    }
}
