node {
  stage('========== Clone repository ==========') {
	echo "checkout scm... test echo : $JOB_NAME"
    checkout scm	
  }
  stage('========== Build image ==========') {
	echo "docker build : making docker image"
	
	//sh "docker build -t $JOB_NAME ."
	
		//script {
			dockerImage = docker.build "rulrura/$JOB_NAME:$BUILD_NUMBER"
		//}
	
  }
  

  stage('========== Push image ==========') {

	echo "docker push image - no script"

	
		//script {
			docker.withRegistry('', 'hub-docker-id') {
				dockerImage.push()				
			}
		//}
	
  }

  stage('========== Stop & Delete Container ==========') {
	echo "docker stop and delete $JOB_NAME"
	
	try {
		sh "docker stop $JOB_NAME && docker container rm $JOB_NAME"
		//sh "docker container rm express-example"
	} catch (Exception e) {
		//e.printStackTrace();
		continue;
	}
  }
  
  stage('========== Start Container ==========') {

	echo "docker run -d -p 3000:3000 --name=express-example rulrura/express-example:$BUILD_NUMBER"

	sh "docker run -d -p 3000:3000 --name=express-example rulrura/express-example:$BUILD_NUMBER"
	
  }
}
