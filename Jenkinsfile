pipeline {
         agent any   
         stages{
              
               stage('Githubs'){
                         steps {
                                 git branch: 'main', credentialsId: 'github-token-cicd-jenkins', url: 'https://github.com/Kondemahesh/cicd-project-1.git'
      }
  }
               stage('test') { 
                        steps {
                              sh 'npm test'
                              sh 'npm install'  

}  
}
}
}
