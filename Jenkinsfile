pipeline {
  agent any
  stages {

    stage("build") {
      steps {
        sh """
          docker build -t simple-app .
        """
      }
    }

    stage("run") {
      steps {
        sh """
          docker run --rm simple-app
        """
      }
    }

  }
}