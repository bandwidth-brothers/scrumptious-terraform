pipeline{
  agent any
  stages{
    stage('Init'){
      sh 'terraform init'
    }
    stage('Apply'){
      sh 'terraform apply --auto-approve'
    }
    stage('Outputs'){
      sh 'terraform output'
    }
  }
}
