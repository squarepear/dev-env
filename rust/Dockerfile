FROM squarepear/dev-env:core

# Install build tools required for Rust/Cargo
RUN apt-get update && apt-get install -y --no-install-recommends \
  ca-certificates \
  gcc \
  libc6-dev \
  && rm -rf /var/lib/apt/lists/*

# Install latest version of Rust
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --no-modify-path --profile minimal

# Add Rust to the path
RUN echo "export PATH=$HOME/.cargo/bin:$PATH" >> ~/.bashrc

WORKDIR /home/dev

CMD ["/bin/bash"]