# Configure gcloud service account

Be sure your service account have this roles

- Cloud function service agent
- project editor

See more: https://cloud.google.com/functions/docs/concepts/iam

## Workflow config

- GCP_SA_KEY

  This key should be created, encoded as a Base64 string (eg. cat my-key.json | base64 on macOS), and stored as a secret.

- GCP_PROJECT_ID

Your Google cloud project id

- GCP_FUNCTION_NAME

  Your function name
