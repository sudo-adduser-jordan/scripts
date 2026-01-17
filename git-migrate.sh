FORGEJO_URL="https://git.dblocks.net"
FORGEJO_TOKEN="your_forgejo_token_here"
FORGEJO_ORG="sudo-adduser-jordan"

SOURCE_USER="sudo-adduser-jordan"
SOURCE_TOKEN="your_github_pat_here"
SERVICE="github" # github, gitlab, gitea, forgejo

while IFS= read -r REPO_NAME || [ -n "$REPO_NAME" ]; do
    curl -X 'POST' \
      "$FORGEJO_URL/api/v1/repos/migrate" \
      -H "accept: application/json" \
      -H "Authorization: token $FORGEJO_TOKEN" \
      -H "Content-Type: application/json" \
      -d "{
      \"clone_addr\": \"https://github.com/$SOURCE_USER/$REPO_NAME.git\",
      \"auth_token\": \"$SOURCE_TOKEN\",
      \"items\": [\"issues\", \"pull_requests\", \"labels\", \"releases\", \"milestones\", \"wiki\"],
      \"mirror\": false,
      \"repo_name\": \"$REPO_NAME\",
      \"repo_owner\": \"$FORGEJO_ORG\",
      \"service\": \"$SERVICE\"
    }"
done < names.txt # input file
