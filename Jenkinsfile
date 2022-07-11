node {
  stage('========== Clone repository ==========') {
    checkout scm
	echo "checkout scm... test echo"
  }
  stage('========== Build image ==========') {
	echo "docker build : making docker image"
	
	//sh "docker build -t express-example ."
	
		script {
			dockerImage = docker.build "rulrura/express-example:$BUILD_NUMBER"
		}
	
  }
  

  stage('========== Push image ==========') {

	echo "docker push image"
	
		script {
			docker.withRegistry('', 'hub-docker-id') {
				dockerImage.push()
				
			}
		}
	
  }

  stage('========== Start Container ==========') {

	echo "docker run -d -p 3000:3000 rulrura/express-example:$BUILD_NUMBER"

	
  }
}
