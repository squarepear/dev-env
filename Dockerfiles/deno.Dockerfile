FROM squarepear/dev-env:core

# Install latest version of Deno
RUN sudo apt-get update && sudo apt-get install -y --no-install-recommends \
  unzip \
  && curl -fsSL https://deno.land/x/install/install.sh | sh \
  && sudo apt-get remove -y unzip \
  && sudo rm -rf /var/lib/apt/lists/*

# Add Deno to the path
RUN echo 'export DENO_INSTALL="$HOME/.deno" && export PATH="$DENO_INSTALL/bin:$PATH"' >> "$HOME/.profile"

