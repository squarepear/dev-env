FROM squarepear/dev-env:core

# Install build tools required for Rust/Cargo
RUN sudo apt-get update && sudo apt-get install -y --no-install-recommends \
  ca-certificates \
  gcc \
  libc6-dev \
  && sudo rm -rf /var/lib/apt/lists/*

# Install latest version of Rust
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --profile minimal
