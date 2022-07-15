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
                    sh 'curl -X PUT -u kavana:TheBoys@2541 -T hello-world-war-${BUILD_NUMBER}.war \"http://54.149.204.163:8081/artifactory/newmaven/hello-world-war-${BUILD_NUMBER}.war\"'
                }    
            }    
        }
        stages('deploy') {
           parallel {
                stage('deploy server1') {
                    agent {
                        label "tomcatone"
                    }
                    script {
                        if(params.deploy_server1) {
                                steps {
                                        sh 'curl -u kavana:TheBoys@2541 -O http://54.149.204.163:8081/artifactory/newmaven/hello-world-war-${BUILD_NUMBER}.war'
                                        sh 'sudo cp -r hello-world-war-${BUILD_NUMBER}.war /opt/apache-tomcat-9.0.64/webapps/'
                                        sh 'sudo  sh /opt/apache-tomcat-9.0.64/bin/shutdown.sh'
                                        sh 'sudo  sh /opt/apache-tomcat-9.0.64/bin/startup.sh'
                                }
                         }
                    }
                  }
                 stage('deploy server2') {
                    agent {
                        label "tomcattwo"
                    }
                     script {
                         if(params.deploy_server2) {
                                steps {
                                        sh 'curl -u kavana:TheBoys@2541 -O http://54.149.204.163:8081/artifactory/newmaven/hello-world-war-${BUILD_NUMBER}.war'
                                        sh 'sudo cp -r hello-world-war-${BUILD_NUMBER}.war /opt/apache-tomcat-9.0.64/webapps/'
                                        sh 'sudo  sh /opt/apache-tomcat-9.0.64/bin/shutdown.sh'
                                        sh 'sudo  sh /opt/apache-tomcat-9.0.64/bin/startup.sh'
                                }
                            }
                        }
                 }  
            }
        } 
    }
}
