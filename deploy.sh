#IMAGE_TAG=${GITHUB_SHA}
IMAGE_TAG=`git rev-parse --short HEAD`
GCP_PROJECT_ID=docker-rails-258302
GCP_ZONE=us-central1
SERVICE_NAME=cloud-run-base
IMAGE_NAME=gcr.io/docker-rails-258302/cloud-run-base

gcloud auth configure-docker

docker build \
  -t ${IMAGE_NAME} \
  -t ${IMAGE_NAME}:${IMAGE_TAG} \
  .

docker push ${IMAGE_NAME}
docker push ${IMAGE_NAME}:${IMAGE_TAG}

gcloud run deploy \
  ${SERVICE_NAME} \
  --image ${IMAGE_NAME}:${IMAGE_TAG} \
  --platform managed \
  --region ${GCP_ZONE}
