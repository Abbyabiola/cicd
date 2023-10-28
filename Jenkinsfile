pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // ([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'github-id', url: 'https://github.com/EtechTeam7/cicd.git']]])
                checkout scm
            }
        }
 stage('2-cleanws'){
      steps{
        sh 'mvn clean'
      }
    }
    stage('3-mavenbuild'){
      steps{
        sh 'mvn package'
      }
    }
    stage('unittest'){
        steps{
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
                sh 'echo "Deploying......."'            }
        }
    }

    post {
        success {
            // Notify or perform additional actions on successful build
            // Example: SlackSend(channel: '#my-channel', message: 'Build successful!')
            sh 'echo "Build successful !!!"'
        }
        failure {
            // Notify or perform additional actions on build failure
            // Example: slackSend(channel: '#my-channel', message: 'Build failed!')
            sh 'echo "Build failed !!!!"'
        }
    }
}
