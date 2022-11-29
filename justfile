hello:
  @echo "Welcome! You're almost there!"

# Create dev container
up:
  docker build -t garb:dev .

run:
  docker run -it --rm --name garb-dev-app garb:dev