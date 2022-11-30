hello:
  @echo "Welcome! You're almost there!"

# Sync to main branch, run after completing a PR
# Starting from "dev" branch
newdev:
  git checkout main
  git pull
  git branch -d dev
  git checkout -b dev

branch branch_name:
  @echo "Creating a fresh dev branch named {{branch_name}}..."
  git status
  git checkout -b {{branch_name}} dev
  git push --set-upstream origin {{branch_name}}

# Create dev container
build:
  cargo build

test:
  cargo test

run:
  cargo run

serve:
  @echo "In the future this will start the dev server!"

docker_build:
  docker build -t johnhkchen/just_rust_dev:alpha .

docker_dev:
  docker run -it --rm --name my-rust-app johnhkchen/just_rust_dev:alpha