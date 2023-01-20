pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean compile'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('packgae') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Deploy') {
            steps {
                sshagent(credentials: ['sshUserPrivateKey']) {
                    sh 'scp /etc/hosts root@192.168.29.22:/tmp'
                }
        }

    }
}
