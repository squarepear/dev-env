FROM squarepear/dev-env:latest

# Install latest version of Rust
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --profile minimal

WORKDIR /home/dev

CMD ["/bin/bash"]