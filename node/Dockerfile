FROM squarepear/dev-env:latest

# Install nvm
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.0/install.sh | bash

# Install latest lts version of Node
RUN nvm install 'lts/*' && nvm use node

# Install Yarn package manager
RUN curl -o- -L https://yarnpkg.com/install.sh | bash

WORKDIR /home/dev

CMD ["/bin/bash"]