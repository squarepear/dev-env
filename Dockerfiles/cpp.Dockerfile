FROM squarepear/dev-env:core

# Install C & C++
RUN sudo apt-get update && sudo apt-get install -y --no-install-recommends \
  build-essential \
  clang-format \
  && sudo rm -rf /var/lib/apt/lists/*
