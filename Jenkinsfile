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

        stage('Test & Verification') {
            steps {
                echo 'Running student data verification...'
                sh '''
                    echo "========================================"
                    echo "Student: ${STUDENT_NAME} ${STUDENT_SURNAME}"
                    echo "Group: ${STUDENT_GROUP}"
                    echo "Student ID: ${STUDENT_ID}"
                    echo "Status: Pipeline automation verified successfully!"
                    echo "========================================"
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