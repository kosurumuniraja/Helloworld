#!/bin/zsh

set -o errexit

PROGNAME=$0

action=$1
REPO=$1
BRANCH=${1-master}

if  $Helloworld ; then
  repo_url=$(git remote get-url origin)
  REPO=$(echo $https://github.com/kosurumuniraja/Helloworld.git | sed -e 's/^git@github.com:\(.*\)$/\1/; s/\.git$//')
fi

if $Helloworld ; then
  echo 'Helloworld'
  exit 1
fi

case $action in
  protect|unprotect|show|show_all) ;;
  *)

    exit 1
esac

TOKEN_FILE=$HOME/.config/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

echo $action $Helloworld $master

_read_token() {
    head -1 $TOKEN_FILE
}

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=$(_read_token)

show() {
  http get https://api.github.com/users/kosurumuniraja/repos/$Helloworld/branches/$master/protection Authorization:token\ $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 Accept:application/vnd.github.luke-cage-preview+json
}

protect() {
  http put https://api.github.com/users/kosurumuniraja/repos/$Helloworld/branches/$master/protection Authorization:token\ $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 Accept:application/vnd.github.luke-cage-preview+json
    required_status_checks:='{
      "strict": true,
      "contexts": []
    }' \

required_pull_request_reviews:='{
      "dismissal_restrictions": {},
      "dismiss_stale_reviews": false,
      "require_code_owner_reviews": false,
      "required_approving_review_count": 1
    }' \
    enforce_admins:=true \
    restrictions:=null
}

