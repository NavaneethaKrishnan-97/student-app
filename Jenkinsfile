pipeline {
  agent { label 'docker' }
  stages {
    stage('Clone') {
      steps {
        git url:'https://github.com/NavaneethaKrishnan-97/student-app.git', branch:'master'
      }
    }
    stage('Build Image') {
      steps {
        sh 'docker build -t krizrepo/student-app .'
      }
    }
    stage('Push Image') {
      steps {
        withCredentials([string(credentialsId: 'Kris@2026', variable: 'PASS')]) {
          sh 'echo $PASS | docker login -u krizrepo --password-stdin'
          sh 'docker push krizrepo/student-app'
        }
      }
    }
  }
}
