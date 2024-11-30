pipeline {
    agent any

    tools {
        nodejs 'NodeJs' // Ensure 'NodeJs' is configured in Jenkins
    }

    environment {
        SONAR_PROJECT_KEY = 'sonar-cicd'
        SONAR_SCANNER_HOME = tool 'SonarQube' // Ensure 'SonarQube' is configured in Jenkins
        DOCKER_HUB = 'kondemahesh/cicdpipeline'
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
                        -Dsonar.host.url=http://34.124.186.95:9000 \
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
}
}
