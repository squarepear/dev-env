FROM squarepear/dev-env:core

# Install C & C++
RUN apt-get update && apt-get install -y \
  build-essential \
  clang-format \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /home/dev

CMD ["/bin/bash"]