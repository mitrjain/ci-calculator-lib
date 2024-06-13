pipeline{
  
  agent any
  
  environment{
    $DOKCER_CREDS = credentials('dockerhub-creds')
  }
  
  stages{
    
    stage('build-image'){
      steps{
        sh 'docker build -t calculator-env:latest .'
      }
    }

    stage('publish'){
      steps{
        sh 'docker login -u ${env.DOKCER_CREDS_USR}E -p ${env.DOKCER_CREDS_PSW}'
        sh 'docker push calculator-env:latest'
      }
    }
    
  }
  
}
