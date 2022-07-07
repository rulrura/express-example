node {
  stage('========== Clone repository ==========') {
    checkout scm
	echo "checkout scm... test echo"
  }
  stage('========== Build image ==========') {
	  echo "docker build : making docker image"
    //app = docker.build("rulura/express-example:${env.BUILD_NUMBER}")
	  app = docker.build("express-example:${env.BUILD_NUMBER}")
    //app = docker.build("express-example");
    //app.push()
  }
  

  stage('========== Push image ==========') {


  //docker tag jhooq-docker-demo rahulwagh17/jhooq-docker-demo:jhooq-docker-demo
    sh "docker tag express-example:$BUILD_NUMBER rulrura/express-example:$BUILD_NUMBER"
    //sh "docker rmi $registry:$BUILD_NUMBER"

    // docker.withRegistry('', 'hub-docker-id') {
    //   app.push("${env.BUILD_NUMBER}")
    //   app.push("latest")
	    
    // }
  }

}
