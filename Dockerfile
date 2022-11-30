FROM rust:latest

WORKDIR /usr/src/garb
COPY . .

CMD ["bash"]