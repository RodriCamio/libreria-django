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
        sh "docker build -t ${env.RepoDockerHub}/${env.NameImage}:${env.BUILD_NUMBER} ."
      }
    }
    stage('Run Image'){
      steps{
        sh "docker run -d --rm -p 8000:8000 --name ${env.NameContainer}-${env.BUILD_NUMBER} ${env.RepoDockerHub}/${env.NameImage}:${env.BUILD_NUMBER} "
      }
    }
    stage('Login to Dockerhub'){
      steps{
        sh "echo $DOCKERHUB_CREDENCIALS_PSW | docker login -u $DOCKERHUB_CREDENCIALS_USR --password-stdin "
      }
    }
    stage('Push Image to Dockerhub'){
      steps{
        sh "docker push ${env.RepoDockerHub}/${env.NameImage}:${env.BUILD_NUMBER} "
      }
    }
  }
}
