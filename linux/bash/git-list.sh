# GitHub CLI api
# https://cli.github.com/manual/gh_api

### GIT AND PRINT ALL REPOSITORIES ###

# gh api --paginate \
#   -H "Accept: application/vnd.github+json" \
#   -H "X-GitHub-Api-Version: 2022-11-28" \
#   /user/repos | jq '.[].html_url' | awk '{print $NF}' FS=/ | awk -F\" '{print $1}'

gh api --paginate /user/repos --jq '.[].html_url' 
# gh api --paginate /user/repos --jq '.[].name' 