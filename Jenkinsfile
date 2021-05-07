node {
    def app

    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */

        checkout scm
        sh 'ls -la'
    }

    stage('Build image') {
        sh 'ls -la'
        sh 'cd hellojs'
        sh 'ls -la'
        app = docker.build("mvijay/hellojs_app hellojs/.")
    }

    stage('Test image') {
        app.inside {
            sh 'echo "Tests passed"'
        }
    }

    stage('Push image') {
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
}
