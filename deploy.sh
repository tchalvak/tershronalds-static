#!/bin/bash
echo "...syncing..."
aws s3 sync ./public/ s3://tershronalds-splash/ --profile=bitdog --exclude ".git/*" --exclude "deploy.sh" --exclude "README.md" --delete
aws cloudfront create-invalidation --distribution-id E1O0NPA1HYQUE2 --paths /index.html --profile bitdog
echo "---------------------------------------------------------------------------------------"
echo ""
echo "Site should be uploaded at: https://tershronalds.com or cloudfront https://dd4vxxwmvkwud.cloudfront.net "
echo "Done."