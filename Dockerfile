FROM rust:latest

WORKDIR /usr/src/garb
COPY . .
RUN cargo install --path .

CMD ["garb"]