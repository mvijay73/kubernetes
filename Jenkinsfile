node("docker") {
    docker.withRegistry('hub.docker.dom', 'mvijay') {
    
        git url: "https://github.com/mvijay73/kubernetes.git", credentialsId: 'mvijay73'
    
        sh "git rev-parse HEAD > .git/commit-id"
        def commit_id = readFile('.git/commit-id').trim()
        println commit_id
    
        stage "build"
        def app = docker.build "your-project-name"
    
        stage "publish"
        app.push 'master'
        app.push "${commit_id}"
    }
}
