#!/bin/bash

export GITHUB_USERNAME=ymmmtym

json=$(curl -u ${GITHUB_USERNAME}:${GITHUB_API_TOKEN} -ks "https://api.github.com/users/${GITHUB_USERNAME}/repos")
count=$(($(echo ${json} | jq '. | length') - 1))

echo "Following repositories are found."
echo ${json} | jq .[].name | nl
echo -n "Enter repository's number (#num / n{not clone}): "

read i
if [ $i = "n" ]; then
  echo "No repository is cloned."
  exit 0
fi

number=$((i - 1))
git clone $(echo ${json} | jq -r .[$number].ssh_url)
echo "Done!"

exit 0
