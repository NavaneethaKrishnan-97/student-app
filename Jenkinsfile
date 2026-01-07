pipeline {
  agent any
  stages {
    stage('Clone') {
      steps {
        git url:'https://github.com/NavaneethaKrishnan-97/student-app.git', branch: 'master'
      }
    }
    stage('Build Image') {
      steps {
        sh 'docker build -t krizrepo/student-app .'
      }
    }
    stage('Push Image') {
      steps {
        withCredentials([string(credentialsId: 'dockerhub-pass', variable: 'PASS')]) {
          sh 'echo $PASS | docker login -u krizrepo --password-Kris@2026'
          sh 'docker push krizrepo/student-app'
        }
      }
    }
  }
}
