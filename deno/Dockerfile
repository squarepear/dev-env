FROM squarepear/dev-env:core

# Install unzip which is required to install deno
RUN apt-get update && apt-get install -y --no-install-recommends \
  unzip \
  && rm -rf /var/lib/apt/lists/*

# Install latest version of Deno
RUN curl -fsSL https://deno.land/x/install/install.sh | sh

# Add Deno to the path
RUN echo 'export DENO_INSTALL="/root/.deno" && export PATH="$DENO_INSTALL/bin:$PATH"' >> ~/.bashrc

# Uninstall unzip to shrink image size
RUN apt-get remove -y unzip

WORKDIR /home/dev

CMD ["/bin/bash"]