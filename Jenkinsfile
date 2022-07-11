node {
  stage('========== Clone repository ==========') {

    def containerExists = sh(script: "docker container ps -q name=$JOB_NAME", returnStdout: true) == 0

	echo "containerExists is $containerExists";
//    if(!imageExists){
        // build the image
    //}

  }
  
}
