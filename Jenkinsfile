node {
  stage('========== Clone repository ==========') {
    checkout scm
	echo "checkout scm... test echo"
  }
  stage('========== Build image ==========') {
	echo "docker build : making docker image"
    app = docker.build("rulura/express-example:${env.BUILD_NUMBER}")
	//app = docker.build("rulura/express-example")
  }
  

  stage('========== Push image ==========') {
    //docker.withRegistry('https://registry.hub.docker.com', 'hub-docker-id') {
	docker.withRegistry('', 'hub-docker-id') {
      //app.push("${env.BUILD_NUMBER}")
      //app.push("latest")
	  app.push();
    }
  }

}
