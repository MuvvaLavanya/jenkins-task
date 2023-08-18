pipeline {
    agent any
    environment {
            SONAR_TOKEN = credentials('SONAR_TOKEN')
            }

    stages {
        stage('Build, Test, and Generate Coverage') {
            steps {
                bat "mvn clean verify"
                bat "mvn jacoco:prepare-agent"
            }
        }
    stage('SonarQube Analysis') {
            steps {
                bat "mvn sonar:sonar -Dsonar.projectKey=jenkins-task -Dsonar.projectName='jenkins-task' -Dsonar.host.url=http://localhost:9000 -Dsonar.login=%SONAR_TOKEN% -Dsonar.java.coveragePlugin=jacoco"
            }

            }

        stage('Build Docker Image') {
                    steps {
                        // Build the Docker image using the Dockerfile
                        sh 'docker build -t assesment-project .'
                    }
                }

        }


    }
