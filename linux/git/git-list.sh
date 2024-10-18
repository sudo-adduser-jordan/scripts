# GitHub CLI api
# https://cli.github.com/manual/gh_api

### GITHUB CLI PRINT ALL REPOSITORIES AND OUTPUT TO FILE ###

# names.txt
gh api --paginate /user/repos --jq '.[].html_url' | tee repositories.txt

# repositories.txt
gh api --paginate /user/repos --jq '.[].name' | tee names.txt
