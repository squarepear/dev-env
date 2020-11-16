FROM squarepear/dev-env:core

# Install nvm
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.0/install.sh | sh

# Install and use the latest lts version of Node
RUN nvm install 'lts/*' \
  && nvm alias default node \
  && nvm use default
