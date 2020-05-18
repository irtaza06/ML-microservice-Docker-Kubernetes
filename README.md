[![<ORG_NAME>](https://circleci.com/gh/irtaza06/ml-microservice-docker-kubernetes.svg?style=svg)](https://circleci.com/gh/irtaza06/ml-microservice-docker-kubernetes)

#Project:

Python based ML-Microservice - Docker Image - Kubernetes Deployment

##Summary

In this project, a Machine Learning Microservice API is operationalized. 

Given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project  operationalizes a Python flask app—in file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

## How to run the scripts?

### Setup the Python Environment

* Create a virtualenv and activate it
`python3 -m venv ~/.VENVFOLDERNAME`
`source ~/.VENVFOLDERNAME/bin/activate`
* Run `make install` to install the necessary dependencies
#### You also need to:
* Install Docker (to containerize `app.py`)
* Install Hadolint (to lint Dockerfile)
* Install Kubernetes-Minikube (to deploy the `app.py`) 
See detailed install instrunctions on corresponding websites 

### Make a Docker image
* To make a Docker image of `app.py`, run, `./run_docker.sh`

### Make prediction
* To make a prediction, run, `./make_prediction.sh`
**NOTE:** to make a prediction, run the above command in a separate tab or terminal window

### Upload created image to Dockerhub
* To upload created Docker image to Dockerhub, run,  `./upload_docker.sh`
**NOTE:** use your Docker credentials

### Deploy with Kubernetes 
* To deploy with Kubernetes, run,  `./run_kubernetes.sh`

 
