pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout your source code from your version control system (e.g., Git)
                checkout scm
            }
        }

        stage('Build') {
            steps {
                // Use the Maven wrapper (recommended) or the system Maven
                sh 'mvn clean install'
            }
        }

        stage('Test') {
            steps {
                // Run unit tests
                sh 'mvn test'
            }
        }

        stage('Package') {
            steps {
                // Create a deployable package (e.g., JAR or WAR)
                sh 'mvn package'
            }
        }

        stage('Deploy') {
            steps {
                // You can add deployment steps here, e.g., deploy to a server
                // Example: sh 'rsync -avz target/my-app.war user@server:/path/to/deployment/'
            }
        }
    }

    post {
        success {
            // Notify or perform additional actions on successful build
            // Example: SlackSend(channel: '#my-channel', message: 'Build successful!')
        }
        failure {
            // Notify or perform additional actions on build failure
            // Example: slackSend(channel: '#my-channel', message: 'Build failed!')
        }
    }
}
