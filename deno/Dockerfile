FROM squarepear/dev-env:latest

# Install unzip which is required to install deno
RUN apt-get update && apt-get install -y \
  unzip \
  && rm -rf /var/lib/apt/lists/*

# Install latest version of Deno
RUN curl -fsSL https://deno.land/x/install/install.sh | sh

# Uninstall unzip to shrink image size
RUN apt-get remove -y unzip

WORKDIR /home/dev

CMD ["/bin/bash"]