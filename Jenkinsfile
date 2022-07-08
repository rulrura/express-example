node {
  stage('========== Clone repository ==========') {
    checkout scm
	echo "checkout scm... test echo"
  }
  stage('========== Build image ==========') {
	echo "docker build : making docker image"
	
	//sh "docker build -t express-example ."
	steps {
		script {
			dockerImage = docker.build "rulrura/express-example:$BUILD_NUMBER"
		}
	}
  }
  

  stage('========== Push image ==========') {

	echo "docker push image"
	steps {
		script {
			docker.withRegistry('', 'hub-docker-id') {
				dockerImage.push()
				
			}
		}
	}
  }

}
