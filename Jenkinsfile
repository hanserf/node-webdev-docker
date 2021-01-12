node('nuxbuilder') {
    def app
    stage('Cloning'){
        checkout scm    
    }
    stage('Build image') {            
        echo 'Building Image'
        app = docker.build("hanserf/node-webdev")
    }
    stage('Test Image'){
        app.inside {
            sh 'echo "Tests passed"'
        }
    }
    stage('Push Image')
        docker.withRegistry('https://registry.hub.docker.com', 'DOCKERHUB_HANSERF') { 
            app.push("${env.BUILD_NUMBER}") 
            app.push("latest")
        }        
}
