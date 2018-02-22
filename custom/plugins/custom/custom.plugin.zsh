
function test_zsh_custom() {
  echo "Hello. Custom plugin is loaded."
}

################################################################################
# Git customization

# Add, Commit and Push in 1 command
# Usage: `gacp "commit message`"
function gacp() {
  git add .
  git commit -a -m "$1"
  git push
}

# Add and Commit (no Push)
function gac() {
  git add .
  git commit -a -m "$1"
}

# Delete local branch, and the origin
function git_delete_branch() {
  git branch --delete "$1"
  git push origin --delete "$1"
}

alias gacp2='gacp "$(curl -s whatthecommit.com/index.txt) 🤖"'

################################################################################
