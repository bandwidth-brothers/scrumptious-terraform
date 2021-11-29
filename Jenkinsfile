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
        sh 'terraform plan -var="access_key=$ACCESS_KEY" -var="secret_key=$SECRET_KEY" -var="owner_id=$OWNER_ID" -var="region=$AWS_REGION"'
        sh 'terraform apply --auto-approve -var="access_key=$ACCESS_KEY" -var="secret_key=$SECRET_KEY" -var="owner_id=$OWNER_ID" -var="region=$AWS_REGION"'
      }
    }
    stage('Outputs'){
      steps{
        sh 'VPC=`terraform output vpc_id`'
        sh 'aws secretmanager update-secret --secret-id vpc-id --secret-string $VPC'
      }
    }
    stage('Destroy'){
      steps{
        sh 'terraform destroy --auto-approve -var="access_key=$ACCESS_KEY" -var="secret_key=$SECRET_KEY" -var="owner_id=$OWNER_ID" -var="region=$AWS_REGION"'
      }
    }
  }
}
