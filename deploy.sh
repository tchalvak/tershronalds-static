#!/bin/bash
echo "...syncing..."
aws s3 sync ./public/ s3://tershronalds-splash/ --profile=bitdog --exclude ".git/*" --exclude "deploy.sh" --exclude "README.md" --delete
echo "---------------------------------------------------------------------------------------"
echo ""
echo "Site should be uploaded at: https://tershronalds.com or cloudfront https://dd4vxxwmvkwud.cloudfront.net "
echo "Done."