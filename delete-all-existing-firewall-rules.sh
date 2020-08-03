# Delete all exesting firewall rules.
RULES=$(gcloud compute firewall-rules list --format="value(name)")

for RULE in $RULES
do
  echo "Deleting $RULE..."
  gcloud compute firewall-rules delete $RULE --quiet
done