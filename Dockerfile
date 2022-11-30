FROM rust:latest

WORKDIR /usr/src/garb
COPY . .

RUN cargo install just

CMD ["bash"]