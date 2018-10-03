Development Setup:

* run "sudo .prepare-dev.sh" bash script to prepare the environment for node.js development


Jenkins Setup:

* under setup directory, add your own public key"use ssh-keygen" to "pre.sh" and run it  

* run ansible-playbook prepare-env.yml to install java and Jenkins

* under CI-CD directory,

  on your server add jenkins user to docker group

    # usermod -aG docker jenkins

navigate http://your-ip:8080/pluginManager/available

search for this plugin "CloudBees Docker Build and Publish"

click Download Now and check the box to restart

* get the latest version of the source code, to build docker image, to upload docker image to hub.docker.com

how create a pipeline?

1- select New Item from left side

2- enter the name and select the pipelin type

3- copy the content of Jenkinsfile to the pipeline


how to use pipeline syntax?

Navugate http://your-ip:8080/job/job-name/pipeline-syntax/

-> select git and prvoide the repo url and username/password"if it is a private", it will generate the syntax for you

-> select the withdocker-registry which installed before and provide it with credtanials

* run following script to install and configure Jenkins

* Document steps to setup Jenkins job to get the latest version of the source code, to build docker image, to upload docker image to hub.docker.com


How to run container:

* install Docker

  curl -fsSL get.docker.com -o get-docker.sh

  sh get-docker.sh

* Build the image

    docker build -t docker-demo:1 .

* Run a Container

    docker run -d -p 80:3000 docker-demo:1



Testing:

 cd nodejs-endpoint-container

 npm install

 npm test
 

* results:

Root Directory Test

Should Behave properly on GETing /

✓ should call next

✓ should call send on resp

✓ should call send on resp with Hello World as a message

✓ should have json as the content type of the respones
