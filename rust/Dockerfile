FROM squarepear/dev-env:core

# Install build tools required for Rust/Cargo
RUN apt-get update && apt-get install -y \
  build-essential \
  && rm -rf /var/lib/apt/lists/*

# Install latest version of Rust
RUN /bin/bash -c "curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | bash -s -- -y --profile minimal && source $HOME/.cargo/env"

WORKDIR /home/dev

CMD ["/bin/bash"]