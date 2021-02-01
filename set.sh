PWD=$(pwd)
DIRECTORY=$PWD/downloads/sa-key
mkdir -p $DIRECTORY

NAME=account-alias-name
PROJECT_ID=my-project-id

FILE_NAME="$DIRECTORY/$NAME-$PROJECT_ID.json"
SA_ACCOUNT="$NAME@$PROJECT_ID.iam.gserviceaccount.com"

gcloud config set project $PROJECT_ID