FROM rust:latest

# Install gh CLI tool, so we can use this container to make pull requests
RUN wget https://github.com/cli/cli/releases/download/v2.20.2/gh_2.20.2_linux_amd64.deb
RUN dpkg -i gh_2.20.2_linux_amd64.deb
RUN rm gh_2.20.2_linux_amd64.deb

# Install cargo-binstall, which greatly speeds up cargo tool installs
RUN wget https://github.com/cargo-bins/cargo-binstall/releases/latest/download/cargo-binstall-x86_64-unknown-linux-musl.tgz
RUN tar zxvf cargo-binstall-x86_64-unknown-linux-musl.tgz -C $CARGO_HOME/bin/
RUN rm cargo-binstall-x86_64-unknown-linux-musl.tgz

# Install just, our command runner tool
RUN cargo binstall just -y

# Install Web App Frameworks
# Set WASM target for Rust
RUN rustup target add wasm32-unknown-unknown 
# Install Trunk - WASM web app bundler
RUN cargo binstall trunk -y

# Install oh-my-zsh, a shiny terminal with autocomplete
RUN apt-get update
RUN apt-get install zsh -y
ENV SHELL=/bin/zsh
RUN chsh -s $(which zsh)
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Copy in the repository we're working on
WORKDIR /usr/src/garb
COPY . .

CMD ["zsh"]