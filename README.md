# ArgusSecEx
Exercise in Kubenetes and Helm (Publish "Hello World!" webapp using docker) for Argus Security.

## Instructions
Your goal is to create Docker image and Helm chart for a sample web app (provided), deploy 2 instances of it on a Kubernetes cluster (provided) and expose it via a public address available to the WWW.


The solution shall provide:

The public address. Surfing to <public address>/sample/ should look like:
<image placeholder for valid site output>

Link to Git repository with:

1. The Dockerfile

2. The Helm chart files


Suggested Steps:

1. Install gcloud (follow the instructions here), kubectl (follow the instructions here), and then connect to your GKE (Google Kubernetes Engine) Kubernetes cluster, via this command:
gcloud container clusters get-credentials exercise --zone us-central1-a --project argussecex-shyt
You need to be logged in to your Google account: shytamir@gmail.com

2. Download the sample web app (sample.war) from the first link here.

3. Write a Dockerfile for creating a Docker image to run the sample web app and publish it to Docker Hub (you may need to register).
(Bonus: Configure automated build)

4. Write an Helm chart for specifying how to deploy the sample web app to Kubernetes. Don’t forget to configure it to be exposed via a public address.

5. Using Helm CLI, setup Helm and deploy the chart to the provided Kubernetes cluster.

6. Surf to the public address and make sure that the web app works.


That’s all. Try to keep it simple.
