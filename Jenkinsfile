pipeline {
         agent any
              tools {
               nodejs ('NodeJs') 
}  
          environment {
            SONAR_PROJECT_KEY = 'sonar-cicd'
            SONA_SCANNER_HOME = tool 'SonarQube'
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
                  stages('sonarqube analysis') {
                       steps { 
                                withCredentials([string(credentialsId: 'sonar-cicd-token', variable: 'SONAR_TOKEN')]) {
                               withSonarQubeEnv('sonar-cicd') {
                                    sh***
                                    ${SONAR_SCANNER_HOME}/bin/sonar-scanner \
                                     -Dsonar.projectKey=${SONAR_PROJECT_KEY} \
                                     -Dsonar.host.url=http://sonarqube-cicd:9000 \
                                     -Dsonar.login=${SONAR_TOKEN}
                                        sh***
 }
}               
       }
            
}
}
}
