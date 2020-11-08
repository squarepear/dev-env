FROM squarepear/dev-env:latest

# Install nvm & latest lts version of Node
RUN /bin/bash -c "curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.0/install.sh | bash && source $HOME/.nvm/nvm.sh && nvm install 'lts/*' && nvm alias default node && nvm use default"

# Install Yarn package manager
RUN /bin/bash -c "source $HOME/.nvm/nvm.sh && curl -o- -L https://yarnpkg.com/install.sh | bash"

WORKDIR /home/dev

CMD ["/bin/bash"]