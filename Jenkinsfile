pipeline{
  agent any
  tools{
    terraform 'terraform'
  }
  environment{
    ACCESS_KEY = credentials('access-key')
    SECRET_KEY = credentials('secret-key')
    AWS_ID = credentials('aws-id')
    AWS_REGION = credentials('aws-region')
  }
  stages{
    stage('Init'){
      steps{
        sh 'terraform init'
      }
    }
    stage('Apply'){
      steps{
        sh 'terraform apply --auto-approve -var="access-key=$ACCESS_KEY" -var="secret-key=$SECRET_KEY" -var="owner-id=$OWNER_ID" -var="region=$AWS_REGION"'
      }
    }
    stage('Outputs'){
      steps{
        sh 'terraform output'
      }
    }
  }
}
