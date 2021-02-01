source ~/scripts/set.sh

echo "Setting key... $SA_ACCOUNT"

gcloud iam service-accounts keys create $FILE_NAME --iam-account $SA_ACCOUNT
export GOOGLE_APPLICATION_CREDENTIALS="$FILE_NAME"
gcloud auth activate-service-account $SA_ACCOUNT --key-file=$FILE_NAME
