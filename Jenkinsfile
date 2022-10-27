pipeline {
    agent any
  
    stages {
        stage('Build') {
            steps {
                echo "Build-stage"
                sh 'DOCKER_BUILDKIT=1 docker build -t efrat2020/todo-fe:latest -f Dockerfile-Pipeline --target Build .'
            }
        }
      
        stage('Test') {
            steps {
                echo "Test-stage"
                sh 'DOCKER_BUILDKIT=1 docker build -t efrat2020/todo-fe:latest -f Dockerfile-Pipeline --target Test .'
            }
        }

        stage('Delivery') {
            steps {
                echo "Delivery-stage"
                sh 'DOCKER_BUILDKIT=1 docker build -t efrat2020/todo-fe:latest -f Dockerfile-Pipeline --target Delivery .'
            }
        }
        
        stage('Cleanup') {
            steps {
                echo "Cleanup-stage"
                sh 'docker system prune -f'
            }
        }
        
        stage('Push') {
            steps {
                echo "Push-stage"
                sh 'docker login -u efrat2020 -p efrat2020'
                sh 'docker push efrat2020/todo-fe:latest'
            }
        }
    }
}
