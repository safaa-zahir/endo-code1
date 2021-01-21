=================
Endocode challenge
=================

For this challenge, we will work with Python, and specifically Django, In order to create an HTTP service with three endpoints.
My enviroment is Ubuntu 20.04 in a Virtual Machine

Installation
============

We need to install the pre-requirements, before running it.

Update repositories of available packages to install, with
the following command:


```
  $ sudo apt update
```
Install necessary minimum dependencies, with the following command:

```
  $ sudo apt-get install python3-venv    # If needed
  $ python3 -m venv env
```

 Install Django
```

    $ python3 -m pip install django

```
And later followed by:

```

    $ python3 manage.py migrate
```
Run application
===============

After which you can run, in our case we prefer to run it on the port 8080
```
    $ python3 manage.py runserver 8080
```
Then, you can open the URL http://127.0.0.1:8080/
For testing our endpoints, we can used tools like "Postman", or use simply Curl command if you are in using CMD
```

    $ curl --location --request GET 'http://127.0.0.1:8080/versionz'
    $ curl --location --request POST 'http://127.0.0.1:8080/helloworld'
    $ curl --location --request POST 'http://127.0.0.1:8080/helloworld?name=safaa'
```
Docker
===============

Now we will try to Dockerize our http service, using Dockerfile and Dockercompose, we will need to install Docker, Docker compose 
```
   $ sudo apt-get update
   $ sudo apt-get install \
       apt-transport-https \
       ca-certificates \
       curl \
       gnupg-agent \
       software-properties-common   $ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    $ sudo apt-get update
    $ sudo apt-get install docker-ce docker-ce-cli containerd.io
```
Now After we installed Docker, we will install Docker compose with the command 
```
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
```
###### Creating a container that contains Http service
With this command we can create our image and also run it at the same time
```
docker-compose up --build 
```
After our image is created, and runed, we will be able to see a link http://127.0.0.1:8080

Jenkins
===============
 
We can follow the instructions of this tutorial for the simple installation of Jenkins https://www.jenkins.io/doc/book/installing/linux/

Ps : In case the port number for Jenkins is 8080 or any port that is already used by another thing, it's better to change the port number to any other for example, I used HTTP_PORT=8050, inside the file  /etc/default/jenkins

After creating a new pipeline, that should be connected to your github repository that has your Jenkinsfile, with all the steps and stages to execute, Your Jenkins can BUILD, TEST and DEPLOY. Click" Build Now " and all should work fine, 

Kubernetes
===============

For Kubernetes, we choose Minikube as a cluster Manager, In order to install Kubectl and Minikube cluster we will follow the tutorial https://kubernetes.io/de/docs/tasks/tools/

we will start with the command 
```
   minikube start
```
For the deployment, we will have to push our docker image into our docker hub, into a repository or using a local docker image that we built already. 

The next step is to create a Deployment yaml file in order to deploy our http service with kubernetes.

Finally, we will execute the command 
```
kubectl apply -f deployement-http.yaml 
```
If we make the command :
```
kubectl get pods
``` 
we should be able to see that our deployment is running 
```
Ps: the container name is safeely/endo-code1_web, which represent the name of the docker image that I pushed already on my Docker hub



