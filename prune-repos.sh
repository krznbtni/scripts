#!/bin/bash

# * Since we have ONE repo with multiple "projects" in them, we don't need to loop over Checkout or Shop to prune the deleted repos...
# * This just becamme much easier...
# * Keeping the below code "just because"

# * ########################## KEEP THE CODE THAT IS COMMENTED OUT PLEASE ##########################
# repos=("checkout" "shop")
# current_dir=($PWD)

# function to_repo_dir() {
#   cd "$current_dir/$1" || exit;
# }

function prune_branches() {
  git fetch --all
  git branch --merged |
    grep -E -v "(^\*|master|main|dev)" |
    xargs --no-run-if-empty git branch -d
  git remote prune origin
}

prune_branches

# for repo in "${repos[@]}"; do
#   # to_repo_dir "$repo" && prune_branches &
#   to_repo_dir $repo && echo "hello from $(pwd)" &
# done
# wait

