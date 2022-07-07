node {
  stage('========== Clone repository ==========') {
    checkout scm
	echo "checkout scm... test echo"
  }
  stage('========== Build image ==========') {
	echo "docker build : making docker image"
    //app = docker.build("rulura/express-example:${env.BUILD_NUMBER}")
	  //app = docker.build("rulura/express-example")
    app = docker.build("express-example");
  }
  

  stage('========== Push image ==========') {
    docker.withRegistry('rulrura', 'hub-docker-id') {
      app.push("${env.BUILD_NUMBER}")
      app.push("latest")
	    
    }
  }

}
