pipeline {
    agent any

    environment {
        STUDENT_NAME = 'Jahongir'
        STUDENT_SURNAME = 'Kamilzhanov'
        STUDENT_GROUP = 'IT2-2314'
        STUDENT_ID = '37941'
    }

    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out source code from GitHub...'
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo 'Preparing project files...'
                sh 'ls -la'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests / checks...'
                sh '''
                    echo "========================================"
                    echo "Student: ${STUDENT_NAME} ${STUDENT_SURNAME}"
                    echo "Group: ${STUDENT_GROUP}"
                    echo "Student ID: ${STUDENT_ID}"
                    echo "========================================"
                '''
            }
        }

        stage('Docker Build') {
            steps {
                echo 'Building Docker image...'
                sh 'docker build -t kamilzhanov-jahongir-jenkins-devops .'
            }
        }

        stage('Docker Run') {
            steps {
                echo 'Running Docker container with environment variables...'
                sh '''
                    docker run --rm \
                    -e STUDENT_NAME=${STUDENT_NAME} \
                    -e STUDENT_SURNAME=${STUDENT_SURNAME} \
                    -e STUDENT_GROUP=${STUDENT_GROUP} \
                    -e STUDENT_ID=${STUDENT_ID} \
                    kamilzhanov-jahongir-jenkins-devops
                '''
            }
        }
    }

    post {
        success {
            echo 'Pipeline finished successfully: FINISHED: SUCCESS'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}