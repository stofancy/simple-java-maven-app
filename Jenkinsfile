pipeline {
    agent any

    stages {
        stage('hello'){
            steps {
                script {
                    def branchName = env.BRANCH_NAME
                    echo "Branch name: ${branchName}"
                }
            }
        }
        stage('build') {
            steps {
                sh 'mvn -B -DskipTests clean package'
            }
        }

        stage('test') {
            steps {
                sh 'mvn test'
            }
            post {
                always {
                    junit 'target/surefire-reports/*.xml'
                }
            }
        }

        stage('deliver') {
            steps {
                sh './jenkins/scripts/deliver.sh'
            }
        }
    }
}
