pipeline {
  agent any
  environment {
    DOCKERHUB_CREDENCIALS = credentials ('dockerhub-rodricamio')
    RepoDockerHub = 'rodricamio'
    NameContainer = 'libreria'
    NameImage = 'libreria-django-alpine'
    
  }

  stages {
    stage('Build'){
      steps{
        sh "docker build -t ${env.RepoDockerHub}/${env.NameImage}:${env.BUILD-NUMBER} ."
      }
    }
    stage('Run Image'){
      steps{
        sh "docker run -d -p 8080:8080 --name ${env.NameContainer} ${env.RepoDockerHub}/${env.NameImage}:${env.BUILD-NUMBER} "
      }
    }
    stage('Login to Dockerhub'){
      steps{
        sh "echo $DOCKERHUB_CREDENCIALS_PSW | docker login -u $DOCKERHUB_CREDENCIALS --password-stdin "
      }
    }
    stage('Push Image to Dockerhub'){
      steps{
        sh "docker push ${env.RepoDockerHub}/${env.NameImage}:${env.BUILD-NUMBER} "
      }
    }
  }
}
