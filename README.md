# ArgusSecEx
Exercise in Kubenetes and Helm (Publish "Hello World!" webapp using docker) for Argus Security.

This exercise involved creating Helm charts and a Dockerfile for deployment via Google's Kubernetes Engine. The deployment is for a Hello World style Java web application.

My Dockerfile relies on a tomcat-8 image as a base.

The Deployment.yaml file includes the type field in its spec to allow external access via a load balancer.

The Sample.WAR was provided by ArgusSecEx and its license information is included in the WAR.

My work includes the Dockerfile, as well as any yaml files found within this repository.

Incidentally, I've linked this repo to Docker Hub and configured an automated build for the docker image. You can easily fetch the latest version of this image from dockerhub at "shytamir/argussecexauto".

Feel free to chat me up about this. It's simple and easy.

## Instructions

1. Sign on to a GCP shell with access to GKE, and associate with that project.

2. Clone the repo locally.

3. Setup Helm and deploy by running the following commands (You will need the appropriate k8s cluster permissions - I used kube-admin.):

    1. curl https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get > get_helm.sh
    2. chmod 700 ./get_helm.sh
    3. ./get_helm.sh
    4. kubectl --namespace kube-system create sa tiller
    5. helm init
    6. helm install ArgusSecEx/

4. Follow the on-screen output of the last command to ensure the deployment starts and to write down the randomly generated release name.

5. Deployment should be fairly quick, you can follow its progress using the following shell commands, in the same shell where you have Helm set up already:

    1. helm list - This will list the deployed releases, in case you forgot to write down the randomly generated name for your release.
    2. helm status <release name> - use the aforementioned release name to review the deployment's status.

6. You should be able to see your containers running if all went well. To access your deployment from the internet use the following shell command and retrieve its IP address:

    1. kubectl describe services argussecex-service
    2. The IP address you want to use is the one labeled LoadBalancer Ingress.
    3. Use the URL: http://<IP_Address>/sample/
  
Have fun playing with this. Feel free to alter it and reuse it to your heart's desire (Under the Apache 2.0 license, of course).
