FROM ubuntu:22.04

WORKDIR /app

COPY . .

RUN apt update && apt install -y curl bash

CMD ["bash"]
