pipeline {
  stages { 
     stage('checkout') {
            steps {
                sh 'rm -rf hello-world-war'
                sh 'git clone https://github.com/Kavana147/hello-world-war.git'
                  dir('hello-world-war') {
                    sh 'docker build -t tomimage .
                 }
             }
        }
    }
  }
