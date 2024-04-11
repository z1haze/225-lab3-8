pipeline {
    agent any 

    environment {
        GITHUB_URL = 'https://github.com/z1haze/225-lab3-8.git'                                    //<------change this
        KUBECONFIG = credentials('hendris3-225')                                                          //<------change this
    }

    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']],
                          userRemoteConfigs: [[url: "${GITHUB_URL}"]]])
            }
        }

        stage('Build Mongo Stateful Set') {
            steps {
                script {                                                                                // Be sure that you have added the mongo-secret.yaml to your cluster before you run your pipeline.
                    sh 'kubectl apply -f mongo.yaml'
                    sh 'kubectl apply -f mongo-configmap.yaml'
                    sh 'kubectl apply -f mongo-express.yaml'
                }
            }
        }
        
 
        stage('Check Kubernetes Cluster') {
            steps {
                script {
                    sh "kubectl get all"
                }
            }
        }
    }
    
    post {
        
        success {
            slackSend color: "good", message: "Build Completed: ${env.JOB_NAME} ${env.BUILD_NUMBER}"
        }
        unstable {
            slackSend color: "warning", message: "Build Unstable: ${env.JOB_NAME} ${env.BUILD_NUMBER}"
        }
        failure {
            slackSend color: "danger", message: "Build Failed: ${env.JOB_NAME} ${env.BUILD_NUMBER}"
        }
    }
}

