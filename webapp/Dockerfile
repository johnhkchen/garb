FROM rust:latest

# Install gh CLI tool
RUN wget https://github.com/cli/cli/releases/download/v2.20.2/gh_2.20.2_linux_amd64.deb
RUN dpkg -i gh_2.20.2_linux_amd64.deb
RUN rm gh_2.20.2_linux_amd64.deb

# To Do: Make this step faster by removing the step that checks online so much
RUN cargo install just

WORKDIR /usr/src/garb
COPY . .



CMD ["bash"]
