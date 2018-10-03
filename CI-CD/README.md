on your server add jenkins user to docker group
# usermod -aG docker jenkins

navigate http://your-ip:8080/pluginManager/available
search for this plugin "CloudBees Docker Build and Publish"
click Download Now and check the box to restart

how create a pipeline?
1- select New Item from left side
2- enter the name and select the pipelin type
3- copy the content of Jenkinsfile to the pipeline

how to use pipeline syntax?
Navugate http://your-ip:8080/job/job-name/pipeline-syntax/
-> select git and prvoide the repo url and username/password"if it is a private", it will generate the syntax for you
-> select the withdocker-registry which installed before and provide it with credtanials

