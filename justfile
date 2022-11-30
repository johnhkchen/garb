hello:
  @echo "Welcome! You're almost there!"

branch branch_name:
  @echo "Creating a fresh dev branch named {{branch_name}}..."
  git status
  git checkout -b {{branch_name}} dev
  git status

# Create dev container
up:
  docker build -t garb:dev .

run:
  docker run -it --rm --name garb-dev-app garb:dev