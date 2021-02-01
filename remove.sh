source ~/scripts/set.sh

echo "Deleting all keys... $SA_ACCOUNT"

for x in $(gcloud iam service-accounts keys list --iam-account $SA_ACCOUNT | awk 'NR>1 {print $1}'); do
    gcloud iam service-accounts keys delete $x --iam-account $SA_ACCOUNT --quiet
done;