# GitHub CLI api
# https://cli.github.com/manual/gh_api

### GIT AND PRINT ALL REPOSITORIES ###

# names.txt
gh api --paginate /user/repos --jq '.[].html_url' 

# repositories.txt
# gh api --paginate /user/repos --jq '.[].name' 