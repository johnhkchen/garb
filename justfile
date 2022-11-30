hello:
  @echo "Welcome! You're almost there!"

# Sync to main branch, run after completing a PR
# Starting from "dev" branch
newdev:
  git checkout main
  git pull
  git branch -d dev
  git checkout -b dev
  git push --set-upstream origin

branch branch_name:
  @echo "Creating a fresh dev branch named {{branch_name}}..."
  git status
  git checkout -b {{branch_name}} origin/dev
  git push --set-upstream origin {{branch_name}}

# Cleans up the branches that accumulate over time
prune:
  git fetch --prune origin
  
# Create dev container
build:
  cargo build

test:
  cargo test

lint:
  @echo "Nothin' yet"

run:
  cargo run

# Open a PR for the current branch onto dev. You will need gh installed and authenticated.
pr_dev:
  gh pr create -B dev

# Run this from the dev branch or the PR will be rejected. You will need gh installed and authenticated.
pr_main:
  gh pr create --fill
  
serve:
  @echo "In the future this will start the dev server!"

docker_build:
  docker build -t johnhkchen/just_rust_dev:alpha .

docker_dev:
  docker run -it --rm --name my-rust-app johnhkchen/just_rust_dev:alpha