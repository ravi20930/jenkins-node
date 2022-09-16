use start.sh to start jenkins on port 8080

OR

sudo chown -R 1000:1000 /var/jenkins_home
docker run -p 8080:8080 -v /var/jenkins_home:/var/jenkins_home ravi20930/jenkins-node:v2