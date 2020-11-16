FROM squarepear/dev-env:core

# Install nvm
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.0/install.sh | sh

# Add nvm to the path
RUN echo 'export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> ~/.bashrc

# Install and use the latest lts version of Node
RUN /bin/bash -c "source ~/.profile \
  && nvm install 'lts/*' \
  && nvm alias default node \
  && nvm use default"

WORKDIR /home/dev

CMD ["/bin/bash"]