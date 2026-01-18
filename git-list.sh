# GitHub CLI api
# https://cli.github.com/manual/gh_api

### GITHUB CLI PRINT ALL REPOSITORIES AND OUTPUT TO FILE ###

# names.txt
gh api --paginate /user/repos --jq '.[].html_url' | tee repositories.txt
# gh api --paginate /user/repos --jq '.[] | select(.owner.type == "User") | .html_url' | tee user-repositories.txt
# gh api --paginate /user/repos --jq '.[] | select(.owner.type == "Organization") | .html_url' | tee organinzation-repositories.txt

# repositories.txt
gh api --paginate /user/repos --jq '.[].name' | tee names.txt
# gh api --paginate /user/repos --jq '.[] | select(.owner.type == "User") | .name' | tee user-names.txt
# gh api --paginate /user/repos --jq '.[] | select(.owner.type == "Organization") | .name' | tee organization-names.txt