pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out source code from Git repository...'
                checkout scm
            }
        }

        stage('Compile') {
            steps {
                echo 'Compiling Java application...'
                sh 'javac HelloWorld.java'
            }
        }

        stage('Package') {
            steps {
                echo 'Packaging executable JAR file...'
                sh 'jar cfe HelloWorld.jar HelloWorld HelloWorld.class'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying application to production environment...'
                sh 'java -jar HelloWorld.jar'
            }
        }
    }

    post {
        success {
            echo 'CI/CD pipeline executed successfully!'
        }
        failure {
            echo 'Pipeline failed. Check console output for logs.'
        }
    }
}
