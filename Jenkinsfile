pipeline {
    agent any
     parameters {
        string(name: 'Server_IP', defaultValue: '10.148.0.3', description: 'if any IP change is required, please enter it here')
        string(name: 'User_Name', defaultValue: 'root', description: 'if any user change is required, please enter it here')
    }

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
                        -Dsonar.host.url=http://10.148.0.4:9000 \
                        -Dsonar.login=${SONAR_TOKEN}
                        """
                    }
                }
            }
        }
        stage('Docker image') {
          steps {
             script {
                      docker.build("${DOCKER_HUB}:$BUILD_NUMBER") 
}
}
}
        stage('trivy scan') {
           steps { 
                    sh 'trivy --severity HIGH,CRITICAL --quiet --format table -o trivy-report.html image ${DOCKER_HUB}:$BUILD_NUMBER'
           }
         }  
       stage('Log in docker hub') {
    steps { 
        sh 'docker tag ${DOCKER_HUB}:latest kondemahesh/cicdpipeline:$BUILD_NUMBER'
        withCredentials([usernameColonPassword(credentialsId: 'dockerhubpwd', variable: 'dockerhubpwd')]) {
    // some block
}
        }
    }
        stage('push image to Docker hub') {
              steps { 
                    sh 'docker push kondemahesh/cicdpipeline:$BUILD_NUMBER'
             }
          }
stage('Deploy Docker Container') {
            steps {
                script {
                    sh """
                        ssh -i /root/.ssh/id_rsa -o StrictHostKeyChecking=no ${params.User_Name}@${params.Server_IP} '
                        docker pull kondemahesh/cicdpipeline:$BUILD_NUMBER &&
                        docker stop cicd-container || true &&
                        docker rm cicd-container || true &&
                        docker run -d --name cicd-container -p 8000:80 kondemahesh/cicdpipeline:$BUILD_NUMBER
                        '
                        """
                    }
                echo '#### Successfully deployed Docker container ####'
            }
        }
        
}
      }
