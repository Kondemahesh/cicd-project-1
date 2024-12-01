pipeline {
    agent any

    tools {
        nodejs 'NodeJs' // Ensure 'NodeJs' is configured in Jenkins
    }

    environment {
        SONAR_PROJECT_KEY = 'sonar-cicd'
        SONAR_SCANNER_HOME = tool 'SonarQube' // Ensure 'SonarQube' is configured in Jenkins
        DOCKER_HUB = 'kondemahesh/cicdpipeline'
        ECR_REGISTRY = '481665130878.dkr.ecr.ap-south-1.amazonaws.com'
        ECR_REPO = 'cicdproject'
        IMAGE_TAG = 'latest'
    }

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', credentialsId: 'github-token-cicd-jenkins', url: 'https://github.com/Kondemahesh/cicd-project-1.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }

        stage('Run Tests') {
            steps {
                sh 'npm test'
            }
        }

        stage('SonarQube Analysis') {
            steps {
                withCredentials([string(credentialsId: 'sonar-cicd-token', variable: 'SONAR_TOKEN')]) {
                    withSonarQubeEnv('sonar-cicd') { // Ensure SonarQube server is configured in Jenkins
                        sh """
                        ${SONAR_SCANNER_HOME}/bin/sonar-scanner \
                        -Dsonar.projectKey=${SONAR_PROJECT_KEY} \
                        -Dsonar.host.url=http://35.197.141.178:9000 \
                        -Dsonar.login=${SONAR_TOKEN}
                        """
                    }
                }
            }
        }
        stage('Docker image') {
          steps {
             script {
                      docker.build("${DOCKER_HUB}:latest") 
}
}
}
        stage('trivy scan') {
           steps { 
                    sh 'trivy --severity HIGH,CRITICAL --quiet --format table -o trivy-report.html image ${DOCKER_HUB}:latest'
           }
         }  
       stage('Log in docker hub') {
    steps { 
        sh 'sudo docker tag ${DOCKER_HUB}:latest kondemahesh kondemahesh/cicdpipeline:latest'
        withCredentials([usernameColonPassword(credentialsId: 'dockerhubpwd', variable: 'dockerhubpwd')]) {
    // some block
}
        }
    }
}
         stage('push image to Docker hub') {
              steps { 
                    sh 'sudo docker push kondemahesh/cicdpipeline:latest'
             }
          }
      }
   }
