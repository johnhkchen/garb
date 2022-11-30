FROM rust:latest

# Install gh CLI tool
RUN wget https://github.com/cli/cli/releases/download/v2.20.2/gh_2.20.2_linux_amd64.deb
RUN dpkg -i gh_2.20.2_linux_amd64.deb
RUN rm gh_2.20.2_linux_amd64.deb

# Install cargo-binstall, to speed up cargo tool installs
RUN wget https://github.com/cargo-bins/cargo-binstall/releases/latest/download/cargo-binstall-x86_64-unknown-linux-musl.tgz
RUN tar zxvf cargo-binstall-x86_64-unknown-linux-musl.tgz -C $CARGO_HOME/bin/
RUN rm cargo-binstall-x86_64-unknown-linux-musl.tgz

# Install just, our command runner tool
RUN cargo binstall just -y

# Install shiny terminal
RUN apt-get update
RUN apt-get install zsh -y
ENV SHELL=/bin/zsh
RUN chsh -s $(which zsh)
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Copy in working repo
WORKDIR /usr/src/garb
COPY . .

CMD ["zsh"]