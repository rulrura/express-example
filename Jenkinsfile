node {
  stage('========== Clone repository ==========') {
    checkout scm
	echo "checkout scm... test echo"
  }
  stage('========== Build image ==========') {
	echo "docker build : making docker image"
    app = docker.build("rulura/express-example:${env.BUILD_NUMBER}")
  }
  
/*  
  stage('========== Push image ==========') {
    docker.withRegistry('YOUR_REGISTRY', 'YOUR_CREDENTIAL') {
      app.push("${env.BUILD_NUMBER}")
      app.push("latest")
    }
  }
  */
}
