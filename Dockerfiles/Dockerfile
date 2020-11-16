FROM ubuntu:latest

SHELL ["/bin/bash", "--login", "-c"]

# Install some basic packages that are commonly needed
RUN apt-get update && apt-get install -y \
  git \
  curl \
  sudo \
  && rm -rf /var/lib/apt/lists/*

# Add user "dev" and add to sudoers
RUN useradd -ms /bin/bash dev \
  && echo 'dev ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers \
  && chown dev:dev -R "/home/dev"

# Switch to user "dev"
USER dev

WORKDIR /home/dev

ENTRYPOINT ["/bin/bash", "--login"]
